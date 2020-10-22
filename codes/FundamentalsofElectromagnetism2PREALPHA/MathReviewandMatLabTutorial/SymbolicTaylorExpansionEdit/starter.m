syms x
f(x) = 
t_8(x) = 

% Plotting code below. You can remove or comment out this code if necessary
fplot({f(x),t_8(x)},[-2,2],'LineWidth',2);  grid on; hold on;
plot(0,0,'b.','MarkerSize',16);
legend({'$f(x)$','$t_{8}(x)$'},'Interpreter','latex','Location','North','FontSize',18)
xlabel('$x$','Interpreter','latex','Fontsize',20)
title('Taylor expansion of $e^{-x}\sin(x)\cos(x)$ at $x=0$','Interpreter','latex','Fontsize',16);