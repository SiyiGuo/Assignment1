function result = buffon()

%initial setup
d = 2;
l = 1;
N = 100000;

%simulate the program
X = (pi / 2)*rand(1,N);
pepdist = l/2*sin(X);

%rand for Y
Y = d/2*rand(1,N);

%find the crossing result
crossing = (Y < pepdist);

%find the probability of crossing from N simulation
prob = sum(crossing)/N;

%find a 2-sided 95% confidence interval of the probability
CI = [prob-1.96*sqrt(prob*(1-prob)/N), prob+1.96*sqrt(prob*(1-prob)/N)];


%return whether 1/pi is in the experimental CI
result = (1/pi) > CI(1) && (1/pi) < CI(2);
end


