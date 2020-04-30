## Copyright (C) 2020 USER
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} randomData (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: USER <USER@GLAIRLY>
## Created: 2020-04-28

function [X,y] = randomData (len)
    C =  rand()*2-2;
    X = [rand(len,1)*10];
    for i = 1:len
        y(i) =  (rand()*2)*X(i).^2 + (rand()*2)*X(i) + C;
    endfor
endfunction
