class BudgetController < ApplicationController
  def show
    @transaction = Transaction.new
    @month=(Time.now).strftime("%B")

    @inc_transactions=Transaction.where("operation_type='inc'")
    @total_incomes=Transaction.total_transaction_current_month("inc")

    @exp_transactions=Transaction.where("operation_type='exp'")
    @total_expenses=Transaction.total_transaction_current_month("exp")

    if(@total_incomes > 0)
      @total_percent_exp=(@total_expenses/@total_incomes)*100
    end
    
  end
end
