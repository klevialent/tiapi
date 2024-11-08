defmodule Client.RequestExamples do

  def any_request do
    request = %Tiapi.Proto.PortfolioRequest{
      account_id: Client.get_account_id,
      currency: :RUB
    }

    Tiapi.Service.request!(request)
  end

  def porfolio_request do
    Tiapi.Service.get_portfolio!()
  end

end
