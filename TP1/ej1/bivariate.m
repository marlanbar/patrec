mu_1 = [-1 0];
sigma_1 = [.25 .3; .3 1];
mu_2 = [2 1];
sigma_2 = [.25 .1; .1 1];
x1 = -10:.2:10; x2 = -10:.2:10;

function Z = normal_bivariate(x1,x2,mu,sigma)
  [X1,X2] = meshgrid(x1,x2);
  Z = mvnpdf([X1(:) X2(:)],mu,sigma);
  Z = reshape(Z,length(x2),length(x1));
end

F = normal_bivariate(x1,x2,mu_1,sigma_1);
G = normal_bivariate(x1,x2,mu_2,sigma_2);

figure
subplot(2,1,1)       % add first plot in 2 x 1 grid
surf(x1,x2,F); hold on;
surf(x1,x2,G); hold off;
caxis([min(F(:))-.5*range(F(:)),max(F(:))]);
axis([-3 3 -3 3 0 .4]);
xlabel('x1'); ylabel('x2'); zlabel('Probability Density');
title('Probability Density');

subplot(2,1,2)       % add second plot in 2 x 1 grid

% Plot
contour(x1, x2, F, 'LevelList', 100, 'LineWidth', 0.5); hold on;
contour(x1, x2, G, 'LevelList', 100, 'LineWidth', 0.5); 
caxis([min(G(:))-.5*range(G(:)),max(G(:))]);
axis([-3 3 -3 3]);
xlabel('x1'); ylabel('x2');
cb = colorbar('eastoutside');
title('Contour');
