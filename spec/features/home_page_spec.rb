require 'rails_helper'

describe 'As a visitor when I go the home page' do
  it 'displays a background image from Unsplash' do
    visit root_path

    expect(current_path).to eq(root_path)

    require "pry"; binding.pry
  end
end
