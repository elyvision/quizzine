class Quizz < ActiveRecord::Base
  belongs_to :user
  has_many :questions

  validates :theme, presence: true

end
