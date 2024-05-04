# DevLog for Julia Orderbook 
 
## Description 
Given the computatinal power that comes with Julia, 
it makes sense to utilize it for a pseudo-computationally 
difficult problem like creating an orderbook. 

Although making an orderbook would be a good task for 
C++, C, or even Rust, I want to implement an orderbook 
using Julia because I am starting to really enjoy 
writing the language as well as its different 
perks. 

## Goals 
- [X] Implement an order
  - [ ] Multiple different types of orders 
    - Buy and Sell Orders (depending on what "side" you're on)
    - Market Order  
      - Instructs brokerage (medium for making trade) to 
      complete the order at best available price. Always 
      executed unless there is no trading equity. 
    - Limit Order 
      - Order to buy/sell a stock at a specific price 
      or better. Limit orders ensure that a buyer pays 
      only a specific price to purchase a security. 
      Limit orders can remain in effect until 
      they are executed, they expire, or are cancelled. 
    - Limit Sell Order 
      - Tells the brokerage to only sell the asset at a 
      price that is above the current price. 
    - Stop Order
    - Buy Stop Order 
    - Day Order 
    - Good-'Til-Cancelled Order (GTC)
    - All-or-None (AON)
    - Fill-or-Kill (FOK) 
    - Immediate-Or-Cancel (IOC)

- [ ] Develop a matching engine for the OrderBook
  - [ ] Implement common matching algorithms 
    - 




