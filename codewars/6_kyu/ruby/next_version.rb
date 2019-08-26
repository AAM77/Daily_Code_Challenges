# https://www.codewars.com/kata/next-version/train/ruby

# PSEUDOCODE
  # increment the version to the next number
#
# STEPS
  # split the string by '.'
  # reverse the array
  # iterate through the reversed array with index

    # if the index is 0
        # increment the value by 1
        # if the incremented value is greater than 9
          # turn to '0'
          # increment the next index by 1
        ###
    # else
      # if the value is '10' && is not the last index
        # turn to '0' and increment the the next index by 1

      ###
  # reverse the array
  # join with '.'


#############
# ATTEMPT 1 #
#############

def nextVersion(version)

  current_version = version.split('.').reverse;
  new_version = [];

  if version.split('.').length == 1
    (version.to_i + 1).to_s
  else
    current_version.map.with_index do |n,i|
      if i == 0
        new_n = (n.to_i + 1).to_s
        if new_n == '10'
          new_version.push('0')
          current_version[i+1] = (current_version[i+1].to_i + 1).to_s
        else
          new_version.push(new_n)
        end
      else
        if n == '10'
          if i == (current_version.length - 1)
            new_version.push(n)
          else
            new_version.push('0')
            current_version[i+1] = (current_version[i+1].to_i + 1).to_s
          end
        else
          new_version.push(n)
        end
      end
    end
    new_version.reverse.join('.')
  end

end

##############
# Refactor 1 #
##############

def nextVersion(version)

  current_version = version.split('.').reverse;

  if version.split('.').length == 1
    (version.to_i + 1).to_s
  else
    current_version.map.with_index do |n,i|
      if i == 0
        current_version[i] = (n.to_i + 1).to_s
        if current_version[i] == '10'
          current_version[i] = '0'
          current_version[i+1] = (current_version[i+1].to_i + 1).to_s
        end
      else
        if n == '10'
          unless i == (current_version.length - 1)
            current_version[i] = '0'
            current_version[i+1] = (current_version[i+1].to_i + 1).to_s
          end # unless
        end # inner if
      end # outer if
    end # each
    current_version.reverse.join('.')
  end # outermost if
end
