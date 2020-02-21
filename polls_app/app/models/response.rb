class Response < ApplicationRecord

  validates :answer_id, :user_id, presence: true

  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_id,
    class_name: :AnswerChoice

  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  has_one :question,
    through: :answer_choice,
    source: :question
  
  has_one :poll,
    through: :question,
    source: :poll
  
  def sibling_responses
    question = self.question
    question.responses.where.not(id: self.id)
  end

  def respondent_already_answered?
    sibling_responses.each do |response|
      if self.user_id == response.user_id
        return true
      end
    end
    false
  end

  def same_as_creator?
    poll = self.question.poll
    poll.user_id == self.user_id
  end

  

end