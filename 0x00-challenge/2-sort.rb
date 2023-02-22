###
#
#  Sort integer arguments (ascending) 
#
###
def quicksort(arr)
  return arr if arr.length <= 1

  pivot = arr.sample
  left, right = arr.partition { |el| el < pivot }

  return quicksort(left) + quicksort(right)
end

arr = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i
    
    arr.push(i_arg)
end

result = quicksort(arr)

puts result
