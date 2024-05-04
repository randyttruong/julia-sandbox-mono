include("./OrderInterface.jl") 

struct Orderbook  
  Buy ::Vector{Order}
  Sell::Vector{Order}
end 

bookInit()::Orderbook = 
  begin  
    return Orderbook([], [])
  end 

addBuy(book::Orderbook, o::Order) = 
  begin  
    push!(book.Buy, o)
    return nothing 
  end 

addSell(book::Orderbook, o::Order) = 
  begin  
    push!(book.Sell, o)
    return nothing 
  end 


