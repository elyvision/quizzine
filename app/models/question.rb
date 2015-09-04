class Question < ActiveRecord::Base
  belongs_to :quizz
  has_many :answers, dependent: :destroy

  validates :sujet, presence: true
end
