%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NevillesMenu %
% Written by Fred Kaesmann Jr Date: 2018/11/20        %
% Assumptions: This code will not be used for nefarious purposes %
% INPUT: Node arrays x and y, or a set of ordered pairs %
% OUTPUT: Matrix of divided differences and at most nodes nodes-1 polynomial %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function NevillesMenu
  %initializing menu
  choice = menu("Please Select Input", "Input x and y Arrays", 
  "Input Set of Ordered Pairs");
  switch(choice)
    case 1 % Inputting two different arrays
      x_array = input("Please Enter x Array: ");
      y_array = input("Please Enter y Array: ");
    case 2 % Inputting one array of ordered pairs
      orderedpairs = input("Please Enter Your Ordered Pairs as [x_0,y_0; x_1,y_1;...] \n");
      orderedpairs = orderedpairs';
      x_array = orderedpairs(1,:);
      y_array = orderedpairs(2,:);
    otherwise
      disp("Thanks for Playing");
    endswitch    
 nodes = length(x_array); % counter 
  for i=1:nodes % first column
    P(i,1) = y_array(i);  
  endfor 
  for j = 2:nodes % start with the second column of matrix P
   for i = 1:nodes+1-j % start in position P(1,2)
    P(i,j) = ( P(i,j-1) - P(i+1,j-1) ) / (x_array(i)-x_array(i+j-1));
   endfor
  endfor
  disp("\n")
  disp(P);   % Display matrix
  % Switch statement for polynomials up to 3 nodes, 4+ throws error
  switch( nodes )
  case 1 % too few nodes
    disp("^^ That's your polynomial of degree 0 ^^");
  case 2 % nodes 1
    printf("\nYour degree 1 polynomial is: \n%d + %d*(x- %d)",
  P(1,1),P(1,2),x_array(1));
  case 3 % nodes 2
    printf("\nYour at most degree 2 polynomial is: \n%d + %d *(x- %d) + %d*(x- %d)*(x- %d)\n",
  P(1,1),P(1,2),x_array(1),P(1,3),x_array(1),x_array(2));
  case 4 % nodes 3
    printf("\nYour at most degree 3 polynomial is: \n%d + %d*(x- %d) + %d *(x- %d)*(x- %d) + %d *(x- %d)*(x- %d)*(x- %d)\n",
  P(1,1),P(1,2),x_array(1),P(1,3),x_array(1),x_array(2),P(1,4),x_array(1),x_array(2),x_array(3));
  otherwise % too many nodes
    printf("I'm not typing the code for a polynomial from %i nodes.\n", nodes-1);
  endswitch
endfunction % Fin