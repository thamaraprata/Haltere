defmodule WabanexWeb.Resolvers.Traning do
  def create(%{input: params}, _context), do: Wabanex.Trainings.Create.call(params)
end
