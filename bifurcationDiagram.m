
%~~~~~~~~~~~~~~    Andrew Hibbs 2021    ~~~~~~~~~~~~~~
%This bifurcation plot is incredibly interesting to me b/c of the
%unimaginable complexity that happens with a seemingly simply equation such
%as the chaos eqn. This eqn has applications in all sorts of dynamical
%systems such as population, pendulum problems, and nonlinear/quantum
%optics

clear 
format long

    %Specifies how many inputs you want...how "filled" you want the
    %bifurcation diagram to be
    Inputs=1000;

    tf=500;
    
    %Time
    t=linspace(0, tf, tf+1);

    %Parameters for the input
    r=linspace(1.85, 2.75, Inputs);
    
    %an initial condition
    x_i=0.6;
    
    %Loop fopr inputs -> right b4 Plots
    for i=1:Inputs
        X(i,1:(tf+1))=populationSeries(x_i,tf,r(i));

    end %end of Inputs loop    
        
    %plot loop begins
    figure
    hold on
    for j=1:Inputs
        thisParameter=r(j)*ones(1,tf+1-200);
        plot(thisParameter(:),X(j,200:tf),'.')
        colormap default
    end %end of plot loop    
        