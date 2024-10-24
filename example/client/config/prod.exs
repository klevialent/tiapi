import Config

config :tiapi,
  server_url: "https://invest-public-api.tinkoff.ru:443"

import_config "secret/prod.exs"
