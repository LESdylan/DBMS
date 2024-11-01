```mermaid

erDiagram
    Sales {
        id INTEGER pk
        customer_id INTEGER fk
        purchase_date DATETIME
        amount DECIMAL
        shop_id INTEGER fk
    }

    Expenses {
        id INTEGER pk
        purchase_date DATETIME
        amount DECIMAL
        shop_id INTEGER fk
    }

    historicInventories {
        id INTEGER pk
        shop_id INTEGER fk
        snapshot_date DATETIME
        total_quantity DECIMAL
        total_value DECIMAL
    }

    InventorySnapshots {
        id INTEGER pk
        inventory_id INTEGER fk
        item_id INTEGER fk
        item_type ENUM
        quantity DECIMAL
        unit_cost DECIMAL
        total_cost DECIMAL AS(quantity*unit_cost)
    }

    Material {
        id INTEGER pk
        name VARCHAR(255)
        type ENUM
        price_per_unit DECIMAL
    }

    Ingredients {
        id INTEGER pk
        name VARCHAR(255)
        type ENUM
        price_per_unit DECIMAL
    }

    Donuts {
        id INTEGER pk
        price DECIMAL 
    }

    DonutIngredients {
        donut_id INTEGER fk
        ingredient_id INTEGER fk
        quantity DECIMAL
    }

    Orders {
        id INTEGER pk
        sale_id INTEGER fk
    }

    OrderDetails {
        id INTEGER pk
        order_id INTEGER fk
        donut_id INTEGER fk
        quantity INTEGER
    }

    Customers {
        id INTEGER pk
        first_name VARCHAR(255)
        last_name VARCHAR(255)
    }

    Shops {
        id INTEGER pk
        founded_in YEAR
        open_at TIME
        close_at TIME
    }

    Customers ||--o{ Sales: places
    Sales ||--o{ Orders: contains
    Orders ||--o{ OrderDetails: details
    Donuts ||--o{ OrderDetails: contains
    Donuts ||--o{ DonutIngredients: composed_of
    Ingredients ||--o{ DonutIngredients: contains
    Shops ||--|{ Sales: generates_revenue
    Shops ||--|{ Expenses: incurs_cost
    Shops ||--o{ historicInventories: has_snapshots
    historicInventories ||--o{ InventorySnapshots: includes_item_details
    InventorySnapshots }o--|| Material: tracks
    InventorySnapshots }o--|| Ingredients: tracks

```