def add x, y
  x + y
end

def subtract x, y
  x - y
end

def sum x
  x.inject(0) { |sum, i| sum + i}
end

def multiply(*x)
  x.inject(:*)
end

def power x, y
  if y == 0
    1
  else
    x * power(x, y - 1)
  end
end

def factorial x
  if x == 0
    1
  else
    a = []

    while x != 0
      a << x
      x -= 1
    end

    a.inject(:*)
  end
end
