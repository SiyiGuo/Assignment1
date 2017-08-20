function [runs, money]  = Martingale()
    %gambling setuo
    red = 18;
    black = 20;
    green = 19;
    
    %initial gambler setup
    money = 1;
    chip = 1;
    
    %recording number of runs
    runs  = 0;
    
    while money < 10 && chip < 100
        %this generate an random integer from 1 to 37
        betresult = randi(37,1,1);
        if betresult <= red
            money = money + chip;
            chip = 1;
        else
            money = money - chip;
            chip = chip * 2;
        end
        runs = runs + 1;
    end
    
end
    