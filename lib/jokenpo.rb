require 'ostruct'

class Jokenpo
	VICTORY_TABLE = {
		'paper' 	 => OpenStruct.new(won?: 'rock'),
		'scissors' => OpenStruct.new(won?: 'paper'),
		'rock' 		 => OpenStruct.new(won?: 'scissors')
	}

	def judge(player1, player2)
		return 'tie' if player1 == player2
		return player1 if VICTORY_TABLE[player1].won? == player2
		return player2
	end
end