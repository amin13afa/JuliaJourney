# function is_it_prime(n)
#     s = 0
#     for j in 2:n-1
#         if n%j == 0
#             s+=1
#         end
#     end
#     return s == 0 ? println("Prime") : println("Not Prime")
# end
# m = parse(Int64, readline())
# println(is_it_prime(m))

# #########################################
# function is_it_prime_2(n)
#     s = 0
#     for j in 2:√n
#         if n % j == 0
#             s += 1
#         end
#     end
#     s == 0 ? println("Prime") : println("Not Prime")
# end
# # m = parse(Int64,readline())
# println(is_it_prime_2(m))

# println(@time is_it_prime(m))
# println(@time is_it_prime_2(m))
###############################################
function my_sieve(n)
    check = fill(true,n)
    check[1] = false 
    for j in 2:n
        check[j] || continue 
        for k in 2:div(n,2)/2
            check[j*k] = false
        end
    end
    # findall(check)
end
println(my_sieve(10))

    
end