class Patient < ActiveRecord::Base
    belongs_to :user
    default_scope -> { includes(:user).order(created_at: :desc) }
    has_many :patientnotes, dependent: :destroy
end
