require 'spec_helper'

describe Caracal::Core::Text do
  subject { Caracal::Document.new }

  #-------------------------------------------------------------
  # Configuration
  #-------------------------------------------------------------

  describe 'configuration tests' do

    # accessors
    describe 'accessors' do
      it { expect(subject.header_content).to be_nil }
    end
  end

  #-------------------------------------------------------------
  # Public Methods
  #-------------------------------------------------------------

  describe 'public method tests' do

    describe '.header' do
      before { subject.header }

      it { expect(subject.header_content).not_to be_nil }
      it { expect(subject.header_content).to be_a(Caracal::Core::Models::HeaderModel) }
    end
  end
end