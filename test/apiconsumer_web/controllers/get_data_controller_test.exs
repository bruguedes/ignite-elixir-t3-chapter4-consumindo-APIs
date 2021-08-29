defmodule ApiconsumerWeb.GetDataControllerTest do
  use ApiconsumerWeb.ConnCase, async: true

  import Mox
  alias Apiconsumer.Error
  alias Apiconsumer.GitHub.ClientMock

  describe "show/1" do
    test "sucess, when user name a valid", %{conn: conn} do
      params = "test"

      expect_response =
        ~s([{"description":"Test success","html_url":"https://github.com/test/test-com-bypass","id":123456789,"name":"test bypass","stargazers_count":0}])

      expect(ClientMock, :get_repos, fn _user ->
        {:ok,
         [
           %{
             description: "Test success",
             html_url: "https://github.com/test/test-com-bypass",
             id: 123_456_789,
             name: "test bypass",
             stargazers_count: 0
           }
         ]}
      end)

      response =
        conn
        |> get(Routes.get_data_path(conn, :show, params))
        |> response(:ok)

      assert response == expect_response
    end

    test "fail, when user name a invalid", %{conn: conn} do
      params = "invalid_user"

      expect_response = ~s({"message":"user not found!"})

      expect(ClientMock, :get_repos, fn _user ->
        {:error, Error.build(:not_found, "user not found!")}
      end)

      response =
        conn
        |> get(Routes.get_data_path(conn, :show, params))
        |> response(:not_found)

      assert response == expect_response
    end
  end
end
