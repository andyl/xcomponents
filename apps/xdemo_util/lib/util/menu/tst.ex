defmodule Util.Menu.Tst do

  @doc """
  Call in the 'update' function of your live_view.
  assign(socket, :tst_menu, Util.Menu.Tst.data() |> set_active(:test1)
  """
  def data do
    [
      %{id: :test1, label: "Test1", href: "/test1"},
      %{id: :test2, label: "Test2", href: "/test2"},
      %{id: :test3, label: "Test3", href: "/test3"},
      %{id: :test4, label: "Test4", href: "/test4"},
      %{id: :test5, label: "Test5", href: "/test5"},
    ]
    |> Util.Menu.new_list()
  end

  def set_active(data, id_or_label) do
    data
    |> Util.Menu.set_active(id_or_label, &active?/2)
  end

  defp active?(item, id) when is_atom(id) do
    item.id == id
  end

  defp active?(item, label) do
    item.label == label
  end

end
