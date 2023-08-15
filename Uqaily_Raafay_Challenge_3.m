%Challenge Problem 3 
%Raafay Uqaily 

%Part A--------------------------------------------------------------------
%Goals
%Employ at least one loop to determine the actual difference in salary 
%between men and women, the Earnings Ratio, and Pay Gap each year between 2018 and 2038


%Step 1 - Initialize all variables-----------------------------------------
Men = 66097; %Variable that stores value of men's average starting salary
Women = 63554; %Variable that stores value of women's average starting salary
Men_Salary = [Men]; %Vector that stores value of men's average salary for the time period with 5% annual raise
Women_Salary = [Women]; %Vector that stores value of women's average salary for the time period with 5% annual raise
Year = 2018; %Variable that stores value for first year 
Years = Year; %Vector that stores values for all successive years 
Difference = 0; %Variable that stores value of the difference between the average salary of men and women
Pay_Difference = Men-Women; %Vector that stores value of difference for the entire time period 
Earnings_R = 0; %Variable that stores value for the earnings ratio
Earnings_Ratio = Women/Men; %Vector that stores value of the earnings ratio for the entire time period 
Pay_G = 0; %Variable that stores value for the pay gap between men and women
Pay_Gap = (Men-Women)/Men; %Vector that stores value of the pay gap for the entire time period 


%Step 2 - Create a for loop------------------------------------------------
for n = 1:20 %Loop iterates 20 times since the timeframe is 20 years
    Year = Year+1; %Adds 1 to the year each time 
    Years = [Years;Year]; %A vector stores the value of each successive year
    Men = (1.05*Men); %Men recieve a 5% pay raise
    Men_Salary = [Men_Salary; Men]; %A vector stores the value of each incremental salary for men
    Women = (1.05*Women); %Women recieve a 5% pay raise
    Women_Salary = [Women_Salary; Women]; %A vector stores the value of each incremental salary for women
    Difference = Men-Women; %Difference between the salary of men and women is calculated
    Pay_Difference = [Pay_Difference; Difference]; %A vector stores the value of the difference between both salaries for each year
    Earnings_R = Women/Men; %Earnings ratio is determined for each year
    Earnings_Ratio = [Earnings_Ratio; Earnings_R]; %A vector stores the value of the earnings ratio for each year
    Pay_G = (Men-Women)/Men; %Pay gap is determined for each year
    Pay_Gap = [Pay_Gap; Pay_G]; %A vector stores the value of the pay gap between both salaries for each year
    
end


%Step 3 - fprintf Commands-------------------------------------------------
fprintf('\t Years \t Average Men''s Salary \t Average Women''s Salary \t Difference \t   Earnings Ratio \tPay Gap \n\n') %Prints all the titles
fprintf('\t %4.0f\t\t %8.2f \t\t %8.2f    \t\t %6.2f\t\t %3.2f \t\t %3.2f \n',[Years, Men_Salary, Women_Salary, Pay_Difference, Earnings_Ratio, Pay_Gap]') %Prints all the columns 

Total_Difference = sum(Pay_Difference); %Determines the sum of everything in the vector Pay_Difference
fprintf('The total difference over 20 years in average salary between men and women is: %7.2f \n\n',Total_Difference) %Prints the total difference in salary


%Step 4 - Create a Plot----------------------------------------------------
plot(Years,Men_Salary,Years,Women_Salary)
xlabel('Time Duration (Years)')
ylabel('Average Annual Salary')
legend('Men Average Salary','Women Average Salary')



%Part B--------------------------------------------------------------------
%Goals (MY INTERPRETATION OF THE QUESTION)
%This part was kind of ambigious and so I wanted to clarify my reasoning.
%I assumed that both men and women would receive an "annual merit raise"
%each year until their promotion is due, and for that one year, they would
%recieve a "promotion raise" instead. So I ask the user to input values for
%both the annual merit raise and the promotion raise for men and women.
%Additionally, in order to reflect the pay difference in the same year, I
%subtract 1 from the Prior_Years (Years before promotion) as soon as the
%loop starts rather than at the end of the loop. This could be modified as
%needed. 


%Step 1 - Initialize all variables (same as above)-------------------------
Men = 66097; %Variable that stores value of men's average starting salary
Women = 63554; %Variable that stores value of women's average starting salary
Men_Salary = [Men]; %Vector that stores value of men's average salary for the time period with 5% annual raise
Women_Salary = [Women]; %Vector that stores value of women's average salary for the time period with 5% annual raise
Year = 2018; %Variable that stores value for first year 
Years = Year; %Vector that stores values for all successive years 
Difference = 0; %Variable that stores value of the difference between the average salary of men and women
Pay_Difference = Men-Women; %Vector that stores value of difference for the entire time period 
Earnings_R = 0; %Variable that stores value for the earnings ratio
Earnings_Ratio = Women/Men; %Vector that stores value of the earnings ratio for the entire time period 
Pay_G = 0; %Variable that stores value for the pay gap between men and women
Pay_Gap = (Men-Women)/Men; %Vector that stores value of the pay gap for the entire time period 


%Step 2 - Prompt user to input values--------------------------------------
fprintf('Please enter the following input values carefully (read Part B goals)\n');
Years_Before_Promotion_Men = input('Enter the number of years before promotion for men:  '); %Years left for a man's promotion
Years_Before_Promotion_Women = input('Enter the number of years before promotion for women:  '); %Years left for a woman's promotion
Merit_Raise_Men = input('Enter annual merit raise percentage for men (Ex. a 5% raise would be 1.05):  '); %Annual merit raise for men (regular)
Merit_Raise_Women = input('Enter annual merit raise percentage for women (Ex. a 5% raise would be 1.05):  '); %Annual merit raise for women (regular)
Promotion_Raise_Men = input('Enter promotion raise percentage for men (Ex. a 5% raise would be 1.05):  '); %One-time Promotion raise for men (regular)
Promotion_Raise_Women = input('Enter promotion raise percentage for women (Ex. a 5% raise would be 1.05):  '); %One-time Promotion raise for women (regular)


%Step 3 - Create a for loop------------------------------------------------
for n = 1:20 %Loop will run 20 times to cover the entire timeframe 
    Years_Before_Promotion_Men = Years_Before_Promotion_Men - 1; %Each time a year passes, or loop runs, the man is 1 year closer to being promoted
    Years_Before_Promotion_Women = Years_Before_Promotion_Women - 1; %Each time a year passes, or loop runs, the woman is 1 year closer to being promoted
    if Years_Before_Promotion_Men == 0 %When enough years have passed for a promotion to be due 
        Men = (Promotion_Raise_Men*Men); %Men recieve a promotion pay raise
        Men_Salary = [Men_Salary; Men]; %A vector stores the value of each incremental salary for men
    else %If it is not a promotion year
        Men = (Merit_Raise_Men*Men); %Men recieve an annual merit pay raise
        Men_Salary = [Men_Salary; Men]; %A vector stores the value of each incremental salary for men
        
    end
    if Years_Before_Promotion_Women == 0 %When enough years have passed for a promotion to be due 
        Women = (1.1*Women); %Women recieves a promotion pay raise
        Women_Salary = [Women_Salary; Women]; %A vector stores the value of each incremental salary for women
    else %If it is not a promotion year
        Women = (Merit_Raise_Women*Women); %Women recieve an annual merit pay raise
        Women_Salary = [Women_Salary; Women]; %A vector stores the value of each incremental salary for women
        
    end
    Year = Year+1; %Adds 1 to the year each time
    Years = [Years;Year]; %A vector stores the value of each successive year
    Difference = Men-Women; %Difference between the salary of men and women is calculated
    Pay_Difference = [Pay_Difference; Difference]; %A vector stores the value of the difference between both salaries for each year
    Earnings_R = Women/Men; %Earnings ratio is determined for each year
    Earnings_Ratio = [Earnings_Ratio; Earnings_R]; %A vector stores the value of the earnings ratio for each year
    Pay_G = (Men-Women)/Men; %Pay gap is determined for each year
    Pay_Gap = [Pay_Gap; Pay_G]; %A vector stores the value of the pay gap between both salaries for each year
    
end


%Step 4 - fprintf Commands-------------------------------------------------
fprintf('\n\t Years \t Average Men Salary \t Average Women Salary \t Difference \t   Earnings Ratio \tPay Gap \n\n') %Prints all the titles
fprintf('\t %4.0f \t %8.2f \t\t %8.2f \t\t %6.2f \t\t %3.2f \t\t %3.2f \n',[Years, Men_Salary, Women_Salary, Pay_Difference, Earnings_Ratio, Pay_Gap]') %Prints all the columns 

Total_Difference = sum(Pay_Difference); %Determines the sum of everything in the vector Pay_Difference
fprintf('The total difference over 20 years in average salary between men and women is: %7.2f \n\n',Total_Difference) %Prints the total difference in salary


%Step 5 - Create a plot----------------------------------------------------
figure(2)
plot(Years,Men_Salary,Years,Women_Salary)
xlabel('Time Duration (Years)')
ylabel('Average Annual Salary')
legend('Men Average Salary','Women Average Salary')


%--------------------------------------------------------------------------
