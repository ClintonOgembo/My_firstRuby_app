require "rails_helper"

RSpec.describe "sample test" do
    it "responds with 200" do
        post "/currency_convertions", params: { amount: 100}
        expect(response).to have_http_status(:ok)
    end

    it "responds with correct TZS conversions" do
        post "/currency_convertions", params: { amount: 100}
        parsed_body = response.parsed_body
        expect(parsed_body["TZS"]).to eq((100 * 20.40).round(2))
    end
    
    it "responds with correct UGX conversions" do
        post "/currency_convertions", params: { amount: 100}
        parsed_body = response.parsed_body
        expect(parsed_body["UGX"]).to eq((100 * 27.80).round(2))
    end
    
    it "responds with correct USD conversions" do
        post "/currency_convertions", params: { amount: 100}
        parsed_body = response.parsed_body
        expect(parsed_body["USD"]).to eq((100 * 0.00774).round(2))
    end 


#     it "respond with 200" do
#         post "/currency_convertions"

#         expect(status).to eq(200)
#     end

#     it "respond with correct conversions" do
#         post "/currency_convertions"

#         parsed_body = response.parsed_body
#         expect(parsed_body[:tsh]).to eq(100)
#     end

#     it "respond with correct conversions" do
#         post "/currency_convertions"

#         parsed_body = response.parsed_body
#         expect(parsed_body[:ugx]).to eq(10)
#     end

#     it "respond with correct conversions" do
#         post "/currency_convertions"

#         parsed_body = response.parsed_body
#         expect(parsed_body[:usd]).to eq(88)
#     end

end