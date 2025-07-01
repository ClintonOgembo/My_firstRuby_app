class TimeController < ApplicationController
  def current_time
    render plain:Time.now.to_s
  end
end
