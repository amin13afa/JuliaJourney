# basics 
# println(versioninfo())
# println(Threads.nthreads())
# println(Threads.threadid())

# single threads 
# for j in 1:Threads.nthreads()
#     println("i: ", j, "   Thread ID: ", Threads.threadid())
# end

# multi-threaded
# Threads.@threads for j in 1:Threads.nthreads()
#     println("i: ", j, "   Thread ID: ", Threads.threadid())
# end
# println("Done")
