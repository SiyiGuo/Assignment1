function [a,b,c] = roulette(gametype)
    %this program estimate
    %a. Expected winning money
    %b. proportion of games you win
    %c. expected playing time
    %by simulating 100, 000 repetitions
    N = 100000;
    if gametype == 'A'
        win_game = 0;
        money = 0;
        for i = 1:N
            result = BetRed();
            if result > 0
                win_game = win_game + 1;
            end
            money = money + result;
        end
        a = money / N;
        b =  win_game / N;
        c = 1;
        
        
    elseif gametype == 'B'
        win_game = 0;
        money = 0;
        for i = 1:N
            result = BetNumber();
            if result > 0
                win_game = win_game + 1;
            end
            money = money + result;
        end
        a = money / N;
        b =  win_game / N;
        c = 1;
        
    elseif gametype == 'C'
        win_game = zeros(1,N);
        money = zeros(1,N);
        run = zeros(1,N);
        for i = 1:N
            [runs, moneyGet, winning] = Martingale();
            win_game(i) = winning;
            money(i) = moneyGet;
            run(i) = runs;
        end
        a = sum(money) / N;
        b = sum(win_game) / N;
        c = sum(run)/N;
        
    elseif gametype == 'D'
        win_game = zeros(1,N);
        money = zeros(1,N);
        run = zeros(1,N);
        for i = 1:N
            [runs, moneyGet, winning] = Labouchere();
            win_game(i) = winning;
            money(i) = moneyGet;
            run(i) = runs;
        end
        a = sum(money) / N;
        b = sum(win_game) / N;
        c = sum(run)/N;
        money
    end
end