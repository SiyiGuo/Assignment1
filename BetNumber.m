function [runs, money] = BetNumber()
    %gambling setuo
    gamblenumber = randi(37,1,1);
    
    %initial gambler setup
    money = 1;
    
    %recording number of runs
    runs  = 0;
    
    %this generate an random integer from 1 to 37
    bet = randi(37,1,1);
    if bet == gamblenumber
        money = money + 35;
    else
        money = money - 1;
    end
    
    runs = runs + 1;
end
    