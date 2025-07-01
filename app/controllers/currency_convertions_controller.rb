class CurrencyConvertionsController < ApplicationController
    def create
        render(
            json:{
                tsh: 100,
                ugx: 10,
                usd: 88,
            }, status: :ok
        )
    end    
end    