function rSeries=populationSeries(x0,tf,r)

 %initial condition
    x(1)=x0;

    %iteration to start the "chaos" equation to map
    for n=1:tf
        x(n+1)=x(n)+r*x(n)*(1-x(n));
    end %end of n value for loop    

rSeries=x;

