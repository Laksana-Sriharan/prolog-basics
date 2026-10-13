% Facts

% teaches(X,Y): person X teaches in course Y

teaches(sudhir, course001).
teaches(tapas, course002).
teaches(pranab, course003).
teaches(joydeb, course001).

%student(X,Y): student X studies in course Y

studies(suparna, course001).
studies(santanu, course001).
studies(sudip, course002).
studies(srobona, course003).

% Rule
% Teacher will guide a student if that student studies that very courseid on which the teacher teaches

guide(Teacher, Student):-
    teaches(Teaches, Courseid),
    studies(Teaches, Courseid).

% Relation names cannot be start with capital letter
% Variable names can be started with capital letters
% , stands for 'and'
% ; stands for 'or'
%  \ stands for not
%  _ means anonymous variable


