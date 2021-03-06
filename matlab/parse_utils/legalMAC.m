function legalmat = legalMAC(mactype)
%%
% This file is part of ExtRaSy
%
% Copyright (C) 2013-2014 Massachusetts Institute of Technology
%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 2 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.
%%
if isequal(lower(mactype),'csma')
	a = zeros(8,8);
	a([3,7],[3,7]) = ones(2,2);
	legalmat = a;
	
elseif isequal(lower(mactype),'csma-ca')
	a = [1 1 0 0;
		 1 1 1 0;
		 1 0 1 0;
		 0 0 0 0];
	
	b = [1 0 0 0;
		 1 0 0 0;
		 1 0 0 0;
		 1 0 0 0];
	 
	 legalmat = [a b; b a];
	 
elseif isequal(lower(mactype),'csma-arq')
	a = [0 0 0 0;
		 0 0 0 0;
		 0 0 1 1;
		 0 0 1 1];
	
	b = [0 0 0 0;
		 0 0 0 0;
		 0 0 1 0;
		 0 0 1 0];
	 
	 legalmat = [a b; b a];
	 
	 
elseif isequal(lower(mactype),'csma-ca-arq')
	a = [1 1 0 0;
		 1 1 1 0;
		 1 0 1 1;
		 1 0 1 1];
	
	b = [1 0 0 0;
		 1 0 0 0;
		 1 0 0 0;
		 1 0 0 0];
	 
	 legalmat = [a b; b a];
else
	error('unknown mactype');
end

