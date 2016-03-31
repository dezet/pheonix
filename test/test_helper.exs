ExUnit.start

Mix.Task.run "ecto.create", ~w(-r HelloPheonix.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r HelloPheonix.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(HelloPheonix.Repo)

