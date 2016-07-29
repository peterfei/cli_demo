require 'spec_helper'
describe Coolboy do
    it "must by helloworld" do

      expect(Coolboy::Hello.new.test).to eq("hello world!")
    end
end
