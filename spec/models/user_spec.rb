require 'rails_helper'

describe User do
  describe '#create' do
    
    it "is invalid without a nickname" do
      user = FactoryBot.build(:user, nickname: nil)
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end
    
    it "is invalid without a email" do
      user = FactoryBot.build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end
  end
end