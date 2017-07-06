require 'rails_helper'

  describe User do
    it 'creates a user' do
      user = FactoryGirl.create(:user)
    end

    it 'signs the user out' do
      user = FactoryGirl.create(:user)
      'Sign out'
    end

    it 'adds an image to user' do
      user = FactoryGirl.create(:user)
      'Log in'
      image = FactoryGirl.create(:image)
      
    end

  end
