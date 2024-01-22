# frozen_string_literal: true
require_relative '../../lib/bitz/version'

RSpec.describe Bitz do
  it "has a version number" do
    expect(Bitz::VERSION).to eql("0.0.1")
  end
end
