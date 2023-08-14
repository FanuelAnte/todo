require 'rails_helper'

RSpec.describe ToDo, type: :model do
  # it { is_expected.to(validate_presence_of(:task)) }
  # it { is_expected.to(validate_presence_of(:isComplete)) }
  attributes = [
    {task: :presence},
    {isComplete: :presence}
  ]
  include_examples("model_shared_spec", :to_do, attributes)
end


