class TimeController < ApplicationController
  def current_time
    Render plain: Time.now.to_s
  end
end
