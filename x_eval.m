%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% x_eval(x, varargin) %
% Written by Eric Bauerfeld Date: 2018/11/02        %
% Assumptions: %
% INPUT:  %
% OUTPUT: %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [y] = x_eval(x, varargin)

  for i = 1:nargin

    condition = varargin{i}{1};

    func = varargin{i}{2};

    if condition(x)

      y = func(x);

      return;
    end
  end
end
% Input in command window:
% x_range = [-5:.01:5];
%y = piecewise(
%  x_range,
%  {
%    inline('(x >= -5) && (x < 0)'),
%    inline('x^2 - 2*x + 1'),
%  },
%  {
%    inline('(x >= 0) && (x < 3)'),
%    inline('5*x^2 + 6*x - 7')
%  },
%  {
%    inline('(x >= 3) && (x < 7)'),
%    inline('1*x^2 - x - 1')
%  }
%);
%plot(x_range, y);