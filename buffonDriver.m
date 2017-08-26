function result = buffonDriver()
%this function return how many times the confidence interval does
%in fact contain the true probability

inCI = zeros(0,100);
for i = 1:100
    inCI(i) = buffon();
end

%display how many times theorietical answer remain inside CI
result = sum(inCI);

end