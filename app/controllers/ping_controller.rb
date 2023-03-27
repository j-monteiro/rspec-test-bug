# frozen_string_literal: true

class PingController < ApplicationController
  def create
    render json: { message: 'pong' }
  end
end
