class PagesController < ApplicationController
    def index
        @patients = Patient.where(user_id: current_user.id)
    end
end