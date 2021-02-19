# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  respondent_id    :integer          not null
#  answer_choice_id :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Response < ApplicationRecord
  validates :respondent_id, :answer_choice_id, presence: true
  validate :respondent_already_answered?
  belongs_to :respondent,
    class_name: :User

  belongs_to :answer_choice

  has_one :question
    through: :answer_choice,

  def sibling_responses
    self.question.responses.where.not(id: self.id)
  end

  def respondent_already_answered?
    if self.sibling_responses.exists?(respondent_id: self.respondent_id)
      errors[:respondent_id] << "Respondent can't select more than one answer choice for the same question."
    end
  end

  def respondent_is_author?
    if self.question.poll.author_id == self.respondent_id
      errors[:respondent_id] << "Poll author cannot respond to own poll"
    end
  end


end
