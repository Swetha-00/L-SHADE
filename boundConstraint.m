function vi = boundConstraint (vi, pop, X_max, X_min)
[NP, D] = size(pop);  % the population size and the problem's dimension
xl = repmat(X_min, NP, 1);
pos = vi < xl;
vi(pos) = (pop(pos) + xl(pos)) / 2;
xu = repmat(X_max, NP, 1);
pos = vi > xu;
vi(pos) = (pop(pos) + xu(pos)) / 2;