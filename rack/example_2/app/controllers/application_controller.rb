# frozen_string_literal : true

class ApplicationController
  def index
    puts "[CALLED] #{self.class.name}#index"

    [200, :json, { version: '0.0.0', name: "Hello YYYYYYYYYYYYY From #{self.class.name}" }.to_json]
  end
end