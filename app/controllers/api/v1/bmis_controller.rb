class Api::V1::BmisController < ApplicationController
    skip_before_action :authorized
    def create
        binding.pry
    end
    
end
