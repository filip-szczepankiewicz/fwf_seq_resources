% This function is NOT meant to be executable without access to specialized code.

clear
clc

listname = 'QTI_brain_mk1';

s = {'LTE', 'STE'};
b = {[0  .1  .7  1.4      2], [0  .1  .7  1.4      2]};
n = {[1  -6  -10  -15  -30.1], [1  -6  -10  -10  -15]};

dvs_create(listname, b, n, s)