class User < ApplicationRecord
#Un utilisateur peut participer à plusieurs événements au travers des participations. Un utilisateur peut administrer plusieurs événements.
    has_many :attendances
	has_many :events
	has_many :events, through: :attendances
	
	validates :first_name, presence: true
	validates :last_name, presence: true
end
