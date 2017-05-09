x1 = -10:.2:10; x2 = -10:.2:10;

mu_1 = [-5 -5];
sigma_1 = [1 0; 0 1];
mu_2 = [5 5];
sigma_2 = sigma_1;
bivariate(x1,x2,mu_1,mu_2,sigma_1,sigma_2);

mu_1 = [-5 -5];
sigma_1 = [3 0; 0 1];
mu_2 = [5 5];
sigma_2 = sigma_1;
bivariate(x1,x2,mu_1,mu_2,sigma_1,sigma_2);

mu_1 = [-5 -5];
sigma_1 = [1 0; 0 3];
mu_2 = [5 5];
sigma_2 = sigma_1;
bivariate(x1,x2,mu_1,mu_2,sigma_1,sigma_2);

mu_1 = [-2 -8];
sigma_1 = [1 0.5; 0.5 3];
mu_2 = [8 2];
sigma_2 = [3 0.5; 0.5 1];
bivariate(x1,x2,mu_1,mu_2,sigma_1,sigma_2);

mu_1 = [-3 -2];
sigma_1 = [.5 .6; .6 1];
mu_2 = [2 1];
sigma_2 = [1 .4; .4 .5];
bivariate(x1,x2,mu_1,mu_2,sigma_1,sigma_2);