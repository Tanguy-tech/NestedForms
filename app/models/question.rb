class Question < ApplicationRecord

  validates :content,
  presence: true

  belongs_to :survey, optional: :true
<<<<<<< HEAD
  has_many :answers, dependent: :destroy
=======
  has_many :join_question_responses
  has_many :responses, through: :join_question_responses

>>>>>>> d051cd5c55177b59f89593d11a11d150194a7b20
end
