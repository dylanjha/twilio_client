require "twilio_client/version"
require 'twilio-ruby'

module TwilioClient

  @config    = {}
  @test_mode = false

  def self.test_mode=(boolean)
    @test_mode = boolean
  end

  def self.configure(opts)
    require_configs(opts)
    @config[:sid]   = opts.fetch(:sid)
    @config[:token] = opts.fetch(:token)
    @config[:from]  = opts.fetch(:from)
  end

  def self.client
    metaclass = class<<self;self;end
    metaclass.send(:define_method, :client) do
      Twilio::REST::Client.new(@config.fetch(:sid), @config.fetch(:token))
    end
    client
  end

  def self.send_text(to, body)
    unless @test_mode
      client.account.messages.create(
        from: @config.fetch(:from),
        to:   to,
        body: body,
      )
    end
  end

  private

  def self.require_configs(opts)
    [:sid, :token, :from].each do |key|
      raise ArgumentError.new "Must Supply a #{key} config" unless opts[key]
    end
  end
end
