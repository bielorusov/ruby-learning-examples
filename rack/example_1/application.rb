# frozen_string_literal: true

require 'rubygems'
require 'json'

require_relative 'app/controllers/application_controller'

class Application
  def self.call(env)
    new.perform_request(env)
  end

  def perform_request(env)
    handle_request

    [code, content_type, [body]]
  end

  private

  def handle_request
    @code, @format, @body = ApplicationController.new.index
  end

  def body
    @body || '404 Page not found!!!'
  end

  def content_type
    return json_content_type if @format == :json

    html_content_type
  end

  def json_content_type
    {'Content-Type' => 'application/json'}
  end

  def html_content_type
    {'Content-Type' => 'text/html'}
  end

  def code
    @code || 404
  end
end