function [wfa, wfb, wfab] = fwf_wf_112s_lte()
% function [wfa, wfb, wfab] = fwf_wf_112s_lte()
% Hard coded LTE waveform for FWF seq version 1.12s
% For more info: https://github.com/filip-szczepankiewicz/fwf_seq_resources

% LTE is the first channel of the STE waveform.
[wfa, wfb, wfab] = fwf_wf_112s_ste();

wfa (:,2:3) = 0;
wfb (:,2:3) = 0;
wfab(:,2:3) = 0;
