function [wfa, wfb, wfab] = fwf_wf_113s_lte()
% function [wfa, wfb, wfab] = fwf_wf_1.13s_lte()
% Hard coded LTE waveform for FWF seq version 1.13

% LTE is the first channel of the STE waveform.
[wfa, wfb, wfab] = fwf_wf_113s_ste();

wfa (:,2:3) = 0;
wfb (:,2:3) = 0;
wfab(:,2:3) = 0;
