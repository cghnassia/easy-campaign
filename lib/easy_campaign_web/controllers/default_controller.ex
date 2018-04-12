defmodule EasyCampaignWeb.DefaultController do
    use EasyCampaignWeb, :controller
    
    def index(conn, _params) do
      contacts = [
        %{id: 0, name: "John Deer", phone_number: "+33 770 172 447", email: "john.deer@company.com"},
        %{id: 0, name: "Frank Dubosc", phone_number: "+1 441 732 123", email: "frank.dusbosc@gmail.com"}
      ]
      render conn, "index.html", contacts: contacts
    end
end
  