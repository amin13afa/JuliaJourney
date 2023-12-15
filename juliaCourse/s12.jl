using Plots 
Plots.theme(:dark)
x1 = 0.0:0.5:2π
y1 = sin.(x1)
plot(x1,y1)
###########
x2 = 1:10
y2 = rand(10,3)
plot(x2,y2)
plot!(x2,sin.(x2/4))

x = 0:0.1:2π
y = hcat(sin.(x),cos.(x))
p1 = plot(x,y)
plot!(p1,x,sinc.(x)) 