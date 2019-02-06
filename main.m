clear;
clc;
a = 1.0;
f1=[];
f2=[];
f3=[];
f4=[];
f5=[];
while (a<=5)
    %% 01
    x10 = a(ones(1, 2));
    options = optimoptions('fminunc');
    [x1, fval, exitflag, output] = fminunc(@lab021,x10,options); 
    f1 = [f1; x1 fval output.iterations output.funcCount];
    %% 02
    x20 = [a a a a];
    [x2, fval2, exitflag2, output2] = fminunc(@lab022,x20,options); 
    f2 = [f2; x2 fval2 output2.iterations output2.funcCount];

    %% 03
    x30 = [1 1];
    options_con = optimoptions('fmincon');
    % options_con.OptimalityTolerance = 1e-6;
    % options_con.MaxFunctionEvaluations = 40;
    % options_con.SpecifyObjectiveGradient = false;
    % options_con.HessianApproximation = 'ffcssad';
     options_con.SubproblemAlgorithm = 'cg';
    [x3, fval3, exitflag3, output3] = fmincon(@lab023,x30,[],[],[],[],[],[],@lab023_con,options_con); 
    f3 = [f3; x3 fval3 output3.iterations output3.funcCount];

    %% 04
    x40 = [a a];
    options_con2 = optimoptions('fmincon');
    [x4, fval4, exitflag4, output4] = fmincon(@lab024,x40,[],[],[],[],[],[],@lab024_con,options_con2); 
    f4 = [f4; x4 fval4 output4.iterations output4.funcCount];

    %% 05
    x50 = [a a a a a a];
    options_con3 = optimoptions('fmincon');
    [x5, fval5, exitflag5, output5] = fmincon(@lab025,x50,[],[],[],[],[],[],@lab025_con,options_con3); 
    f5 = [f5;x5 fval5 output5.iterations output5.funcCount];
     a=a+1;
end


