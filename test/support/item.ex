defmodule EctoLtree.Item do
  use Ecto.Schema
  import Ecto.Changeset
  alias EctoLtree.LabelTree, as: Ltree

  schema "items" do
    field(:path, Ltree)
  end

  def changeset(item, params \\ %{}) do
    item
    |> cast(params, [:path])
  end
end
