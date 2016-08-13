require 'spec_helper'

describe Namesgenerator do
  describe 'VERSION' do
    it 'has a version number' do
      expect(Namesgenerator::VERSION).not_to be nil
    end
  end

  describe '.random_name' do
    subject { Namesgenerator.random_name }

    it 'returns a name from notable scientists and hackers' do
      left, right = subject.split('_')
      expect(Namesgenerator::LEFT).to include(left)
      expect(Namesgenerator::RIGHT).to include(right)
    end
  end
end
