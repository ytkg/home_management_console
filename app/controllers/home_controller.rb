class HomeController < ApplicationController
  def index
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
