require 'rspec'
require_relative 'spec_helper'

describe 'Example Configuration' do
  file = './conf/config.example.yml'

  it 'should exist' do
    expect(File.exist?(file)).to equal(true)
  end

  it 'should be readable' do
    expect(File.readable?(file)).to equal(true)
  end

  it 'should be a parsable YAML file' do
    expect(YAML.load_file(file)).to be_a(Hash)
  end
end
