%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% piecewise(x_vector, varargin) %
% Written by Eric Bauerfeld Date: Year/mm/dd        %
% Assumptions: %
% INPUT: A vector, x_vector;
% A variable number of sets, varargin; %
% OUTPUT: %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [y_vector] = piecewise(x_vector, varargin)

  x_eval_specific = @(x)(x_eval(x, varargin{:}));
  % This  defines a function that we will apply
  %  for each element in the x range
  y_vector = arrayfun(x_eval_specific, x_vector);

end

%Another useful thing to know is that you can
% expand a cell array and apply the elements as
% arguments to another function, which is
% whats’s going on with 
%“x_eval(x_vector, vararagin{:})”
%And that you can define functions within
% other functions, which is what the
% “@(x)(...)” does
%(That will define a function that takes
% an x argument evaluate what’s in the ellipses)
%Last bit of note is probably that
% “arrayfun” thing, which applies a function
% to each element in an array/vector