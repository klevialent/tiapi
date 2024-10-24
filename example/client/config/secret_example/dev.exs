import Config

config :client,
  account_id: "11111111"  # можно получить методом UsersService.GetAccounts

config :tiapi,
  account_id: "11111111",  # так же можно указать здесь, можно и не указывать
  token: "secret_token" # https://russianinvestments.github.io/investAPI/token/
