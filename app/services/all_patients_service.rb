class AllPatientsService
    def initialize(params)
        @search = params[:search]
    end
    
    #get patients depending on the request
    def call
        if @search.blank?
            patients = Patient.limit(28)
        elsif @search.present?
            patients = Patient.search(@search)
        else
        end
    end
end