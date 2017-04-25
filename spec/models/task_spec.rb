require 'rails_helper'

RSpec.describe Task, type: :model do
  context 'references' do
    it {is_expected.to belong_to(:project)}
  end

  context 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:project) }
    it { is_expected.to validate_length_of(:name).is_at_least(5) }
    it { is_expected.to define_enum_for(:status).with([:on_hold, :in_progress, :completed]) }
  end
end
