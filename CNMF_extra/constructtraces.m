function [F_raw, F_inferred] = constructtraces(Y, A, C, b, f, options)
Y = double(Y);
b = double(b);
C = double(C);
f = double(f);
nA = full(sqrt(sum(A.^2))');
[K, ~] = size(C);
A = A/spdiags(nA, 0, K, K);
C = bsxfun(@times, C, nA(:));
AY = mm_fun(A, Y);

Y_r = (AY- (A'*A)*C - full(A'*b)*f) + C;
[~, Df] = extract_DF_F(Y, A, C, [], options, AY);

F_raw = Y_r ./ Df;
F_inferred = C ./ Df;

