% filename: Test_fminunc

options = optimoptions('fminunc','Algorithm',...
    'trust-region','SpecifyObjectiveGradient',true);

problem.options = options;
problem.x0 = [-1,2];
problem.objective = @rosenbrockwithgrad;
problem.solver = 'fminunc';

[x, fval] = fminunc(problem)