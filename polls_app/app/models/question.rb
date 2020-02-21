class Question < ApplicationRecord

  validates :question, :poll_id, presence: true

  belongs_to :poll,
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: :Poll
  
  has_many :answers,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :AnswerChoice

  has_many :responses,
    through: :answers,
    source: :responses

  def n_plus_one_results
    results = {}
    self.answers.each do |answer_obj|
      results[answer_obj.answer] = answer_obj.responses.count
    end
    results
  end

  def better_results
    var = self.answers.includes(:responses)
    results = {}
    var.each do |answer_obj|
      results[answer_obj.answer] = answer_obj.responses.length
    end
    results 
  end

  def even_better_results
    answer_choices = self.answers

    answer_choices.joins('res')
  end

end