# frozen_string_literal : true

class ApplicationController
  def index
    [200, :json, { version: '0.0.0', name: "Hello From #{self.class.name}" }.to_json]
  end
end