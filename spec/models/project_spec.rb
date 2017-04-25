require 'rails_helper'

RSpec.describe Project, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_length_of(:name).is_at_least(5) }
  end
end
