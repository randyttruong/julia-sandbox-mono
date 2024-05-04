include("./OrderType.jl")
include("./OrderSide.jl")

"""  
OrderInterface.jl 

This is a file that defines the Order struct. 

Essentially, think of an order as a row in 
a database. (maybe an entrypoint for Redis?)

Keep track of 
- Identification. Identifier for the order 
- Buy/Sell Status. Buy or Sell order 
- Order Type. The type of the order 
- Price. Price of asset to be bought/sold for 
- Volume. The quantity of the asset to be sold for at some price 
""" 

"""  
@enum OrderType begin 
MarketOrder     = 1 
LimitOrder      = 2
LimitSellOrder  = 3 
StopOrder       = 4 
BuyStopOrder    = 5 
DayOrder        = 6 
GTCOrder        = 7 
end 

@enum OrderSide begin 
Buy   = 1 
Sell  = 2  
end 
""" 

struct Order 
  Id       ::Int64
  OrderSide::OrderSide 
  OrderType::OrderType  
  Volume   ::Float64    # total amount of asset to be sold at price 
  Price    ::Float64    # price at which the asset is to be sold for 
end 

getId(o::Order)::Int64 = 
  begin 
    return o.Id
  end 

getSide(o::Order)::OrderSide = 
  begin
    return o.OrderSide
  end

getType(o::Order)::OrderType = 
  begin
    return o.OrderType
  end

getVolume(o::Order)::Float64 = 
  begin
    return o.Volume
  end

getPrice(o::Order)::Float64 = 
  begin
    return o.Price
  end

setVolume(o::Order, v::Float64) = 
  begin 
    o.Volume += v
    return nothing 
  end 
