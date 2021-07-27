RSpec.describe Task, type: :model do
  context 'with associations' do
    it { is_expected.to belong_to(:project) }
    it { is_expected.to have_many(:comments).dependent(:destroy) }
  end
end
