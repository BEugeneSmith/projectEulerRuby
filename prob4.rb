require_relative 'utils'

def isPalindrome(n)
  n_string = n.to_s
  n_string==n_string.reverse ? true : false
end

l = []

x = (Array (1..999)).reverse
x.map { |i|
  x.map { |j|
    n = i*j
    if isPalindrome(n)==true
      l << n
    end
  }
}

puts l.max
