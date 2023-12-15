# Q1 
name = "Amin"
last_name = "Ahadi"
stu_number = 4024034041
# Q2
for j in 1:4
    println(stu_number % 3^j)
end

# Q3 
println(name,"\t",last_name,"\t",√stu_number)

# Q4
function my_irst_func(student_number)
    prime_20 = [2,3,5,7,11,13,17,19]
    s = 0
    for j in prime_20
        if student_number % j == 0
            s += 1
        end
    end 
    s >= length(prime_20)/2 ? println(BigInt(student_number)^4) : println(BigInt(student_number)^5);
end
my_irst_func(stu_number)
