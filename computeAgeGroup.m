function [ ageGroup ] = computeAgeGroup( age )
% Question from file: SADownload.pdf
% Assignment A

%computeAgeGroup Based on the input 'age', decide the age group from the
%five vategories given
    if (age<1 && age>=0)
        ageGroup = 'Infant';
    elseif (age<3 && age>=1)
        ageGroup = 'Toddler';
    elseif (age<13 && age>=3)
        ageGroup = 'Child';
    elseif (age<20 && age>=13)
        ageGroup = 'Teenager';
    elseif (age<=20 && age>=0)
        ageGroup = 'Adult';
    else
        % case when age entered is not in the range 0-20, example negative
        % numbers or numbers greater than 20
        ageGroup = 'Wrong Input';
    end
end