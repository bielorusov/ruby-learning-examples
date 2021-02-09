$:.unshift File.dirname(__FILE__)

require_relative 'config/application'
require_relative 'lib/middlewares/benchmark'

use Rack::Reloader
# HW use Middleware::Logger
use Middlewares::Benchmark

run Application