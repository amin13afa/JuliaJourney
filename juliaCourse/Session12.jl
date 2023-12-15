using Plots
x1 = 0:0.5:2π
y1 = sin.(x1)
plot(x1,y1)


x2 = 1:10
y2 = rand(10,3) # به ۳ توجه کنید
plot(x2,y2)

plot!(x2, sin.(x2 / 4))


x = 0:0.1:2π
y = hcat(sin.(x),cos.(x))
p1 = plot(x,y)

plot(p1, x, sinc.(x))

f1(x) = 1/(1+x)
f2(x) = 1-x
xs = 0:0.01:1
ys = hcat(f1.(xs),f2.(xs))
plt1 = plot(xs,ys)

palette(:viridis,100)

fx(t) = cos(3t)
fy(t) = sin(2t)
xs1 = fx.(range(0,π,100))
xs2 = fx.(range(π,2pi,100))
ys1 = fy.(range(0,π,100))
ys2 = fy.(range(π,2π,100))
lw1 = range(1,50,100)
lw2 = range(50,1,100)
cp1 = palette(:viridis, range(1,50,100))
cp2 = palette(:viridis, range(50,1,100))
p1 = plot(xs1,ys1,linewidth = lw1, color = cp1)
plt2 = plot!(p1,xs2,ys2,linewidth = lw2, color = reverse(cp2))


fx(t; a=4.23, b=2.35) = (a + b) * cos(t) - b * cos((a / b + 1) * t)
fy(t; a=4.23, b=2.35) = (a + b) * sin(t) - b * sin((a / b + 1) * t)

plt3 = plot(t -> fx(t),t -> fy(t), -15.0,20.0, 500;
    linewidth = 2,
    legend = false,
    axis = nothing,
    border = :none)

    count(xequals4, rand(1:4,10))

    function xequals4(x)
        return x == 4
    end