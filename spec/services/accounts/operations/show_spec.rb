# frozen_string_literal: true

RSpec.describe Accounts::Operations::Show, type: :operation do
  subject { operation.call(id: id) }
  
  let(:id) { 1 }

  let(:operation) { described_class.new(repo: repo) }

  let(:repo) { instance_double('Accounts::Repositories::Account', find: entity) }

  context 'when account exists in database' do
    let(:entity) { Factory.structs[:test] }

    it { expect(subject).to be_success }
    it { expect(subject.value!).to eq(entity) }
  end

  context 'when employee does not exist in database' do
    let(:entity) { nil }

    it { expect(subject).to be_success }
  end

  context 'with real dependencies' do
    let(:operation) { described_class.new }

    let(:id) { Factory[:test].id }

    it { expect(subject).to be_success }
  end
end
