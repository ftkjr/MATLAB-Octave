%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parabolize( nodes, x_increment, f) %
% Written by Fred Kaesmann Jr Date: 2018/11/09        %
% Assumptions: %
% INPUT: A number of nodes, nodes; the increment between nodes, x_increment  
%  some function, f;
% OUTPUT: An interpolated polynomial %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function parabolize( nodes, x_increment, f)
  
  % If nodes array is even hit em with the error window
  if( length(nodes)/2 == round(length(nodes)/2) )
   choice = menu("Error: Cannot Have an Even Number of Nodes", 
        % Case 1             % Case 2              % Case 3
    "Remove First Node", "Remove Last Node", "Add New Initial Node",
        % Case 4               % Case 5
    "Add New Final Node", "Stop and Start Over");
    switch( choice )
      case 1 % Removing first node
        nodes = nodes(2):nodes(length(nodes));
      case 2 % Removing final node
        nodes = nodes : length(nodes)-1;
      case 3 % Adding new initial node
        nodes = [input("Add New Initial node: ") nodes];
      case 4 % Adding node at the end
        nodes = [nodes input("Add New Final Node: ")];
      case 5 % Ending function
         disp("Please try again with an odd number of nodes")
         return;
    endswitch
  endif
  
  % Initializations
  z = nodes(1):x_increment:nodes(length(nodes))
  w = zeros(1,length(z));
  f_of_z = arrayfun(f,z);
  y = arrayfun(f, nodes);
  
  figure
  hold on 
  % Plot f( z ) as a red line 
  plot(z,f_of_z,'r-','linewidth',3) % (red line) 
  % Plot each node as an individual point on the line
  plot(nodes,y,'g.','markersize',12) % Seurat (green dots)

  for i = 1:2:length(nodes)-2
    M = [nodes(i)^2 nodes(i) 1; nodes(i+1)^2 nodes(i+1) 1; nodes(i+2)^2 nodes(i+2) 1];
    % Create matrix C of coefficients 
    C = inverse(M) * [y(i) y(i+1) y(i+2)]';
    for j = 1:length(z)
      w(j) = C(1) * z(j)^2 + C(2)*z(j) + C(3);
    endfor
    plot(z,w,'k-')
  endfor  

endfunction % fin
