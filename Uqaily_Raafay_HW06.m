%Homework 6
%Problem 1 
%Asks user to input car type
CarModel = input('Enter the type of car: ','s');

%Asks user to input number of days
days = input('Enter the number of days: ');

%Asks user to input number of miles driven
miles = input('Enter the number of miles driven: ');

%Switch case for car type
switch(CarModel)
    %For Sedan
    case 'Sedan'         
        %If number of days is between 1 and 6
        if days>1 && days <= 6
                if miles > (days*80)               
                AdditionalMiles= (miles-(days*80));
                cost = (days*79 + (AdditionalMiles*0.69));
                else
                cost = (days*79);
                end  
         %If number of days is between 7 and 29 days          
                elseif days>6 && days<= 29
                if miles > (days*100)
                AdditionalMiles= (miles-(days*100));
                cost = (days*69 + AdditionalMiles*0.59);
                else
                cost= (days*69);
                end      
         %If number of days are greater than 29
                else
                if miles > (days*120)
                AdditonalMiles= (miles-(days*120));
                cost = (days*59 + extramiles*0.49);
                else
                cost = (days*59);
                end
        end
        %For SUV
        case 'SUV'   
            %If number of days is between 1 and 6
            if days>1 && days <= 6
                if miles > (days*80)                   
                AdditionalMiles= (miles-(days*80));
                cost = (days*84 + (AdditonalMiles*0.74));
                else
                cost = (days*84);
                end
            %If the number of days is between 7 amd 29   
            elseif (days>6 && days<= 29)
                if miles > (days*100)      
                AdditionalMiles= (miles-(days*100));
                cost = (days*74 + (extramiles*0.64));
                else
                cost= (days*74);
                end
            %If number of days are greater than 29
            else
                if miles > (days*120)
                AdditionalMiles= (miles-(days*120));
                cost = (days*64 + (extramiles*0.49));
                else
                cost = (days*64);
                end
            end
end
fprintf('The final price of the rental for the car is $%0.2f \n', cost);

%Problem 2 
a = input('Enter a value for a:   ');
b = input('Enter a vlaue for b:   ');
c = input('Enter a value for c:   ');
d = (b^2-(4*a*c));
if d > 0 
    answer1 = (-b + sqrt(b^2-(4*a*c)))/(2*a);
    answer2 = (-b - sqrt(b^2-(4*a*c)))/(2*a);
    fprintf('The equation has two real roots, %.2f and %.2f \n', answer1, answer2)
else if d == 0
        answer = ((-b + sqrt(b^2-(4*a*c)))/(2*a));
        fprintf('The equation has one real root, %.2f and %.2f \n', answer)
    else if d < 0
            fprintf('The equation has no real roots \n')
        end 
    end 
end

%Problem 3
problem = input('Do you want to use the law of sines or cosines? ', 's');
switch (problem)
    %For cosine
    case 'cosine'
        whichCosine = input('Different conditions \n a). 3 sides given \n b). 2 sides and 1 angle \n Insert letter a or b \n','s');
        switch (whichCosine)
            %For condition a
            case 'a'
                x = input('Enter value for first side: \n');
                y = input('Enter value for second side: \n');
                z = input('Enter value for third side: \n');
                X = acos((y^2+z^2+x^2)/(2*y*z));
                Y = acos((x^2+z^2-y^2)/(2*x*z));
                Z = acos((x^2+y^2-z^2)/(2*x*z));
                Triangle = ["Triangle 1";"Triangle 2";"Triangle 3"];
                Sidex = [x;y;z];
                AngleX = [X;Y;Z].*(180/pi);
                Sidey = [y;z;x];
                AngleY = [Y;Z;X].*(180/pi);
                Sidez = [z;x;y];
                AngleZ = [Z;X;Y].*(180/pi);
                T = table(Triangle,Sidex,AngleX,Sidey,AngleY,Sidez,AngleY)
            %For condition b 
            case 'b'
                y = input('Enter value for second side: \n');
                z = input('Enter value for third side: \n');
                X = input('Enter value for first angle (Radians): \n');
                x = sqrt(y^2+z^2-(2*y*z*cosd(X)));
                Y = acos((x^2+z^2-y^2)/(2*x*z));
                Z = acos((x^2+y^2-z^2)/(2*x*z));
                Triangle = ["Triangle 1";"Triangle 2";"Triangle 3"];
                Sidex = [x;y;z];
                AngleX = [X;Y;Z].*(180/pi);
                Sidey = [y;z;x];
                AngleY = [Y;Z;X].*(180/pi);
                Sidez = [z;x;y];
                AngleZ = [Z;X;Y].*(180/pi);
                T = table(Triangle,Sidex,AngleX,Sidey,AngleY,Sidez,AngleY)
        end 
    case 'sine'
        whichSine = input('Different conditions \n c). 2 angles and 1 side \n d). 2 sides and 1 angle \n Insert letter c or d', 's');
        switch(whichSine)
            %For condition c
            case 'c'
                x = input('Enter value for first side: \n');
                X = input('Enter value for first angle: \n');
                Y = input('Enter value for second angle (Radians): \n');
                y = sin(Y)*(x/sin(X));
                Z = 180-(X+Y);
                z = sin(Z)*(x/sin(X));
                Triangle = ["Triangle 1";"Triangle 2";"Triangle 3"];
                Sidex = [x;y;z];
                AngleX = [X;Y;Z].*(180/pi);
                Sidey = [y;z;x];
                AngleY = [Y;Z;X].*(180/pi);
                Sidez = [z;x;y];
                AngleZ = [Z;X;Y].*(180/pi);
                T = table(Triangle,Sidex,AngleX,Sidey,AngleY,Sidez,AngleY)
                %For condition d
            case 'd'
                x = input('Enter value for first side: \n');
                z = input('Enter value for third side: \n');
                Z = input('Enter value for first angle (Radians): \n');
                X = asin((x/z)*sin(Z));
                Y = 180-(X+Z);
                Triangle = ["Triangle 1";"Triangle 2";"Triangle 3"];
                Sidex = [x;y;z];
                AngleX = [X;Y;Z].*(180/pi);
                Sidey = [y;z;x];
                AngleY = [Y;Z;X].*(180/pi);
                Sidez = [z;x;y];
                AngleZ = [Z;X;Y].*(180/pi);
                T = table(Triangle,Sidex,AngleX,Sidey,AngleY,Sidez,AngleY)
        end 
end 
                
            
                
                
                
            
                
        
        
    



        