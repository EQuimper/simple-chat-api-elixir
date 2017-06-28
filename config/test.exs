use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :chat_api_demo, ChatApiDemo.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :chat_api_demo, ChatApiDemo.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "chat_api_demo_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox