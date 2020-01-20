class Goal < ApplicationRecord
	has_many :steps, dependent: :destroy
	belongs_to :user
end
