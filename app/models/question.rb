class Question < ApplicationRecord
  belongs_to :bot
  has_one :response

  attr_accessor :answer
end
