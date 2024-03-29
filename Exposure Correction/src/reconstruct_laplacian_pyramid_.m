% Reconstruction of image from Laplacian pyramid
%
% Arguments:
%   pyramid 'pyr', as generated by function 'laplacian_pyramid'
%
% tom.mertens@gmail.com, August 2007
%
%
% More information:
%   'The Laplacian Pyramid as a Compact Image Code'
%   Burt, P., and Adelson, E. H., 
%   IEEE Transactions on Communication, COM-31:532-540 (1983). 
%

function R = reconstruct_laplacian_pyramid_(pyr)

r = size(pyr{1},1);
c = size(pyr{1},2);
nlev = length(pyr);

% start with low pass residual
R = pyr{nlev};
filter = pyramid_filter_;
for l = nlev - 1 : -1 : 1
    % upsample, and add to current level
    odd = 2*size(R) - size(pyr{l});
    R = pyr{l} + upsample_(R,odd,filter);
end
