%% uinstall
% Author: Mahmoud Afifi
% Copyright (c) 2020 Samsung Electronics Co., Ltd. All Rights Reserved
% Please cite our paper:
% Mahmoud Afifi,  Konstantinos G. Derpanis, Bj�rn Ommer, and Michael S
% Brown. Learning Multi-Scale Photo Exposure Correction, In CVPR 2021.
%%
disp('Uninstalling...')
current = pwd;
rmpath(fullfile(current,'src'));
savepath
disp('Done!');
