require 'rails_helper'
describe User do
  describe '#create' do
    it "is invalid without a nickname" do
      user = User.new(nickname: "", email: "test@test.dayo.com", password: "000000", password_confirmation: "000000")
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end
    
    it "is invalid without a email" do
      user = User.new(nickname: "ryusei", email: "", password: "000000", password_confirmation: "000000")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end
  end
end