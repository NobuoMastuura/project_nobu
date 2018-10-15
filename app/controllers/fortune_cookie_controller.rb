require 'net/http'
require 'uri'
require 'json'

class FortuneCookieController < ApplicationController

  def index
    uri = URI.parse('http://api.jugemkey.jp/api/horoscope/free/2018/10/01')
    json = Net::HTTP.get(uri)
    @result = JSON.parse(json)
  end

end
