function xps = mdm_xps_ge_xm1(sys, prot)
% function xps = mdm_xps_ge_xm1(sys, prot)
% Creates experimental parameter structure (xps) that is compatible with the
% myltidimensional dMRI framework (https://github.com/markus-nilsson/md-dmri).
% The xps is valid for the first (xm 1) GE implementation of free waveform
% encoding. More info can be found at:
% https://github.com/filip-szczepankiewicz/fwf_seq_resources
% 
% If sys is only input we assume that it is the path to the .mat file that
% contains the xps.
% If both inputs are used, the file path is constructed and points to the
% same folder as this function.

if nargin == 1
    
    fnp = sys;
    
else
    
    switch sys
        case 'XRMB'
            prefix = 'XRMB';
            
        case 'XRMW'
            prefix = 'XRMW';
            
        case 'HRMW'
            prefix = 'HRMW';
            
        otherwise
            error('System not recognised!')
    end
    
    
    switch prot
        case {1, 'short'}
            num = '001';
            
        case {2, 'intermediate', 'inter', 'med'}
            num = '002';
            
        case {3, 'long'}
            num = '003';
            
        otherwise
            error('Protocol not recognised!')
    end
    
    fn = [prefix num '.mat'];
    fnp = [fileparts(mfilename('fullpath')) filesep fn];
    
end

load(fnp);

xps.gwf = permute(waveforms, [3 2 1]);




