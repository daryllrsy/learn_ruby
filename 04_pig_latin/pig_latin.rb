VOWELS = "aeiou"
CONSONANTS = "bcdfghjklmnpqrstvwxyz"

def get_postfix(word)
    post = ''
    for i in 0..word.length
        if CONSONANTS.include?(word[i])
            post += word[i]
        else
            if word[i-1..i] == "qu"
                post += word[i]
            else
                break
            end
        end
    end

    return post
end

def translate_one(word)
    if VOWELS.include?(word[0])
        return word + "ay"
    else
        postfix = get_postfix(word) + "ay"
        start = postfix.length - 2
        return word[start..] + postfix
    end
end

def translate(string)
    string_array = string.split
    
    if string_array.length == 1
        return translate_one(string)
    else
        new_string = []
        string_array.each do |s|
            new_string.push(translate_one(s))
        end

        return new_string.join(' ')
    end
end