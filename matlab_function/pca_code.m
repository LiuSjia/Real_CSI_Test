
[COEFF,SCORE, latent]=princomp(X); 
cumulative_sum=cumsum(latent)./sum(latent);
t1=clock;
score = bsxfun(@minus,Y,mean(X,1))*COEFF;
t2=clock;
disp(['����������ʱ�䣺',num2str(etime(t2,t1))]);