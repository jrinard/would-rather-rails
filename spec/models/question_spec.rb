require 'rails_helper'

# unit testing spec
describe Question do
  it { should validate_presence_of :option_one }
end
