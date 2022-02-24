###############

def reverser(str, &prc)
    prc.call(str.reverse)
end

###############

def word_changer(str, &prc)
    arr = str.split(" ")
    new_arr = []
    arr.each do |word|
        new_arr << prc.call(word)
    end
    new_arr.join(" ")
end

###############

def greater_proc_value(num, prc1, prc2)
    res1 = prc1.call(num)
    res2 = prc2.call(num)
    if res1 > res2
        res1
    else 
        res2
    end
end

###############

def and_selector(arr, prc1, prc2)
    new_arr = []
    arr.each do |ele|
        if prc1.call(ele) == true && prc2.call(ele) == true
            new_arr << ele
        end
    end
    new_arr
end

###############

def alternating_mapper(arr, prc1, prc2)
    new_arr = []
    arr.each do |ele|
        if arr.index(ele).even?
            new_arr << prc1.call(ele)
        else
            new_arr << prc2.call(ele)
        end
    end
    new_arr
end
