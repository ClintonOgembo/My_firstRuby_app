class DemoController < ApplicationController

    skip_before_action :verify_authenticity_token, only: [:update, :delete]

    def show
        @message= "Hello from show action"
    end

    def update
        render plain: "Update action called"
    end

    def delete
        render plain: "Destroy action called"
    end

end
