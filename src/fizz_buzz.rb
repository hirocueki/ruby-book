def fizz_buzz(n)
    if n % 15 == 0
        'Fizz Buzz'
    elsif n % 3 ==0
        'Fizz'
    elsif n % 5 ==0
        'Buzz'
    else
        n.to_s
    end
end


for num in 1..16 do
    p fizz_buzz(num)
end
# p fizz_buzz(2)
# p fizz_buzz(3)
# p fizz_buzz(4)
# p fizz_buzz(5)