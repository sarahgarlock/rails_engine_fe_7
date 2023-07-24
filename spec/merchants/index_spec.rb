require 'rails_helper'

RSpec.describe 'Merchants Index Page', type: :feature do
  it 'displays a list of all merchant names' do
    visit merchants_path

    expect(page).to have_link("Schroeder-Jerde")
    expect(page).to have_link("Klein, Rempel and Jones")
    expect(page).to have_link("Willms and Sons")

    click_link("Schroeder-Jerde")

    expect(current_path).to eq(merchant_path(1))

    expect(page).to have_content("Item Quo Magnam")
    expect(page).to have_content("Item Quidem Suscipit")
    expect(page).to have_content("Item Rerum Magni")
  end

end