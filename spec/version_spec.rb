require 'rspec'
require_relative 'spec_helper'

describe TwitterBot do
  it 'should match a valid version' do
    expect(TwitterBot::VERSION).to match(/\d+\.\d+(\.\d+)?(\-[a-zA-Z])?/)
  end
end
