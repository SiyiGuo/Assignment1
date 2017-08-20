function [runs, money] = Labouchere()
    %gambling setup
    red = 18;
    black = 20;
    green = 19;
    list = [1 2 3 4];
    
    %initial gambler setup
    money = 5;
    chip = 1;
    
    %recording number of runs
    runs  = 0;
    
    while ~isempty(list) &&  chip < 100
        %this generate an random integer from 1 to 37
        if length(list) == 1
            chip = list(1);
        else
            chip = list(1) + list(length(list));
        end
        
        if chip <= 18
            list(1) = [];
            list(length(list)) = [];
            money = money + chip;
        else
            list(length(list) + 1) = chip;
            money = money - chip;
        end
            
        runs = runs + 1;
    end
    
end