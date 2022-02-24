#################

def all_words_capitalized?(words)
    words.all? { |word| word.capitalize == word }
end

#################

def no_valid_url?(arr)
    arr.none? { |url| valid_url(url) }
end

def valid_url(string)
    string.end_with?(".com", ".net", ".io", ".org")
end

#################

def any_passing_students?(students)
    students.any? do |student|
        grades = student[:grades]
        avg = grades.sum / (grades.length * 1.0)
        avg >= 75
    end
end

    
