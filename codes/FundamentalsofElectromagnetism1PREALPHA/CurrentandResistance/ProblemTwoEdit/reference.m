%% symbolic variables and constants
syms t
I_V= [0 3
2   23
4   39
6   58
8   77
10  100
12  119
14  142
16  162];
 
I = I_V(:,1);
V = I_V(:,2);
R = I(:) \ V(:); % Regression Of Line Through Origin

% Plot
x = I;
y = x * R;
 
plot(I,V,'b--o')
hold on 
plot(x,y)
xlabel('Amps') 
ylabel('Volts') 

% Answer
fprintf ( 'The resistance of this material is : %.2f Ohms \n' , R);