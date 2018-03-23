class BudgetController < ApplicationController
  def show
    @transaction = Transaction.new
  end
end
