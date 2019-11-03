def add(x, y)
    return x + y
end

def subtract(x, y)
    return x - y
end

def sum(array)
    total = 0
    array.each do |n|
        total += n
    end

    return total
end

def multiply(*args)
    product = 1
    args.each do |arg|
        product *= arg
    end

    return product
end

def power(x, e)
    product = 1
    e.times do
        product *= x
    end 

    return product
end

def factorial(n)
    product = 1
    if n == 0 or n == 1
        return product
    else
        for i in 1..n
            product *= i
        end
    end

    return product
end