class Run < ActiveRecord::Base

	belongs_to :dog
	belongs_to :runner
	belongs_to :account
	belongs_to :pay_period

end
