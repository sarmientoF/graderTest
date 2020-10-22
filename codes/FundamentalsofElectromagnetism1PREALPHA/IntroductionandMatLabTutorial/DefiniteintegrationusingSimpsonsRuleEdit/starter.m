function I = simpson(f,a,b,n)
%I = SIMPSON(f,a,b,n) approximates the integral of the function f
%over [a,b] using Simpson's rule with n subintervals

    x = ; % Define the list of points using the LINSPACE function
    Delta = ; % Define the constant term Delta
    
    % Intialize the integral value to 0 and compute the sum
    I = 0; 
    for i = % Set range of values for i
        dI = ; % Define the summand for the ith subinterval
        % Update the total
        I = I + dI;
    end
    % Multiply the total by Delta
    I = Delta*I;  
end