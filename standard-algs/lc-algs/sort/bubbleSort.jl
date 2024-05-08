"""  
bubbleSort.jl 

An implementation of the bubble sort sorting algorithm in Julia. 
""" 
function bubbleSort(arr::Vector{Int}, asc::Bool) 
  for i::Int in 1:length(arr) 
    for j::Int in i:length(arr) 
      temp::Int = 0
      if (asc == true)  
        if (arr[i] > arr[j])
          temp = arr[i] 
          arr[i] = arr[j] 
          arr[j] = temp 
        end 
      else 
        if (arr[i] < arr[j]) 
          temp = arr[i] 
          arr[i] = arr[j] 
          arr[j] = temp 
        end
      end 
    end 
  end
end


sanity::Vector{Int} = [1,5,4,2] 
print("This is sanity before $(sanity)\n")
bubbleSort(sanity, true)
print("This is sanity after $(sanity)\n") 

print("-" ^ 50, "\n")
bubbleSort(sanity, false)
print("This is sanity after sorting in descending order $(sanity)")
