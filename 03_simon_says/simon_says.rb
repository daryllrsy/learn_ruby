def echo(s)
    return s
end

def shout(s)
    return s.upcase
end

def repeat(s, n=2)
    new_s = s

    (n-1).times do
        new_s += " #{s}"
    end

    return new_s
end

def start_of_word(s, i)
    return s[0..i-1]    
end

def first_word(s)
    return s.split[0]
end

SMALLWORDS = {:the => "the", :and => "and", :over => "over"}

def titleize(s)
    if s.split.length == 1
        return s.sub(s[0], s[0].upcase)
    end

    ss = s.split(' ')
    fs = ss[0]
    ns = [fs.sub(fs[0], fs[0].upcase)]

    for t in ss[1..] do
        if t.length > 4 or not(SMALLWORDS.has_value?(t))
            ns.push(t.sub(t[0], t[0].upcase))
        else
            ns.push(t)
        end
    end

    return ns.join(' ')
end