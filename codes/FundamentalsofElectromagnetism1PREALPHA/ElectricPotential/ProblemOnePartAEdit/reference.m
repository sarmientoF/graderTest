function E = Electric_field(V)
    syms E 
    
    E = -simplify(gradient(V));
    pretty(E)
end