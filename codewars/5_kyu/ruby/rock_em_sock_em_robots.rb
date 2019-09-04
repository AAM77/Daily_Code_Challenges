# https://www.codewars.com/kata/80-s-kids-number-6-rock-em-sock-em-robots/train/ruby


# PSEUDOCODE
  # Objective: determine which robot wins


  # bot1 = robot1.clone
  # bot2 = robot2.clone

  # tactics_index = 0

  # while (bot1.health > 0 AND bot2.health > 0)
      # tactics_index = 0 if tactics_index > bot1.tactics.length && tactics_index > bot2.tactics.length
      # if bot2.speed > bot1.speed
          # bot2 attacks first
          # subtract bot1's health by the value that bot2's first tactic produces
          # bot1.health = bot1.health - tactics[bot2['tactics'][tactics_index]]
      # else
          # bot1 attacks first
          # subtract bot2's health by the value that bot1's first tactic produces
          # bot2.health = bot2.health - tactics[bot1['tactics'][tactics_index]]

  # winner = bot1.health <= 0 ? bot2['name'] : bot1['name']
  # "#{winner} has won the fight."


def fight(robot1, robot2, tactics)
  bot1 = robot1.clone
  bot2 = robot2.clone

  tactics_index = 0

  while (bot1['health'] > 0 && bot2['health'] > 0)
    tactics_index = 0 if tactics_index > bot1['tactics'].length && tactics_index > bot2['tactics'].length
    if bot2['speed'] > bot1['speed']
      bot1['health'] = bot1['health'] - tactics[bot2['tactics'][tactics_index]]
    else
      bot2['health'] = bot2['health'] - tactics[bot1['tactics'][tactics_index]]
    end
  end

  winner = bot1['health'] <= 0 ? bot2['name'] : bot1['name']

  "#{winner} has won the fight."

end









# ATTEMPT 2
# PSEUDOCODE
  # Objective: determine which robot wins


  # bot1 = robot1.clone
  # bot2 = robot2.clone

  # tactics_index = 0

  # while (bot1.health > 0 AND bot2.health > 0)
      # tactics_index = 0 if tactics_index > bot1.tactics.length && tactics_index > bot2.tactics.length
      # if bot2.speed > bot1.speed
          # bot2 attacks first
          # subtract bot1's health by the value that bot2's first tactic produces
          # bot1.health = bot1.health - tactics[bot2['tactics'][tactics_index]]
      # else
          # bot1 attacks first
          # subtract bot2's health by the value that bot1's first tactic produces
          # bot2.health = bot2.health - tactics[bot1['tactics'][tactics_index]]

  # winner = bot1.health <= 0 ? bot2['name'] : bot1['name']
  # "#{winner} has won the fight."


  # PSEUDOCODE
    # Objective: determine which robot wins


    # bot1 = robot1.clone
    # bot2 = robot2.clone

    # tactics_index = 0

    # while (bot1.health > 0 AND bot2.health > 0)
        # tactics_index = 0 if tactics_index > bot1.tactics.length && tactics_index > bot2.tactics.length
        # if bot2.speed > bot1.speed
            # bot2 attacks first
            # subtract bot1's health by the value that bot2's first tactic produces
            # bot1.health = bot1.health - tactics[bot2['tactics'][tactics_index]]
        # else
            # bot1 attacks first
            # subtract bot2's health by the value that bot1's first tactic produces
            # bot2.health = bot2.health - tactics[bot1['tactics'][tactics_index]]

    # winner = bot1.health <= 0 ? bot2['name'] : bot1['name']
    # "#{winner} has won the fight."


  def fight(robot1, robot2, tactics)

    puts "I AM AT THE BEGINNING"
    puts tactics
    puts robot1
    puts '.'
    puts robot2

    if robot2['tactics'] == robot1['tactics'] && robot2['health'] == robot1['health']
      if (robot2['tactics'].empty? && robot1['tactics'].empty?)
        "The fight was a draw."
      elsif robot2['speed'] == robot1['speed']
        if tactics[robot1['tactics'][0]] >= robot2['health']
          "#{robot1['name']} has won the fight."
        else
          puts "I AM HERE"
          "The fight was a draw."
        end
      else
        robot2['speed'] > robot1['speed'] ? winner = robot2['name'] : winner = robot1['name']
        "#{winner} has won the fight."
      end

    else

      # create copies of bots
      bot1 = robot1.clone
      bot2 = robot2.clone

      # set current & other bot
      current_bot = nil
      other_bot = nil

      if bot2['speed'] > bot1['speed']
        current_bot = bot2
        other_bot = bot1
      else
        current_bot = bot1
        other_bot = bot2
      end

      while (bot1['tactics'].length > 0 || bot2['tactics'].length > 0) && (bot1['health'] > 0 && bot2['health'] > 0)

        if current_bot['tactics'].length > 0
          other_bot['health'] = other_bot['health'] - tactics[current_bot['tactics'].shift]
        end

        if current_bot['name'] == bot2['name']
          current_bot = bot1
          other_bot = bot2
        else
          current_bot = bot2
          other_bot = bot1
        end

      end

      puts robot1
      puts '.'
      puts robot2

      winner = nil

      if bot1['tactics'].empty? && bot2['tactics'].empty?
        if bot1['health'] == bot2['health']
          "The fight was a draw."
        else
          bot1['health'] > bot2['health'] ? winner = bot1['name'] : winner = bot2['name']
          "#{winner} has won the fight."
        end

      else
        bot1['health'] > bot2['health'] ? winner = bot1['name'] : winner = bot2['name']
          "#{winner} has won the fight."
      end

    end
  end


  ## ATTEMPT 3 (WORKING)

  # PSEUDOCODE
  # Objective: determine which robot wins


  # bot1 = robot1.clone
  # bot2 = robot2.clone

  # tactics_index = 0

  # while (bot1.health > 0 AND bot2.health > 0)
      # tactics_index = 0 if tactics_index > bot1.tactics.length && tactics_index > bot2.tactics.length
      # if bot2.speed > bot1.speed
          # bot2 attacks first
          # subtract bot1's health by the value that bot2's first tactic produces
          # bot1.health = bot1.health - tactics[bot2['tactics'][tactics_index]]
      # else
          # bot1 attacks first
          # subtract bot2's health by the value that bot1's first tactic produces
          # bot2.health = bot2.health - tactics[bot1['tactics'][tactics_index]]

  # winner = bot1.health <= 0 ? bot2['name'] : bot1['name']
  # "#{winner} has won the fight."


def fight(robot1, robot2, tactics)

  puts "I AM AT THE BEGINNING"
  puts tactics
  puts robot1
  puts '.'
  puts robot2

  if robot2['tactics'] == robot1['tactics'] && robot2['health'] == robot1['health']
    if (robot2['tactics'].empty? && robot1['tactics'].empty?)
      "The fight was a draw."
    elsif robot2['speed'] == robot1['speed']
      if tactics[robot1['tactics'][0]] >= robot2['health']
        "#{robot1['name']} has won the fight."
      else
        puts "I AM HERE"
        "The fight was a draw."
      end
    else
      robot2['speed'] > robot1['speed'] ? winner = robot2['name'] : winner = robot1['name']
      "#{winner} has won the fight."
    end
  else

    # create copies of bots
    bot1 = robot1.clone
    bot2 = robot2.clone

    # set current & other bot
    current_bot = nil
    other_bot = nil

    if bot2['speed'] > bot1['speed']
      current_bot = bot2
      other_bot = bot1
    else
      current_bot = bot1
      other_bot = bot2
    end

    while (bot1['health'] > 0 && bot2['health'] > 0) && (bot1['tactics'].length > 0 || bot2['tactics'].length > 0)

      if current_bot['tactics'].length > 0
        other_bot['health'] = other_bot['health'] - tactics[current_bot['tactics'].shift]
      end

      if current_bot['name'] == bot2['name']
        current_bot = bot1
        other_bot = bot2
      else
        current_bot = bot2
        other_bot = bot1
      end

    end


    winner = nil


    if bot1['health'] == bot2['health']
      "The fight was a draw."
    else
      bot1['health'] > bot2['health'] ? winner = bot1['name'] : winner = bot2['name']
      "#{winner} has won the fight."
    end

  end
end
