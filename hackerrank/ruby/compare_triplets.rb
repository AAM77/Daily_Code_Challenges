# https://www.hackerrank.com/challenges/compare-the-triplets/problem

#PSEUDOCODE
# Objective
	# return an array of two intergers:
# array[0] = alice’s score
# array[1] = bob’s score

# STEPS
# given:
	    # compareTriplets(alice’s array, bob’s array)
	# create a variable to handle alice’s score
	# create a variable to handle bob’s score

	# iterate through alice’s ratings
		# for each index, compare to bob’s rating
		# if alice > bob : alice score += 1
		# if alice < bob: bob score += 1
	# return [alice, bob]


# ATTEMPT 1
  def compareTriplets(a, b)
    alice_score = 0
    bob_score = 0

    a.each.with_index do |rating, i|
        if a[i] > b[i]
            alice_score += 1
        elsif a[i] < b[i]
            bob_score += 1
        end
    end

    [alice_score, bob_score]
end
