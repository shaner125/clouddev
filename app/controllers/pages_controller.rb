class PagesController < ApplicationController
    #method for gathering variables for partials depending on user id/role
    def index
        @patients = Patient.where(user_id: current_user.id)
        @doctors = User.where(role: '0')
        @admins = User.where(role: '1')
        @notifications = Notification.where(user_id: current_user.id)
    end
end