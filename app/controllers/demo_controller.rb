class DemoController < ApplicationController
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
