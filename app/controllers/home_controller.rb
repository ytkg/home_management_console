class HomeController < ApplicationController
  def index
    @gomi_calendars = GomiCalendar.where(date: Date.today..Date.tomorrow)
  end

  def light_on
    require 'nature_remo/light'
    NatureRemo::Light.on
    head :ok
  end

  def light_off
    require 'nature_remo/light'
    NatureRemo::Light.off
    head :ok
  end
end
