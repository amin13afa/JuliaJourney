using Plots 
theme(:dark)
p1 = plot(x -> sin(x), 
    label = "Sin(x)",
    xlim = (0,2π),
    xticks = ((0:π/2:2π),["0","π/2","π","3π/2","2π"]),
    ylims=(-1.1,1.1), 
    yticks=((-1.1:0.5:1.1),["-1.0","-0.5","0.0","0.5","1.0"]),
    color = :magenta)

p2 = plot(x -> cos(x), 
    label = "Cos(x)",
    xlim = (0,2π),
    xticks = ((0:π/2:2π),["0","π/2","π","3π/2","2π"]),
    ylims=(-1.1,1.1), 
    yticks=((-1.1:0.5:1.1),["-1.0","-0.5","0.0","0.5","1.0"]),
    color = :lightseagreen)

# plot(p1, p2, layout=(2,1))
plot(p1)
annotate!(π/2,1.05,("Local Max",8,:gold))
scatter!([π/2],[1.0],color=:red, label="Extrema")

annotate!(3π/2,-1.05,("Local Min",8,:gold))
scatter!([3π/2],[-1.0],color=:royalblue, label="Extrema")


plot(x -> log2(x), label = "Log₂(x)", color = :lightseagreen, dpi=350)

