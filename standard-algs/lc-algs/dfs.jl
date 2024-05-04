function dfs(matrix::Vector{Vector{Int}}, start::Vector{Int})  
  rows::Int = length(matrix)
  cols::Int = length(matrix[1])
  dirs::Vector{Any}= [[-1, 0], [1, 0], [0, -1], [0, 1]]
  stack::Vector{Any} = []
  visited = Set([])

  push!(stack, start)

  while length(stack) != 0 
    (r, c) = pop!(stack)
    if ([r,c] in visited
        || !(r in 1:rows)
        || !(c in 1:cols)
        || matrix[r][c] != 1)
      continue 
    end 

    print("This is the current index $((r,c)) and its value $(matrix[r][c])\n")
    push!(visited, [r,c])

    for (dr, dc) in dirs  
      nr = r + dr 
      nc = c + dc 

      push!(stack, [nr, nc])
    end 

  end 
end 


