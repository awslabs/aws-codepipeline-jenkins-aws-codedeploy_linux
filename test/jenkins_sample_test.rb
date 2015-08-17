#!/usr/bin/env ruby

require 'net/http'
require 'minitest/autorun'
require 'socket'

class JenkinsSampleTest < MiniTest::Unit::TestCase
  def setup
    @webpage = Net::HTTP.get(URI("http://#{ENV['TEST_IP_ADDRESS']}:8000/index.html"))
  end

  def test_congratulations
    assert(@webpage =~ /Congratulations!/)
  end
end