class Response < ApplicationRecord
  validates :user_id, :answer_id, presence: true
  validate :respondent_already_answered?
  validate :respondent_is_author?

  belongs_to :respondent,
    class_name: :User,
    primary_key: :id,
    foreign_key: :user_id

  belongs_to :answer_choice,
    class_name: :AnswerChoice,
    primary_key: :id,
    foreign_key: :answer_id

  has_one :question,
    through: :answer_choice,
    source: :question

  def sibling_responses
    self.question.responses.where.not(id: self.id)
  end

  def respondent_already_answered?
    if sibling_responses.exists?(user_id: self.user_id)
      errors[:base] << "You've already submitted a response."
    end
  end

  def respondent_is_author?
    if self.question.poll.author_id == self.user_id
      errors[:base] << "You can't respond to your own poll!"
    end
  end

end
