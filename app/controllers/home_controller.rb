class HomeController < ApplicationController
  def index
    puts "========= self in HomeController#index is #{self.object_id}"
  end
end
