function Z = bivariate(x1,x2,mu_1,mu_2,sigma_1,sigma_2)

  F = normal_bivariate(x1,x2,mu_1,sigma_1);
  G = normal_bivariate(x1,x2,mu_2,sigma_2);

  figure
  subplot(2,2,1)       % add first plot in 2 x 2 grid
  surf(x1,x2,F); hold on;
  surf(x1,x2,G); hold off;
  caxis([min(F(:))-.5*range(F(:)),max(F(:))]);
  xlabel('x1'); ylabel('x2'); zlabel('Probability Density');
  title('Probability Density');

  subplot(2,2,2)       % add second plot in 2 x 2 grid

  % Plot
  contour(x1, x2, F, 'LevelList', 100, 'LineWidth', 0.5); hold on;
  contour(x1, x2, G, 'LevelList', 100, 'LineWidth', 0.5);
  caxis([min(G(:))-.5*range(G(:)),max(G(:))]);
  xlabel('x1'); ylabel('x2');
  cb = colorbar('eastoutside');
  title('Contour');

  subplot(2,2,3)       % add third plot in 2 x 2 grid
  [X,Y] = meshgrid(x1,x2);
  Z = arrayfun(@clasify, F,G);
  pcolor(X,Y,Z);
  shading interp;

end

function Z = normal_bivariate(x1,x2,mu,sigma)
  [X1,X2] = meshgrid(x1,x2);
  Z = mvnpdf([X1(:) X2(:)],mu,sigma);
  Z = reshape(Z,length(x2),length(x1));
end

function Z = clasify(x1,x2)
  if x1 > x2
    Z = -1;
  else
    Z = 1;
  end
end