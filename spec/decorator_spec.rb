require 'spec_helper'
require 'json'

require 'decorator/decorator'

describe UserDecorator do
  subject do
    UserDecorator.new(User.new('Jon Doe', 'jon@doe.com'))
  end

  describe "#to_json" do
    it "renders the expected json" do
      expect(JSON.parse(subject.to_json)).to eq({'name' => 'Jon Doe', 'email' => 'jon@doe.com'})
    end
  end
end
