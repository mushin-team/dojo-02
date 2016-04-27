require 'spec_helper'
require 'jokenpo'

RSpec.describe Jokenpo do
	subject(:jokenpo) { Jokenpo.new }

	it 'when receive rock and rock return tie' do
		expect(jokenpo.judge('rock','rock')).to eq 'tie'
	end

	it 'when receive rock and paper return paper' do
		expect(jokenpo.judge('rock', 'paper')).to eq 'paper'
	end

	it 'when receive paper and rock return paper' do
		expect(jokenpo.judge('paper', 'rock')).to eq 'paper'
	end

	it 'when receive rock and scissors return rock' do
		expect(jokenpo.judge('rock', 'scissors')).to eq 'rock'
	end

	it 'when receive scissors and rock return rock' do
		expect(jokenpo.judge('scissors', 'rock')).to eq 'rock'
	end

	it 'when receives scissors and paper return scissors' do
		expect(jokenpo.judge('scissors', 'paper')).to eq 'scissors'
	end

	it 'when receives paper and scissors return scissors' do
		expect(jokenpo.judge('paper', 'scissors')).to eq 'scissors'
	end
end
