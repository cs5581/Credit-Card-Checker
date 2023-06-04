

credit_card = ARGV[0]
a = []
card_type = 'Unknown'

puts "Credit Card: "
puts credit_card

chars = credit_card.split('')
chars.each{ |c|
    a.push(c)
}



    if a.length().equal?(15)
        puts "1st"
        if a[0].to_i.equal?(3)
            puts "sec"
            if a[1].to_i.equal?(4) || a[1].to_i.equal?(7)
                puts "third"
                card_type = "Amex"
            end 
        end
    end


    if a.length().equal?(16)
            if a[0].to_i.equal?(6)
                if a[1].to_i.equal?(0)
                    if a[2].to_i.equal?(1) and a[3].to_i.equal?(1)
                        card_type = "Discover"
                    end
                end
            end
    
            if a[0].to_i.equal?(5)
                if a[1].to_i.equal?(1) || a[1].to_i.equal?(2) || a[1].to_i.equal?(3) || a[1].to_i.equal?(4) || a[1].to_i.equal?(5)
                    card_type = "Mastercard"
                end
            end
     end
        
    if a.length.equal?(13) || a.length.equal?(16)
            if a[0].to_i.equal?(4)
                card_type = "Visa"
            end
    end

 

   
    puts "Cards's Type: "
    puts card_type


r_a = a.reverse()
(0...r_a.length).each do |i|
    r_a[i] = r_a[i].to_i
end


(1...r_a.length).step(2).each do |index|
    r_a[index] = r_a[index] *  2
    #puts r_a[index]
  end

total_sum = ""

(0...r_a.length).each do |i|
    total_sum = total_sum + r_a[i].to_s
end


b = []
new_chars = total_sum.split('')

new_chars.each{|e|
    b.push(e.to_i)
}

new_sum = 0
(0...b.length).each do |z|
    new_sum = new_sum + b[z]
end

puts "The total sum: "
puts new_sum


if new_sum%10 == 0
    puts "Card is valid"
else
    puts "Card is is not valid"
end