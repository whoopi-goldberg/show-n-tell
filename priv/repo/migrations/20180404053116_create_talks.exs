defmodule ShowNTell.Repo.Migrations.CreateTalks do
  use Ecto.Migration

  def change do
    create table(:talks) do
      add :date, :date
      add :description, :string
      add :estimated_duration, :integer

      timestamps()
    end

  end
end
