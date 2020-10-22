function p_out = plot_elec(E ,p)%% E and p are vectors 
syms r
p = [0 p];
x = [];
y = [];
for i = 1: numel(p)-1 
    xx = p(i):.01:p(i+1);
    y = [y subs(E(i), r,xx)];
    x = [x xx];
end
plot(x,y)
end