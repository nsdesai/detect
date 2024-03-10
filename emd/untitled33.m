function [] = untitled33(r)

tic
Fs = 3;
NFFT = 2^nextpow2(size(r,2));
f = Fs*(0:NFFT/2-1)/NFFT;
f = f(:);
N = size(r,1);

Ps = zeros(NFFT,N);
for ii = 1:N
    x = r(ii,:);
    Y = fft(x,NFFT);
    Ps(:,ii) = abs(Y);
end

lowFreq = find(f>0.05);
highFreq = find(f<1.5);
f = f(lowFreq(1):highFreq(end));
Ps = Ps(lowFreq(1):highFreq(end),:);
Ps = Ps./sum(Ps,1);

z = nchoosek(1:N,2);

Nz = size(z,1);
p = 1;
D = parallel.pool.DataQueue;
h = waitbar(0, 'Please wait ...');
afterEach(D, @nUpdateWaitbar);
fval = zeros(numel(z,1),1);
for ii = 1:Nz
    x1 = Ps(:,z(ii,1));
    x2 = Ps(:,z(ii,2));
    [~,fval(ii)] = emd(f,f,x1,x2,@gdf);
    send(D, ii)
end

    function nUpdateWaitbar(~)
        waitbar(p/Nz, h);
        p = p + 1;
    end

end

