class PagesController < ApplicationController
    def index
        @patients = Patient.limit(5)
    end
end
