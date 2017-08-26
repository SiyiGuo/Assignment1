function [runs, money, win_game] = Labouchere()
    %gambling setup
    red = 18;
    black = 20;
    green = 19;
    list = [1 2 3 4];
    
    %initial gambler setup
    money = 0;
    chip = list(1) + list(end);
    
    %recording number of runs
    runs  = 0;
    win_game = 0;
    
    while ~isempty(list) &&  chip <= 100
        
        %add one more run
        runs = runs + 1;
        
        %this generate an random integer from 1 to 37
        bet = randi(37,1,1);
        if bet <= red
            %Means Gambler win the Game
            money = money + chip;
            win_game = win_game + 1;
            
            %adjusting the list
            list(1) = [];
            if isempty(list)
                break;
            end
            list(length(list)) = [];
            
        else
            %if we lose the game
            money = money - chip;
            
            %adjusting the list
            list(length(list) + 1) = chip;
        end

        
        %adjusting the bet for next term
        if length(list) == 1
            chip = list(1);
        elseif length(list) > 1
            chip = list(1) + list(length(list));
        end
    end
end