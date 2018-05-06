x = [12 3;4 6; 89 12]
#[X mean sigma] = featureNormalize(x);

#{
for i = 1: size(X,2)  
  disp(X(:,i))
  fprintf("%f",std(X(:,i)))
end
#}
submit()  