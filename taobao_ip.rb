require "open-uri"
require 'json'

class TaobaoIp

  BaseURL = 'http://ip.taobao.com/service/getIpInfo.php?ip='

  def initialize(ip, slice_params=nil)
    @ip = ip
    @slice_params = slice_params
    @response = JSON(open("#{BaseURL}#{@ip}").gets)
  end

  def status
    @response["code"]
  end

  def valid?
    @response["code"] == 0
  end

  def results
    return {} unless valid?
    datas = @response["data"]
    datas.slice!(*@slice_params) if @slice_params
    datas
  end

  private

  def method_missing(m, *args, &block)  
    @response["data"][m.to_s] || super
  end 
  
end
