require 'rails_helper'

describe TweetsController do

  describe 'GET #new' do
    it 'renders the :new template' do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'GET #edit' do
    it "assigns the requested contact to @tweet" do
      # アソシエーションを組んでいるのでユーザーを作成しておく
      create(:user)

      tweet = create(:tweet)
      get :edit, params: { id: tweet }
      expect(assigns(:tweet)).to eq tweet
    end

    it "renders the :edit template" do
      # アソシエーションを組んでいるのでユーザーを作成しておく
      create(:user)

      tweet = create(:tweet)
      get :edit, params: { id: tweet }
      expect(response).to render_template :edit
    end
  end

end