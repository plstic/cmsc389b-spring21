inClass(cliff, class1).
inClass(cliff, class2).
inClass(rachel, class3).
inClass(rachel, class4).
inUni(rachel, prat).
inUni(cliff, umd).
enrolled(Person, Uni) :- inClass(Person, _Class), !, inUni(Person, Uni).
