
tic
Fs = 3;
T = 1/Fs;
L = size(r,2);
f = Fs*(0:(L/2))/L;
f = f(:);
N = size(r,1);

Ps = zeros(round(L/2)+1,N);
for ii = 1:size(r,1)

    x = r(ii,:);
    Y = fft(x);
    P2 = abs(Y/L);
    P1 = P2(1:L/2+1);
    P1(2:end-1) = 2*P1(2:end-1);
    Ps(:,ii) = P1;

end

f(1:10) = [];
Ps(1:10,:) = [];
Ps = Ps./sum(Ps,1);

% normalize!!!! 
% discard 0.01!!!!

z = nchoosek(1:N,2);

afterEach(D, @nUpdateWaitbar);
fval = zeros(numel(z,1),1);
parfor ii = 1:size(z,1)
    x1 = Ps(:,z(ii,1));
    x2 = Ps(:,z(ii,2));
    [~,fval(ii)] = emd(f,f,x1,x2,@gdf);
end
toc

