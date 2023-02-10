def encrypt_text(input_string,offset)
al = ('a'..'z').to_a + ('a'..'z').to_a 
au = ('A'..'Z').to_a + ('A'..'Z').to_a
alpha_array = al.zip(au).flatten
output_array = input_string.chars.map!{|n| 
if alpha_array.include?(n)
    if 
        al.include?(n)
        if offset <0
        al[al.index(n) - offset%26]
        else al[al.index(n) + offset%26]
        end
    else 
        if offset <0
        au[au.index(n) - offset%26]
        else au[au.index(n) + offset%26]
        end
    end
else n
end
}
    print output_array.join
end
encrypt_text("Chirag ",100)

