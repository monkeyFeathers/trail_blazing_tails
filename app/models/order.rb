class Order < ActiveRecord::Base

	belongs_to :dog
	belongs_to :account

	validates :dog_id, presence: true
end
