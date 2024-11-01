```mermaid
    erDiagram
    DRIVER ||--o{ SCAN : makes
    DRIVER{
        INTEGER ID PK "ID of the drive"
        VARCHAR(255) name "name of the driver"
    }
    SCAN{
        INTEGER ID PK
        INTEGER driver_id FK "ID of the driver who created the scan"
        INTEGER package_id FK "ID of the packages scanned"
        INTEGER address_id FK "ID where the package was scanned"
        ENUM action "picked up ('Pick') or dropped off ('Drop')"
        TIMESTAMP timestamp "which is the day and time at which the package was scanned"
    }
    PACKAGES ||--o{ SCAN : of
    PACKAGES{
        INTEGER ID PK "ID of the package"
        VARCHAR(255) contents "the contents of the package"
        VARCHAR(255) from_address_id FK "id of the address from which the package was sent"
        VARCHAR(255) to_address_id FK "ID of the address to which the packages was sent, not necesssarily where it ended up"
    }
    ADDRESS  ||--o{ SCAN : at
    ADDRESS ||--o{ PACKAGES : send_from
    ADDRESS ||--o{ PACKAGES : send_to
    ADDRESS{
        INTEGER ID PK
        VARCHAR(255) address "which is the street address itself"
        ENUM type "residential, commercial, etc"
    }
```

exercice 1 : 
>Clerk, my name’s Anneke. I live over at 900 Somerville Avenue. Not long ago, I sent out a special letter. It’s meant for my friend Varsha. She’s starting a new chapter of her life at 2 Finnegan Street, uptown. (That address, let me tell you: it was a bit tricky to get right the first time.) The letter is a congratulatory note—a cheery little paper hug from me to her, to celebrate this big move of hers. Can you check if it’s made its way to her yet?

exercise 2:
> Good day to you, deliverer of the mail. You might remember that not too long ago I made my way over from the town of Fiftyville. I gave a certain box into your reliable hands and asked you to keep things low. My associate has been expecting the package for a while now. And yet, it appears to have grown wings and flown away. Ha! Any chance you could help clarify this mystery? Afraid there’s no “From” address. It’s the kind of parcel that would add a bit more… quack to someone’s bath times, if you catch my drift.

execice 3 :
> Oh, excuse me, Clerk. I had sent a mystery gift, you see, to my wonderful granddaughter, off at 728 Maple Place. That was about two weeks ago. Now the delivery date has passed by seven whole days and I hear she still waits, her hands empty and heart filled with anticipation. I’m a bit worried wondering where my package has gone. I cannot for the life of me remember what’s inside, but I do know it’s filled to the brim with my love for her. Can we possibly track it down so it can fill her day with joy? I did send it from my home at 109 Tileston Street.