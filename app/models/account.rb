class Account < ActiveRecord::Base

	attr_reader :account_number

	has_many :clients
	has_many :dogs
	has_many :runs

	after_initialize :account_number

	def account_number
		if self.id
			self.id + 10000
		end
	end

	def process_order(order)
		if order.valid?
			self.orders << order
			if order.dog.second_dog?
				self.silver_run_credits = self.silver_run_credits + order.quantity
			else
				self.gold_run_credits = self.gold_run_credits + order.quantity
			end
		end
	end

	def cancel_order(order)
		if order.dog.second_dog?
			self.silver_run_credits = self.silver_run_credits - order.quantity
		else
			self.gold_run_credits = self.gold_run_credits - order.quantity
		end
	end

end
