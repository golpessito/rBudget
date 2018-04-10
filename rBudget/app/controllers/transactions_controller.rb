class TransactionsController < ApplicationController
  def create

    @transaction=Transaction.new(transaction_params)

    if @transaction.save
      flash[:notice]="Transaction Created"
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def destroy
      transaction=Transaction.find(params[:id])
      transaction.destroy

      flash[:notice]="Transaction Removed"
      redirect_to root_path
  end

  def transaction_params
    params.require(:transaction).permit(:operation_type,:description,:value)
  end
end
