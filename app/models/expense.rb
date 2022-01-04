class Expense < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :amount, presence: true, :message => "Be sure to include the total"
  validates :date, presence: true, :message => "Be sure to include a date"
  validates :description, presence: true, :message => "Be sure to include a description"
  validates :category_id, presence: true, :message => "Be sure to select a category"

  validates :amount, type => Number, :message => "The amount must be a number"

end
