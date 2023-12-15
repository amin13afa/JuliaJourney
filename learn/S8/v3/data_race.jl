#################################
## Data-race example 
#################################
n = 1_000_000_000
myvector = collect(1:n);
# single thread 

# single thread 
function multi_sum1(myvector)
    temp = 0;
    for j in eachindex(myvector)
        temp += myvector[j]
    end
    return temp
end

# multi-tread with data-race 
function multi_sum2(myvector)
    temp = 0;
    Threads.@threads for j in eachindex(myvector)
        temp += myvector[j]
    end
    return temp
end



# multi-threaded without data-race 

function multi_sum3(myvector)
    temp = zeros(Int, Threads.nthreads())
    Threads.@threads for j in eachindex(myvector)
        temp[Threads.threadid()] += myvector[j]
    end
    # for j in eachindex(temp)
    #     println("j = ", "   ", temp[j])  
    # end 
    return sum(temp)
end
# println("sum")
# println(@time sum(myvector))
println("single-threaded")
println(@time multi_sum1(myvector))
println("multi-threaded")
println(@time multi_sum3(myvector))