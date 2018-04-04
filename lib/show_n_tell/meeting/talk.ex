defmodule ShowNTell.Meeting.Talk do
  use Ecto.Schema
  import Ecto.Changeset


  schema "talks" do
    field :date, :date
    field :description, :string
    field :estimated_duration, :integer

    timestamps()
  end

  @doc false
  def changeset(talk, attrs) do
    talk
    |> cast(attrs, [:date, :description, :estimated_duration])
    |> validate_required([:date, :description, :estimated_duration])
  end
end
