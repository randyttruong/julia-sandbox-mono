using DataStructures 
using PackageCompiler

include("./lc-algs/dfs.jl")
include("./lc-algs/bfs.jl")

mat::Vector{Vector{Int}} = [[1, 1], [1,1], [1, 0]] # No type errors here 
start::Vector{Int} = [1, 1]


function main() 
  dfs(mat, start)
  print("\n", "-"^50, "\n")
  bfs(mat, start)
end 

main()


