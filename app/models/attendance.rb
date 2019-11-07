class Attendance < ApplicationRecord
#Une participation appartient à un utilisateur, et un événement.
    belongs_to :user
	belongs_to :event
end
