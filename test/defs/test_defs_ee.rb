# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: definitions/ee.yaml
class EeDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_ee
{ Date.civil(2017, 1, 1) => 'uusaasta',
  Date.civil(2017, 2, 24) => 'iseseisvuspäev',
  Date.civil(2017, 5, 1) => 'kevadpüha',
  Date.civil(2017, 6, 23) => 'võidupüha ja jaanilaupäev',
  Date.civil(2017, 6, 24) => 'jaanipäev',
  Date.civil(2017, 8, 20) => 'taasiseseisvumispäev',
  Date.civil(2017, 12, 24) => 'jõululaupäev',
  Date.civil(2017, 12, 25) => 'esimene jõulupüha',
  Date.civil(2017, 12, 26) => 'teine jõulupüha' }.each do |date, name|
  assert_equal name, (Holidays.on(date, :ee)[0] || {})[:name]
end

[Date.civil(2017, 4, 14), Date.civil(2018, 3, 30), Date.civil(2019, 4, 19)].each do |date|
  assert_equal 'suur reede', Holidays.on(date, :ee)[0][:name]
end
[Date.civil(2017, 4, 16), Date.civil(2018, 4, 01), Date.civil(2019, 4, 21)].each do |date|
  assert_equal 'ülestõusmispühade 1. püha', Holidays.on(date, :ee)[0][:name]
end
[Date.civil(2017, 6, 4), Date.civil(2018, 5, 20), Date.civil(2019, 6, 9)].each do |date|
  assert_equal 'nelipühade 1. püha', Holidays.on(date, :ee)[0][:name]
end

  end
end