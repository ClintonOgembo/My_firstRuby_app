require "rails_helper"

RSpec.describe "sample test" do
    it "respond with 200" do
        post "/currency_convertions"

        expect(status).to eq(200)
    end

    it "respond with correct conversions" do
        post "/currency_convertions"

        parsed_body = response.parsed_body
        expect(parsed_body[:tsh]).to eq(100)
    end

    it "respond with correct conversions" do
        post "/currency_convertions"

        parsed_body = response.parsed_body
        expect(parsed_body[:ugx]).to eq(10)
    end

    it "respond with correct conversions" do
        post "/currency_convertions"

        parsed_body = response.parsed_body
        expect(parsed_body[:usd]).to eq(88)
    end
end