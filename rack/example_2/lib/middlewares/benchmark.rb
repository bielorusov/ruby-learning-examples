# frozen_string_literal: true

require 'benchmark'

module Middlewares
  class Benchmark
    def initialize(application)
      @application = application
    end

    def call(env)
      puts "[CALLED] #{self.class.name}#call"

      ::Benchmark.bm do |x|
        x.report { @status, @headers, @body =  @application.call(env) }
        # x.report { sleep(5) }
      end

      [@status, @headers, @body]
    end
  end
end
