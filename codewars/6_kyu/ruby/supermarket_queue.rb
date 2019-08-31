# https://www.codewars.com/kata/the-supermarket-queue/train/ruby

# PSEUDOCODE

    # if there are no customers
        # return 0
    # else if the number of customers is less than or equal to the number of tills
        # return the max value
    # else if there is only one til
        # sum the values in the array
    # else
        # create an empty hash for tills
        # initialize a total_time variable with a value of 0
        # create a register equal to n and place it in the key
        # assign the next successive customer to the til (by using .shift ?)

        # while there are still customers
            # find the lowest time and add it to the total time
            # iterate through the hash (tills)
            # subtract the lowest time from each till
            # if the till's time is 0 and there are still customers, assign it the next customer (w/ shift ?)

        # once done, add the highest value to the total time & return the total time


# ATTEMPT 1

# An Ugly & Highly Inefficient Solution that I need to refactor

def queue_time(customers, n)

  if customers.length == 0
    0
  elsif customers.length <= n
    customers.max
  elsif  n == 1
    customers.inject(&:+)
  else
    tills = {}
    total_time = 0

    (1..n).each { |num| tills["register#{num}".to_sym] = customers.shift }

    until customers.empty?
      lowest_time = tills.values.min
      total_time += lowest_time

      tills.each do |k, time|
        tills[k] = tills[k] - lowest_time
        tills[k] = customers.shift unless customers.empty? && tills[k] != 0
      end
    end

    total_time += tills.values.max
  end

end

# ATTEMPT 2

# create a new array with an n number of elements and assign them all a value of 0
# iterate through customers
  # for each customer, find the lowest value in the current array and add the customer's time to it
# return the max value of the customer

tills = new Array(n,0)
customers.each { |customer| arr[arr.index(arr.min)] += customer }
tills.max
