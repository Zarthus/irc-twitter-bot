require 'rspec'
require_relative 'spec_helper'

describe 'Dir Helper Functions' do
  it 'should cleanly remove levels off of directories' do
    path = File.join('a', 'b', 'c', 'd')
    path_expect = File.join('a', 'b', 'c')

    expect(Dir.back(path, 1)).to eq(path_expect)
  end
end
