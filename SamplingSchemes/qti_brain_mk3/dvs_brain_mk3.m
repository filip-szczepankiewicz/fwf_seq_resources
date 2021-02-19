% This function is NOT meant to be executable without access to specialized code.

%% LTE and PTE only
clear

listname = 'brain_mk3';

s = {'LTE', 'PTE'};
b = {[ .1  .7   1.4   2 ], [.1   .7  1.4   2  2]};
n = {[ -6  -6  -10   -30], [ -6  -6  -10   -15 -6]};

dvs_create(listname, b, n, s)