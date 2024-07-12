using Luxor
using NetworkLayout
using Graphs
using StableRNGs
using Statistics
using CSV, DataFrames

bus = CSV.read(download("https://raw.githubusercontent.com/GridMod/RTS-GMLC/master/RTS_Data/SourceData/bus.csv"), DataFrame)
branch = CSV.read(download("https://raw.githubusercontent.com/GridMod/RTS-GMLC/master/RTS_Data/SourceData/branch.csv"), DataFrame)

busses = Dict(bus."Bus ID" .=> eachindex(bus."Bus ID"))
g = SimpleGraph(length(busses))
for (from, to) in zip(branch."From Bus", branch."To Bus")
    add_edge!(g, busses[from], busses[to])
end

Drawing(1600, 1000, "background.svg");
origin()

Luxor.Point(p::NetworkLayout.GeometryBasics.Point) = Point(p[1], p[2])

function rot(p::Vector, angle)
    m = mean(points)
    # rotate all points in p vector arond angle
    return [m .+ (Point(p[i]) .- m) * Complex(cos(angle), sin(angle)) for i in 1:length(p)]
end

setline(1)
circlewidth = 3
setgray(0.4)

# left
points = 50*Point.(Stress(rng=StableRNG(3))(g)) .+ Point(-700,150)
for (i,p) in pairs(points)
    circle.(p, circlewidth, action = :fill)
end
for e in edges(g)
    line(points[src(e)], points[dst(e)], :stroke)
end

# right
points = 50*Point.(Spring(rng=StableRNG(6))(g)) .+ Point(750,-150)
points = copy(points)
for (i,p) in pairs(points)
    circle.(p, circlewidth, action = :fill)
end
for e in edges(g)
    line(points[src(e)], points[dst(e)], :stroke)
end

# bottom
g2 = copy(g)
rem_edge!(g2, 71, 73)
points = 50*Point.(Stress(rng=StableRNG(6))(g2)) .+ Point(250,550)
points = copy(points)
for (i,p) in pairs(points)
    circle.(p, circlewidth, action = :fill)
end
for e in edges(g2)
    line(points[src(e)], points[dst(e)], :stroke)
end

# top
g2 = copy(g)
rem_edge!(g2, 71, 73)
points = 50*Point.(Stress(rng=StableRNG(1))(g2)) .+ Point(-150,-450)
points = copy(points)
for (i,p) in pairs(points)
    circle.(p, circlewidth, action = :fill)
end
for e in edges(g2)
    line(points[src(e)], points[dst(e)], :stroke)
end

# fontsize(20)
# setcolor("red")
# for (i,p) in pairs(points)
#     text(repr(i),p)
# end

finish()

cd(@__DIR__)
cp("background.svg", "../content/en/workshop/background.svg"; force=true)
cp("background.svg", "../content/en/background.svg"; force=true)
rm("background.svg")
