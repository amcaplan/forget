require 'rails_helper'

RSpec.feature "ClearCacheButtons", type: :feature do
  scenario 'clearing the cache' do
    key = :key
    value = 'cached_value'

    Rails.cache.write(key, value)
    expect(Rails.cache.read(key)).to eq(value)

    visit forget.cache_new_path
    click_button('Clear the Cache')

    expect(Rails.cache.read(key)).to be_nil
  end
end
