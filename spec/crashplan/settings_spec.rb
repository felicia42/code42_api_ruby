require 'spec_helper'

describe Crashplan::Settings do
  subject(:settings) { Crashplan::Settings.new }

  describe "#host" do
    it "should return configured host" do
      settings.host = "example.com"
      settings.host.should == "example.com"
    end
  end

  describe "#port" do
    it "should return configured port" do
      settings.port = 123
      settings.port.should == 123
    end
  end

  describe "#https" do
    it "should return the https boolean" do
      settings.https = true
      settings.https.should == true
    end

    it "should default to false" do
      settings = Crashplan::Settings.new
      settings.https.should == false
    end
  end

  describe "#api_root" do
    it "should return the api root" do
      settings.api_root = '/api/v3'
      settings.api_root.should == '/api/v3'
    end
  end

  describe "#username" do
    it "should return the username" do
      settings.username = "bob"
      settings.username.should == "bob"
    end
  end

  describe "#password" do
    it "shoult return the password" do
      settings.password = "bob"
      settings.password == "bob"
    end
  end

  describe "#all" do
    it "should return a hash of all settings" do
      settings = Crashplan::Settings.new(
        host: 'example.com',
        port: 123,
        api_root: '/api',
        https: true,
        username: 'fred',
        password: 'secret'
      )
      settings.all.should == {
        host: 'example.com',
        port: 123,
        https: true,
        api_root: '/api',
        username: 'fred',
        password: 'secret'
      }
    end
  end
end
