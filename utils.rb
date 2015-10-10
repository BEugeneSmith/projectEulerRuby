include Math

# determines whether n is even
def isEven(n)
  n%2==0 ? true : false
end

# determines whether n is prime
def isPrime(n)
  for i in (2..Math.sqrt(n))
    if n % i == 0
      return false
    end
  end
  return true
end

# determines if a number is n is divisble by m
def isDivisibleBy(n,m)
  n % m == 0 ? true : false
end

# generates Fibonacci sequence
def fibonacciGenerator(n,lim)
  seq = [1,2]
  (0..(n-3)).map{ |i|
    nextSeq = seq[i] + seq[i+1]
    seq << nextSeq
  }
  return seq
end

# extracts prime factors
def extractFactors(n,prime=false)
  factors = (2..(Math.sqrt(n))).select { |i| isDivisibleBy(n,i) }
  if prime == true
    factors = factors.select { |f| isPrime(f)}
  end

  return factors
end

# determines if n is palindromic
def isPalindrome(n)
  n_string = n.to_s
  n_string==n_string.reverse ? true : false
end
