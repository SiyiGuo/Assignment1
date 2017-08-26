function [errora, errorb] = Q1ii()

%theorietical result
a = -1/37;
b = 18/37;

%in five simulation
expa = zeros(1,5);
expb = zeros(1,5);
    for i = 1:5
        [ar,br,cr] = roulette('A');
        expa(i) = ar;
        expb(i) = br;
    end

errora = mean(expa) - a;
errorb = mean(expb) - b;

disp([a, mean(expa), (mean(expa) - a)/a]);
disp([b, mean(expb), (mean(expb) - b)/b]);
end
