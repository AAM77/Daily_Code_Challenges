# Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
#
# Symbol       Value
# I             1
# V             5
# X             10
# L             50
# C             100
# D             500
# M             1000
# For example, two is written as II in Roman numeral, just two one's added together. Twelve is written as, XII, which is simply X + II. The number twenty seven is written as XXVII, which is XX + V + II.
#
# Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:
#
# I can be placed before V (5) and X (10) to make 4 and 9.
# X can be placed before L (50) and C (100) to make 40 and 90.
# C can be placed before D (500) and M (1000) to make 400 and 900.
# Given a roman numeral, convert it to an integer. Input is guaranteed to be within the range from 1 to 3999.
#
# Example 1:
#
# Input: "III"
# Output: 3
# Example 2:
#
# Input: "IV"
# Output: 4
# Example 3:
#
# Input: "IX"
# Output: 9
# Example 4:
#
# Input: "LVIII"
# Output: 58
# Explanation: L = 50, V= 5, III = 3.
# Example 5:
#
# Input: "MCMXCIV"
# Output: 1994
# Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.



# RULES
# If I before V or X
    # value = (V or X) - I

# else if X before L or C
    # value = (L or C) - X

# else if C before D or M
    # value = (D or M) - C
# end

# PSEUDOCODE
    # objective:
        # convert the given roman numeral string to an integer

# STEPS
    # create a hash with the roman numerals as keys and their values
    # initiate a final_value variable with a value of 0
    # initiate a split_str variable with (given string).split
    # iterate through split string with index
        # If I before V or X
            # value = value + ((V or X) - I)

        # else if X before L or C
            # value = value + ((L or C) - X)

        # else if C before D or M
            # value = value + ((D or M) - C)

        # else
            # value = value + roman_numerals[roman_numeral]
        # end


# Attempt 1
def roman_to_int(s)
    given_numerals = s.split('')
    roman_numerals = {
                        :I => 1,
                        :V => 5,
                        :X => 10,
                        :L => 50,
                        :C => 100,
                        :D => 500,
                        :M => 1000
                    }

    final_value = 0
    given_numerals.each.with_index do |rn, i|
        if (rn == 'V' || rn == 'X') && i !=0
            if given_numerals[i-1] == 'I'
                final_value = final_value + roman_numerals[rn.to_sym] - 2
            else
                final_value = final_value + roman_numerals[rn.to_sym]
            end
        elsif (rn == 'L' || rn == 'C') && i != 0
            if given_numerals[i-1] == 'X'
                final_value = final_value + roman_numerals[rn.to_sym] - 20
            else
                final_value = final_value + roman_numerals[rn.to_sym]
            end

        elsif (rn == 'D' || rn == 'M') && i != 0
            if given_numerals[i-1] == 'C'
                final_value = final_value + roman_numerals[rn.to_sym]-200
            else
                final_value = final_value + roman_numerals[rn.to_sym]
            end
        else
            final_value = final_value + roman_numerals[rn.to_sym]
        end
        puts final_value
    end
    final_value
end
