function I = simpson(f,a,b,n)
    x = linspace(a,b,n+1);
    Delta = (x(2)-x(1))/6;
    I = 0;
    for i = 1:n
        dI = (f(x(i))+4*f(0.5*(x(i)+x(i+1)))+f(x(i+1)));
        I = I + dI;
    end
    I = Delta*I;
end