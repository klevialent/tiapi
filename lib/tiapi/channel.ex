defmodule Tiapi.Channel do
  use GenServer

  @spec get_channel() :: any()
  def get_channel() do
    case GenServer.call(__MODULE__, :status) do
      :up -> GenServer.call(__MODULE__, :channel)
      _ -> GenServer.call(__MODULE__, :up_channel)
    end
  end

  @spec create_mint_channel!() :: GRPC.Channel.t()
  @spec create_mint_channel!(keyword()) :: GRPC.Channel.t()
  def create_mint_channel!(opts \\ []) do
    {:ok, channel} = GRPC.Stub.connect(
      get_value(opts, :api_url),
      [
        # interceptors: [GRPC.Client.Interceptors.Logger],
        headers: [{"Authorization", "Bearer #{get_value(opts, :token)}"}],
        cred: %GRPC.Credential{
          ssl: [
            verify: :verify_peer,
            depth: 99,
            cacerts: :public_key.cacerts_get(),
          ]
        },
        adapter: GRPC.Client.Adapters.Mint,
      ]
    )

    channel
  end

  @spec create_gun_channel!() :: GRPC.Channel.t()
  @spec create_gun_channel!(keyword()) :: GRPC.Channel.t()
  def create_gun_channel!(opts \\ []) do
    {:ok, channel} = GRPC.Stub.connect(
      get_value(opts, :api_url),
      [
        # interceptors: [GRPC.Client.Interceptors.Logger],
        headers: [{"Authorization", "Bearer #{get_value(opts, :token)}"}],
        cred: %GRPC.Credential{
          ssl: [
            verify: :verify_peer,
            depth: 99,
            cacert_file: CAStore.file_path(),
            customize_hostname_check: [match_fun: :public_key.pkix_verify_hostname_match_fun(:https)],
          ]
        },
      ]
    )

    channel
  end

  @spec start_link() :: :ignore | {:error, any()} | {:ok, pid()}
  @spec start_link(any()) :: :ignore | {:error, any()} | {:ok, pid()}
  def start_link(init_state \\ []) do
    GenServer.start_link(__MODULE__, init_state, name: __MODULE__)
  end

  @impl true
  @spec init(keyword()) :: {:ok, %{channel: nil, opts: list(), status: :down}}
  def init(init_arg) do
    opts = init_arg
    |> Keyword.put_new_lazy(:api_url, fn -> Application.get_env(:tiapi, :api_url) end)
    |> Keyword.put_new_lazy(:token, fn -> Application.get_env(:tiapi, :token) end)
    state = %{
      opts: opts,
      channel: nil,
      status: :down,
    }

    {:ok, state}
  end

  @impl true
  def handle_call(:status, _from, %{status: status} = state) do
    {:reply, status, state}
  end

  def handle_call(:channel, _from, %{channel: channel} = state) do
    {:reply, channel, state}
  end

  def handle_call(:up_channel, _from, %{opts: opts} = state) do
    channel = create_mint_channel!(opts)

    {:reply, channel, %{state | channel: channel, status: :up}}
  end

  @impl true
  def handle_info({:elixir_grpc, :connection_down, _pid}, state) do
    {:noreply, %{state | status: :down}}
  end

  defp get_value(values, key) do
    Keyword.get(values, key, Application.get_env(:tiapi, key))
  end
end
