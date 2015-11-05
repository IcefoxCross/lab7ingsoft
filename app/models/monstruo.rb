class Monstruo < ActiveRecord::Base
	validates :nombre,
		presence: true,
		uniqueness: true

	default_scope -> { order :nombre }
end
