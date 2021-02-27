Risky ={
    CallCops = true,                        --True if you want cops to be called by % chance
    TTS = 3.5,                              --Time To Sell, How long to negotiate drug deal(in seconds)
    Chance = {                              --Fun math stuff.
        NotI = 30,                          --Percent chance the buyer is not interested
        Sell = 50,                          --Percent chance to sell items
        CalC = 20,                          --Percent chance buyer will call cops.
    },
    I1 = {
        Item = 'marijuana2',                      --Name of Item in your database
        Count = 1,          --Amount of drugs sold at a time (min, max)
        Price = 3800,      --Price drugs will sell for (min, max)
        Acc = 'black_money',                --Account to be paid in. (DO NOT CHANGE THIS, IT WILL NOT WORK UNTIL I DECIDE HOW I WANT TO USE IT)
    },
    I2 = {
        Item = 'coke2',
        Count = 1,
        Price = 7800,
        Acc = 'black_money',
    },
    I3 = {
        Item = 'coke',
        Count = 1,
        Price = 2600,
        Acc = 'black_money',
    },
    I4 = {
        Item = 'heroin2',
        Count = 1,
        Price = 2300,
        Acc = 'black_money',
    },
}
