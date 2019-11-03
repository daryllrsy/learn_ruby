SMALLWORDS = {:the => "the", :and => "and", :over => "over"}

def titleize(s)
    if s.split.length == 1
        return s.sub(s[0], s[0].upcase)
    end

    ss = s.split(' ')
    fs = ss[0]
    ns = [fs.sub(fs[0], fs[0].upcase)]

    for t in ss[1..] do
        if t == 'i' or (t.length > 2 and not(SMALLWORDS.has_value?(t)))
            ns.push(t.sub(t[0], t[0].upcase))
        else
            ns.push(t)
        end
    end

    return ns.join(' ')
end

class Book
    def title=(title)
        @title = titleize(title)
    end

    def title
        @title
    end
end