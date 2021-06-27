defmodule Wabanex.UserTest do
  user Wabanex.DataCase, async: true
  alias Wabanex.User

  describe "changeset/1" do
    test "when all params are valid, return a valid changeset" do
      params = %{name: "Renata", email: "lindinha1212@bananal.com", password: "12345imposto"}

      response = User.changeset(params)

      assert %Ecto.Changeset{valid? changes: %{email: "lindinha1212@bananal.com", name: "Renata", password: "12345imposto"},
    errors: []
  } = response
    end
end
