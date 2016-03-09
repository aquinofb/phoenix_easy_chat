ExUnit.start

Mix.Task.run "ecto.create", ~w(-r EasyChat.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r EasyChat.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(EasyChat.Repo)

