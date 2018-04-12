class Transaction < ApplicationRecord

  validates :description, presence:true
  validates :value, presence:true

  def self.total_transaction_current_month type
    current_month=Time.now.month
    transactions=Transaction.where("cast(strftime('%m', created_at) as int) = ? AND operation_type=?", current_month, type)
    total_transaction=transactions.to_a.sum { |item| item.value }
  end

  def percent_exp (total_incomes)
    percent=(value/total_incomes)*100
  end

end
