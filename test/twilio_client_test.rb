require 'pry'
require 'twilio_client'
require 'test/unit'
require 'rr'

class TestTwilioClient < Test::Unit::TestCase

  def setup
    @sid   = '123'
    @token = '123'
    @from  = '123'
    stub(TwilioClient).send_text
  end

  def config
    TwilioClient.configure({
      sid:   @sid,
      token: @token,
      from:  @from,
    })
  end

  def test_config
    assert_nothing_raised do
      config
    end
  end

  def test_client
    mock(::Twilio::REST::Client).new(@sid, @token)
    config
    TwilioClient.client
  end

end
