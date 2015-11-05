require_dependency "forget/application_controller"

module Forget
  class CacheController < ApplicationController
    def destroy
      Rails.cache.clear
      Forget::CacheClearing.create!
      head :no_content
    end
  end
end
