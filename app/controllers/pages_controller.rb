class PagesController < ApplicationController
    def index
        @patients = Patient.where(user_id: current_user.id)
        @doctors = User.where(role: '0')
        @admins = User.where(role: '1')
    end
end