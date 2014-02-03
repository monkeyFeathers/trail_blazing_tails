class Dog < ActiveRecord::Base

	belongs_to :account
	has_many :runs
end
