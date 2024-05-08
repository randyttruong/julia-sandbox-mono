function bfs(matrix::Vector{Vector{Int}}, start::Vector{Int}) 
  rows::Int = length(matrix)
  cols::Int = length(matrix[1]) 

  dirs::Vector{Vector{Int}} = [[-1,0], [1,0] ,[0,-1], [0,1]] 
  visited::Set{Vector{Int}} = Set([]) 

  queue::Queue{Vector{Int}} = Queue{Vector{Int}}()
  enqueue!(queue, start)

  while length(queue) != 0 
    for _ in 1:length(queue)
      (r::Int, c::Int) = dequeue!(queue)
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

        enqueue!(queue, [nr, nc])
      end 

    end 
  end 
end 

