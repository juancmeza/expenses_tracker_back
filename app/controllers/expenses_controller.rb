class ExpensesController < ApplicationController

    def index
      expenses = Expense.all
      render json: expenses
    end

    def show
      expense = Expense.find_by(id: params[:id])
      render json: expense, include: :category
    end


    def edit
      expense = Expense.find_by(id: params[:id])
    end

    def update
      expense = Expense.find_by(id: params[:id])
      p expense
      expense.update(amount: params[:amount], date: params[:date],
                     description: params[:description], user_id: params[:userId],
                     category_id: params[:categoryId])
      p expense
      render json: expense
    end

    def create
      expense = Expense.create(amount: params[:amount], date: params[:date], description: params[:description], user_id: params[:userId], category_id: params[:categoryId])
      if expense.valid?
        render json: expense
      else
        render json: {error: 'You must select a category and provide a name, amount, and date'}
      end
    end

    def destroy
      expense = Expense.find_by(id: params[:id])
      expense.destroy
      render json: {message: "Expense was deleted"}
    end

  end
