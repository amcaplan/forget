require 'rails_helper'

RSpec.describe "CacheClearRequests", type: :request do
  context 'Given a value in the Rails cache' do
    let(:key) { 'key' }
    let(:value) { 'value' }

    before do
      Rails.cache.write(key, value)
      expect(Rails.cache.read(key)).to eq(value)
      expect(Forget::CacheClearing.count).to eq(0)
    end

    context 'When a request is made to clear the cache' do
      before do
        delete(forget.cache_path)
      end

      it 'returns a 204 status' do
        expect(response.status).to eq(204)
      end

      it 'removes the value from the cache' do
        expect(Rails.cache.read(key)).to be_nil
      end

      it 'saved a record that the cache was cleared' do
        expect(Forget::CacheClearing.count).to eq(1)
      end
    end
  end
end
