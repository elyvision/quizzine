class Question < ActiveRecord::Base
  belongs_to :quizz
  has_many :answers

  validates :sujet, presence: true
end
