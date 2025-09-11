class RoomsController < ApplicationController
  def rooms
    @room = Room.new
  end
end
