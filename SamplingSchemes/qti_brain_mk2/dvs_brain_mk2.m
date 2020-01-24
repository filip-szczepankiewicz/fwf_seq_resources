% This function is NOT meant to be executable without access to specialized code.

%% Short sampling scheme
clear
listname = 'brain_mk2_short';

s = {'LTE', 'STE'};
b = {[.1 1 2], [.1 1 2]};
n = {[ 4 -10 -15 ], [ 6 10 10]};

dvs_create(listname, b, n, s)

%% Intermediate sampling scheme
clear
listname = 'brain_mk2_interm';

s = {'LTE', 'STE'};
b = {[ .1  .7  1.4  2  2], [ .1  .7  1.4  2]};
n = {[ -6  -6 -10 -15  -6], [ -6  -6 -10 -15 ]};

dvs_create(listname, b, n, s)

%% Long sampling scheme
clear
listname = 'brain_mk2_long';

s = {'LTE', 'PTE', 'STE'};
b = {[.1 .7  1.4 1.4  2], [.1   1   2], [ .1 .7  1.4  2]};
n = {[ -6 -6 -10 -6 -30.1], [ -6  -10  -15], [  6  6  10   10]};

dvs_create(listname, b, n, s)