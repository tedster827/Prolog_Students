/*
Teddy Williams
December 1, 2015
CS 351
*/

grade(student, course).




/*Departments*/
department(comsci).
department(math).
department(physics).

/*Computer Science Courses Fact List*/
course(cs111, comsci).
course(cs211, comsci).
course(cs311, comsci).
course(cs315, comsci).
course(cs421, comsci).
course(cs436, comsci).

/*Math Courses Fact List*/
course(math270, math).
course(math242, math).
course(math372, math).
course(math480, math).

/*Physics Course Fact List*/
course(phys201, physics).
course(phys301, physics).

/*Core Course*/
core(cs111).
core(cs211).
core(cs311).
core(math270).
core(phys201).

comcore(X) :-
    pass(cs111, X),
    pass(cs211, X),
    pass(cs311, X),
    pass(math270, X),
    pass(phys201, X).


/*Student Fact List*/
student(newton).
student(galileo).
student(turing).
student(lovelace).

/*Enrollment Fact List*/
enrolled(cs311, newton).
enrolled(cs421, newton).
enrolled(math372, newton).

enrolled(math480, turing).
enrolled(cs421, turing).
enrolled(phys301, turing).

enrolled(cs436, galileo).
enrolled(cs421, galileo).

/*Passed Fact List*/
pass(cs111, galileo).
pass(cs211, galileo).
pass(cs311, galileo).
pass(cs436, galileo).
pass(math270, galileo).
pass(math242, galileo).
pass(phys201, galileo).

pass(cs111, turing).
pass(cs211, turing).
pass(cs311, turing).
pass(math270, turing).
pass(math372, turing).
pass(phys201, turing).
pass(phys301, turing).

pass(cs111, newton).
pass(cs211, newton).

pass(cs111, lovelace).
pass(cs211, lovelace).

/*Queries*/

    /*Checks if a cs elective has been passed*/
    csmetelec(X) :- pass(cs111, X); pass(cs211, X); pass(cs311, X); pass(cs436, X).
    /*Checks if a math elective has been passed*/
    mathmetelec(X) :- pass(math270, X); pass(math242, X); pass(math372, X); pass(math480, X).
    /*Checks if a phys elective has been passed*/
    physmetelec(X) :- pass(phys201, X); pass(phys301, X).


/*Checks if student met the electives*/
metelec(X) :-
    csmetelec(X),
    mathmetelec(X),
    physmetelec(X).

/*Final Check to see if the student can graduate*/
isagrad(X) :-
    metelec(X),
    metelec(X),
    write('This is a graduate: '),
    write(X).

checkall :-
    isagrad(turing),
    isagrad(gelileo).
    isagrad(newton).
    isagrad(lovelace).
