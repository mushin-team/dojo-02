require 'spec_helper'
require 'year_verifier'

RSpec.describe YearVerifier do
  subject(:checker) { YearVerifier.new }

  describe '#bissext?' do
    context 'when year is bissext' do
      it 'should 1600 return true' do
        expect(checker.bissext?(1600)).to be_truthy
      end

      it 'should 1944 return true' do
        expect(checker.bissext?(1944)).to be_truthy
      end

      it 'should 2008 return true' do
        expect(checker.bissext?(2008)).to be_truthy
      end

      it 'should 1732 return true' do
        expect(checker.bissext?(1732)).to be_truthy
      end
    end

    context 'when year is not bissext' do
      it 'should 1742 return false' do
        expect(checker.bissext?(1742)).to be_falsey
      end

      it 'should 1700 return false' do
        expect(checker.bissext?(1700)).to be_falsey
      end

      it 'should -988 return false' do
        expect(checker.bissext?(-988)).to be_falsey
      end

      it 'should karla return false' do
        expect(checker.bissext?('karla')).to be_falsey
      end
    end
  end
end