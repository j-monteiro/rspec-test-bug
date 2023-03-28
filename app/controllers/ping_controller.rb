# frozen_string_literal: true

class PingController < ApplicationController
  def create
    render json: params.except(:controller, :action)
  end
end
