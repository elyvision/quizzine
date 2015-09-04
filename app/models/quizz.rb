class Quizz < ActiveRecord::Base
  belongs_to :user
  has_many :questions, dependent: :destroy

  validates :theme, presence: true

end
