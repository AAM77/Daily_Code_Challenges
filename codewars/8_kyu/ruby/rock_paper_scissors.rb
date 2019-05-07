def rps(p1, p2)

  if p1 == 'rock' && p2 == 'scissors' || p1 == 'scissors' && p2 == 'paper' || p1 == 'paper' && p2 == 'rock'
      'Player 1 won!'
  elsif p2 == 'rock' && p1 == 'scissors' || p2 == 'scissors' && p1 == 'paper' || p2 == 'paper' && p1 == 'rock'
      'Player 2 won!'
  else
      'Draw!'
  end

end
