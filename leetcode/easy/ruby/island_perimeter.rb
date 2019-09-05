

# @param {Integer[][]} grid
# @return {Integer}


# PSEUDOCODE

#
# iterate through master_array with index (i)
    # perimeter = 0
    # iterate through each inner array (j)
        # surrounding_ones = 0
        # when it finds a 1
            # if 1 in array[j-1]
                # surrounding_ones += 1

            # if 1 in array[j+1]
                # surrounding_ones += 1

            # if 1 in master_array[j-1][i]
                # surrounding_ones += 1

            # if 1 in master_array[j+1][i]
                # surrounding_ones += 1

            # if surrounding_ones >= 1
                # if surrounding_ones == 1
                    # perimeter += 3
                # elsif surrounding_ones == 2
                    # perimeter += 2
                # elsif surrounding_ones == 3
                    # perimeter += 1
                # end
    # end
# end

# perimeter

# ATTEMPT 1

def island_perimeter(grid)

    perimeter = 0

    grid.each.with_index do |a, i|
        a.each.with_index do |n, j|
            if n == 1
                surrounding_ones = 0

                if a[j-1] == 1 && j != 0
                    surrounding_ones += 1
                end

                if a[j+1] == 1
                    surrounding_ones += 1
                end

                if (i != 0) && grid[i-1][j] == 1
                    surrounding_ones += 1
                end

                if (i != grid.length - 1) && (grid[i+1][j] == 1)
                    surrounding_ones += 1
                end


                if surrounding_ones == 0
                    perimeter += 4
                elsif surrounding_ones == 1
                    perimeter += 3
                elsif surrounding_ones == 2
                    perimeter += 2
                elsif surrounding_ones == 3
                    perimeter += 1
                elsif surrounding_ones == 4
                    perimeter += 0
                end
            end
        end
    end

    perimeter

end
