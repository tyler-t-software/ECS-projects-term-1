/* File: gpacalculator.ch
Print, Scan: Input grades to find out GPA. */

//declaration
string_t classA, classB, classC, classD;
string_t responseA, responseB, responseC, responseD;
string_t nameA, nameB, nameC, nameD;

double gradeA, gradeB, gradeC, gradeD, gpa;


//initial explanation
printf("= - = - = - = - = GPA Calculator = - = - = - = - =\n");
printf("Input the four grades that you currently have.\n\n");

printf("We'll ask which of your classes were honors or AP at the end.\n");
printf("= - = - = - = - = - = - = - = - = - = - = - = - = - =\n");


//names for classes
printf("What is your first class?\n");
scanf("%s", &nameA);

printf("What is your second class?\n");
scanf("%s", &nameB);

printf("What is your third class?\n");
scanf("%s", &nameC);

printf("What is your fourth class?\n");
scanf("%s", &nameD);


//initialization for classA
printf("What is your first class's grade (in letter form)?\n");
scanf("%s", &classA);

if (classA == "A+" || classA == "a+") {
    gradeA = 4;
} else if (classA == "A" || classA == "a") {
    gradeA = 4;
} else if (classA == "A-" || classA == "a-") {
    gradeA = 4;
} else if (classA == "B+" || classA == "b+") {
    gradeA = 3;
} else if (classA == "B" || classA == "b") {
    gradeA = 3;
} else if (classA == "B-" || classA == "b-") {
    gradeA = 3;
} else if (classA == "C+" || classA == "c+") {
    gradeA = 2;
} else if (classA == "C" || classA == "c") {
    gradeA = 2;
} else if (classA == "C-" || classA == "c-") {
    gradeA = 2;
} else if (classA == "D+" || classA == "d+") {
    gradeA = 1;
} else if (classA == "D" || classA == "d") {
    gradeA = 1;
} else if (classA == "D-" || classA == "d-") {
    gradeA = 1;
} else {
    gradeA = 0;
}


//initialization for classB
printf("What is your second class's grade?\n");
scanf("%s", &classB);

if (classB == "A+" || classB == "a+") {
    gradeB = 4;
} else if (classB == "A" || classB == "a") {
    gradeB = 4;
} else if (classB == "A-" || classB == "a-") {
    gradeB = 4;
} else if (classB == "B+" || classB == "b+") {
    gradeB = 3;
} else if (classB == "B" || classB == "b") {
    gradeB = 3;
} else if (classB == "B-" || classB == "b-") {
    gradeB = 3;
} else if (classB == "C+" || classB == "c+") {
    gradeB = 2;
} else if (classB == "C" || classB == "c") {
    gradeB = 2;
} else if (classB == "C-" || classB == "c-") {
    gradeB = 2;
} else if (classB == "D+" || classB == "d+") {
    gradeB = 1;
} else if (classB == "D" || classB == "d") {
    gradeB = 1;
} else if (classB == "D-" || classB == "d-") {
    gradeB = 1;
} else {
    gradeB = 0;
}


//initialization for classC
printf("What is your third class's grade?\n");
scanf("%s", &classC);

if (classC == "A+" || classC == "a+") {
    gradeC = 4;
} else if (classC == "A" || classC == "a") {
    gradeC = 4;
} else if (classC == "A-" || classC == "a-") {
    gradeC = 4;
} else if (classC == "B+" || classC == "b+") {
    gradeC = 3;
} else if (classC == "B" || classC == "b") {
    gradeC = 3;
} else if (classC == "B-" || classC == "b-") {
    gradeC = 3;
} else if (classC == "C+" || classC == "c+") {
    gradeC = 2;
} else if (classC == "C" || classC == "c") {
    gradeC = 2;
} else if (classC == "C-" || classC == "c-") {
    gradeC = 2;
} else if (classC == "D+" || classC == "d+") {
    gradeC = 1;
} else if (classC == "D" || classC == "d") {
    gradeC = 1;
} else if (classC == "D-" || classC == "d-") {
    gradeC = 1;
} else {
    gradeC = 0;
}


//initialization for classD
printf("What is your fourth class's grade?\n");
scanf("%s", &classD);

if (classD == "A+" || classD == "a+") {
    gradeD = 4;
} else if (classD == "A" || classD == "a") {
    gradeD = 4;
} else if (classD == "A-" || classD == "a-") {
    gradeD = 4;
} else if (classD == "B+" || classD == "b+") {
    gradeD = 3;
} else if (classD == "B" || classD == "b") {
    gradeD = 3;
} else if (classD == "B-" || classD == "b-") {
    gradeD = 3;
} else if (classD == "C+" || classD == "c+") {
    gradeD = 2;
} else if (classD == "C" || classD == "c") {
    gradeD = 2;
} else if (classD == "C-" || classD == "c-") {
    gradeD = 2;
} else if (classD == "D+" || classD == "d+") {
    gradeD = 1;
} else if (classD == "D" || classD == "d") {
    gradeD = 1;
} else if (classD == "D-" || classD == "d-") {
    gradeD = 1;
} else {
    gradeD = 0;
}


//discovering what classes are honors or AP
printf("Is your first class an honors or AP class? Say 'y' if yes, or anything else if not.\n");
scanf("%s", &responseA);
if (responseA == "yes" && gradeA > 1) {
    gradeA = gradeA + 1;
}
if (responseA == "Yes" && gradeA > 1) {
    gradeA = gradeA + 1;
}
if (responseA == "YES" && gradeA > 1) {
    gradeA = gradeA + 1;
}
if (responseA == "Y" && gradeA > 1) {
    gradeA = gradeA + 1;
}
if (responseA == "YE" && gradeA > 1) {
    gradeA = gradeA + 1;
}
if (responseA == "y" && gradeA > 1) {
    gradeA = gradeA + 1;
}
if (responseA == "ye" && gradeA > 1) {
    gradeA = gradeA + 1;
}
if (responseA == "yeah" && gradeA > 1) {
    gradeA = gradeA + 1;
}


printf("Is your second class an honors or AP class? Say 'y' if yes, or anything else if not.\n");
scanf("%s", &responseB);
if (responseB == "yes" && gradeB > 1) {
    gradeB = gradeB + 1;
}
if (responseB == "Yes" && gradeB > 1) {
    gradeB = gradeB + 1;
}
if (responseB == "YES" && gradeB > 1) {
    gradeB = gradeB + 1;
}
if (responseB == "YE" && gradeB > 1) {
    gradeB = gradeB + 1;
}
if (responseB == "Y" && gradeB > 1) {
    gradeB = gradeB + 1;
}
if (responseB == "ye" && gradeB > 1) {
    gradeB = gradeB + 1;
}
if (responseB == "y" && gradeB > 1) {
    gradeB = gradeB + 1;
}
if (responseB == "yeah" && gradeB > 1) {
    gradeB = gradeB + 1;
}


printf("Is your third class an honors or AP class? Say 'y' if yes, or anything else is not.\n");
scanf("%s", &responseC);
if (responseC == "yes" && gradeC > 1) {
    gradeC = gradeC + 1;
}
if (responseC == "Yes" && gradeC > 1) {
    gradeC = gradeC + 1;
}
if (responseC == "YES" && gradeC > 1) {
    gradeC = gradeC + 1;
}
if (responseC == "YE" && gradeC > 1) {
    gradeC = gradeC + 1;
}
if (responseC == "Y" && gradeC > 1) {
    gradeC = gradeC + 1;
}
if (responseC == "ye" && gradeC > 1) {
    gradeC = gradeC + 1;
}
if (responseC == "y" && gradeC > 1) {
    gradeC = gradeC + 1;
}
if (responseC == "yeah" && gradeC > 1) {
    gradeC = gradeC + 1;
}


printf("Is your fourth class an honors or AP class? Say 'y' if yes, or anything else if not.\n");
scanf("%s", &responseD);
if (responseD == "yes" && gradeD > 1) {
    gradeD = gradeD + 1;
}
if (responseD == "Yes" && gradeD > 1) {
    gradeD = gradeD + 1;
}
if (responseD == "YES" && gradeD > 1) {
    gradeD = gradeD + 1;
}
if (responseD == "YE" && gradeD > 1) {
    gradeD = gradeD + 1;
}
if (responseD == "Y" && gradeD > 1) {
    gradeD = gradeD + 1;
}
if (responseD == "ye" && gradeD > 1) {
    gradeD = gradeD + 1;
}
if (responseD == "y" && gradeD > 1) {
    gradeD = gradeD + 1;
}
if (responseD == "yeah" && gradeD > 1) {
    gradeD = gradeD + 1;
}


//calculate gpa
gpa = (gradeA + gradeB + gradeC + gradeD) / 4;


//result
printf("\n= - = - = - = - = - = - =\n");
printf("%s: %s, %.1lf\n", nameA, classA, gradeA);
printf("%s: %s, %.1lf\n", nameB, classB, gradeB);
printf("%s: %s, %.1lf\n", nameC, classC, gradeC);
printf("%s: %s, %.1lf\n\n", nameD, classD, gradeD);
printf("Your total GPA is %.2lf.\n", gpa);
