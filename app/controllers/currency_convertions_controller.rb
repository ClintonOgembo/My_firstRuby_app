class CurrencyConvertionsController < ApplicationController
    def create
        amount = params[:amount].to_f
        render(
            json:{ 
                TZS: (amount * 20.40).round(2),
                UGX: (amount * 27.80).round(2),
                USD: (amount * 0.00774).round(2)
             },
            status: :ok
        )
    end    
end   
 