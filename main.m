%% 01
clear;
x10 = [0 0];
options = optimoptions('fminunc');
[x1, fval, exitflag, output] = fminunc(@lab021,x10,options); 
f1_funccount = output.funcCount
f1_itercount = output.iterations
%% 02
x20 = [1 1 1 1];
[x2, fval2, exitflag2, output2] = fminunc(@lab022,x20,options); 
f2_funccount = output2.funcCount
f2_itercount = output2.iterations

%% 03
clear;
clc;
x30 = [5 5];
options_con = optimoptions('fmincon');
options_con.OptimalityTolerance = 1e-06;
options_con.MaxFunctionEvaluations = 3000;
options_con.SpecifyObjectiveGradient = 0;
options_con.HessianApproximation = 'bfgs';
[x3, fval3, exitflag3, output3] = fmincon(@lab023,x30,[],[],[],[],[],[],@lab023_con,options_con); 
f3_funccount = output3.funcCount
f3_itercount = output3.iterations

%% 04
clear;
clc;
x40 = [1 1];
options_con2 = optimoptions('fmincon');
[x4, fval4, exitflag4, output4] = fmincon(@lab024,x40,[],[],[],[],[],[],@lab024_con,options_con2); 
f4_funccount = output4.funcCount
f4_itercount = output4.iterations

%% 05
clear;
clc;
x50 = [1 1 1 1 1 1];
options_con3 = optimoptions('fmincon');
[x5, fval5, exitflag5, output5] = fmincon(@lab025,x50,[],[],[],[],[],[],@lab025_con,options_con3); 
f5_funccount = output5.funcCount
f5_itercount = output5.iterations


