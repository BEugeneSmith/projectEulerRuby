require_relative 'utils'

total = 0
for i in (1..999)
  if isDivisibleBy(i,3) || isDivisibleBy(i,5)
    total += i
  end
end

puts total.to_s
