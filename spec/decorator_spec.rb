require 'spec_helper'
require 'json'

require 'decorator/decorator'

describe UserDecorator do
  let(:user) { User.new('Jon Doe', 'jon@doe.com') }
  subject { UserDecorator.new(user) }

  describe "#to_json" do
    it "renders the expected json" do
      expect(JSON.parse(subject.to_json)).to eq({'name' => 'Jon Doe', 'email' => 'jon@doe.com'})
    end
  end

  describe "#name" do
    it "returns the user name" do
      expect(subject.name).to eq(user.name)
    end
  end

  describe "#email" do
    it "returns the user name" do
      expect(subject.email).to eq(user.email)
    end
  end
end
