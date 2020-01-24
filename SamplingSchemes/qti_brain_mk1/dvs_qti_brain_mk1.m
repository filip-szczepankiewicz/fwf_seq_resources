% This function is NOT meant to be executable without access to specialized code.

clear
clc

listname = 'QTI_brain_mk1';

%% LTE
b_l = [0  .1  .7  1.4      2];
n_l = [1  -6  -10  -15  -30.1];
[g_l, g_l_p] = create_gdir_from_bvals_and_dirs(b_l, n_l, 2);

%% STE
b_s = [0  .1  .7   1.4    2];
n_s = [1  -6  -10  -10  -15];
[g_s, g_s_p] = create_gdir_from_bvals_and_dirs(b_s, n_s, 2);

%% CREATE HEADER
extheader = {...
    '# Diffusion vector set (MK 1) intended for QTI in brain.';
    ['# By Filip Szczepankiewicz, ' date];
    '# Directions based on platonic solids (negative numbers).';
    '# LTE';
    ['# b_l = [' num2str(b_l, '%4.1f') ']'];
    ['# n_l = [' num2str(n_l, '%4.0f') ']'];
    '# STE';
    ['# b_s = [' num2str(b_s, '%4.1f') ']'];
    ['# n_s = [' num2str(n_s, '%4.0f') ']'];
    ['# Total number of samples = ' num2str(sum(round(abs([n_l n_s]))))]
    };

clc
disp(extheader)

%% WRITE
write_siemens_grad_table(g_l, 0, [listname '_LTE.dvs'], extheader)
write_siemens_grad_table(g_s, 0, [listname '_STE.dvs'], extheader)

write_philips_grad_table(g_l_p, 0, [listname '_LTE.txt'])
write_philips_grad_table(g_s_p, 0, [listname '_STE.txt'])

%% PLOT
clf
colormap jet
plot_gdirs_bcol([g_l; -g_l])
axis([-1 1 0 1 -1 1]*1.1)
axis off
view(0, 0)
set_p6_figure
save_current_fig_to_file(['dirs_' listname '_LTE'], pwd, [4 4], 200)








