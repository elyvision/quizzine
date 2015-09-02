class Answer < ActiveRecord::Base
  belongs_to :question

  validates :proposition, presence: true
  validates :good_not_good, inclusion: { in: [true, false] }
end
