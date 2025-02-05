defmodule Tiapi.MixProject do
  use Mix.Project

  def project do
    [
      app: :tiapi,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:protobuf, "~> 0.13"},
      {:google_protos, "~> 0.4"},
      {:grpc, "~> 0.9"},
      {:castore, "~> 0.1 or ~> 1.0"},
      {:ecto, "~> 2.1 or ~> 3.0", optional: true},
      {:phoenix_html, "~> 2.0 or ~> 3.0 or ~> 4.0", optional: true},
    ]
  end
end
