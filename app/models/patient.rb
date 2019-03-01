class Patient < ActiveRecord::Base
    belongs_to :user
    has_many :patientnotes, dependent: :destroy
end
