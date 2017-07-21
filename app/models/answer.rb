class Answer < ApplicationRecord
	belongs_to :user

  def self.results_for(answer_number)
    self.all.group(answer_number.to_sym).count
  end
end
