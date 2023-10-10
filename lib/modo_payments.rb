require "httparty"

module ModoPayments
  BASE_URL_MODO = 'https://merchants.playdigital.com.ar'.freeze

  class Client
    include HTTParty
    base_uri BASE_URL_MODO

    def initialize(client_id, client_secret)
      @client_id = client_id
      @client_secret = client_secret
    end

    def generate_access_token
      response = self.class.post(
        "/merchants/middleman/token",
        headers: { 'Content-Type' => 'application/json' },
        body: {
          username: @client_id,
          password: @client_secret
        }.to_json
      )
      response.parsed_response["accessToken"]
    end

    def create_payment_intention(product_name:, price:, quantity: 1, store_id:, currency: 'ARS', external_intention_id:, expiration_date:)
      access_token = generate_access_token

      response = self.class.post(
        "/merchants/ecommerce/payment-intention",
        headers: {
          'Content-Type' => 'application/json',
          'Authorization' => "Bearer #{access_token}"
        },
        body: {
          productName: product_name,
          price: price,
          quantity: quantity,
          storeId: store_id,
          currency: currency,
          externalIntentionId: external_intention_id,
          expirationDate: expiration_date
        }.to_json
      )
      
      response.parsed_response
    end
  end
end