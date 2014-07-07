def add(a, b)
	return a + b
end

def subtract(a, b)
	return a - b
end

def sum(n)
	return n.inject(0, :+)
end

def multiply(n)
	return n.inject(:*)
end

def power(a, b)
	return a**b
end

def factorial(n)
  if n == 0
    return 1
  else
    return (1..n).inject(:*)
  end
end