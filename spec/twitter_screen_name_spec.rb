require 'rspec'
require_relative 'spec_helper'

describe 'TwitterBot::Plugin::TwitterAnnouncer#valid_twitter_account?' do
  regexp = Regexp.new(TwitterBot::Plugin::TwitterAnnouncer::TWITTER_NAME_REGEXP)

  it 'should not match if the name is longer than 15 characters' do
    expect(regexp.match('NAME_IS_TOO_LONG')).to equal(nil)
  end

  it 'should not match if the string is empty' do
    expect(regexp.match('')).to equal(nil)
  end

  it 'should only allow for numbers, letters, and underscores' do
    expect(regexp.match('Zarthus')).to be_a(MatchData)
    expect(regexp.match('Zarthus122')).to be_a(MatchData)
    expect(regexp.match('12723')).to be_a(MatchData)
    expect(regexp.match('Zarthus_')).to be_a(MatchData)

    expect(regexp.match('Zart___,hus')).to equal(nil)
    expect(regexp.match('Zarth^[]us')).to equal(nil)
    expect(regexp.match('Zarth@$us')).to equal(nil)
    expect(regexp.match('Zarth$us')).to equal(nil)
  end
end
