%choice = menu(title,"choice1",...,choicen)

function f = menuprac
  choice = menu("Practice Menu Title", "this is the first choice",
  "input a number",  "input an array", "try two inputs");
  switch(choice)
   case 1
     disp("you chose the first choice");
   case 2 
     num = input("input a number: "); %requesting input of one number
     if length(num) > 1 
       disp("I said A number.\nPlease try again.")
     else
       printf("you input %i.", num);
     endif
   case 3
    array = input("Please input an array: "); 
    disp(array);
   case 4
     in1 = input("this is the first input: ");
     in2 = input("tis is the second: ");
     printf("first you input %i, then you gave %i\n", in1, in2);
   otherwise
    disp("later dog");
   endswitch
        
endfunction
