###
#
#  Sort integer arguments (ascending) 
#
###

result = []

ARGV.each do |arg|
    # Skip if not an integer
    next unless arg.match?(/^-?\d+$/)

    # Convert to an integer
    i_arg = arg.to_i

    # Find the correct position to insert
    index = 0
    while index < result.size && result[index] < i_arg
        index += 1
    end

    # Insert the integer at the correct position
    result.insert(index, i_arg)
end

puts result
