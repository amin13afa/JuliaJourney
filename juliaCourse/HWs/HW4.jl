# Q1
function check_prime(n)
    s = 0
    for j in 2:√n
        if n % j == 0
            s += 1
        end
    end
    (s == 0) ? (return true) : (return false)
end
function find_prime_after_stID(stID)
    for j in stID:stID+1000
        if check_prime(j) 
            println(j)
            break
        
        end
    end
end

# Q2
using Plots
function base_5_bar(n)
    s = string(n,base=5)
    Z = zeros(Int32,base);
    for j in 0:base-1
        Z[j+1] = count(string(j),s)
    end
    x = eachindex(Z) .- 1
    return bar(x,Z)
end

# Q4 
function f(n)
    iseven(n) ? (return n/2) : (return 3n+1)
end
# Q5
function g(n)
    s = 0
    while n != 1
        n = f(n)
        s += 1
    end
    println("We should use $s times f function to get 1")
end


		
		
