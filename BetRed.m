function [runs, money] = BetRed()
    %gambling setuo
    red = 18;
    black = 20;
    green = 19;
    
    %initial gambler setup
    money = 1;
    
    %recording number of runs
    runs  = 0;
    
    %this generate an random integer from 1 to 37
    bet = randi(37,1,1);
    if bet <= red
        money = money + 1;
    else
        money = money - 1;
    end
    
    runs = runs + 1;
end
    
