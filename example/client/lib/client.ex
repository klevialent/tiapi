defmodule Client do

  def get_account_id do
    Application.get_env(:client, :account_id)
  end

  def get_api_url do
    Application.get_env(:client, :server_url)
  end

  def get_token do
    Application.get_env(:client, :token)
  end

end
