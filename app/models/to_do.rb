class ToDo < ApplicationRecord
    validates :task, presence: true
    validates :isComplete, presence: true
end
