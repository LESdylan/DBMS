```mermaid
erDiagram
    Bills {
        id INTEGER pk
        purchased_by INTEGER fk
        date DATE
        total_amount DECIMAL
    }
    
    Bill_Details {
        id INTEGER pk
        bill_id INTEGER fk
        item_name VARCHAR(255)
        type ENUM
        quantity DECIMAL
        unit_price DECIMAL
        total_cost DECIMAL AS(quantity*unit_price)
    }
    
    Users {
        id INTEGER pk
        name VARCHAR(255)
        role ENUM
    }

    Bills ||--o{ Bill_Details: "has_items"
    Users ||--o{ Bills: "purchased_by"


```

- flexibility for Multiple items: Allows each bill to contain various item types with specific costs.
- detailes Cost Calculations : Easily calculate total costs for each item and for the entire bill supporting precise financial tracking. 
- User tracking: if needed, you can identify which user is responsible for each purchase, adding a layer of accountability.
