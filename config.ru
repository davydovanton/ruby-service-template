# frozen_string_literal: true

PROJECT_APP = 'http'
require 'bundler/setup'

require_relative 'config/enviroment'

run Container['http.app']
