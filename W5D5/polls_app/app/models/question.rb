# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  text       :text             not null
#  poll_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Question < ApplicationRecord
  validates :text, presence: true

  belongs_to :poll

  has_many :answer_choices

  has_many :responses, 
    through: :answer_choices

  def results
    answers = self.answer_choices.includes(:responses)
    
    response_count = {}
    answers.each {|answer| response_count[answer] = answer.responses.length}

  end
end
