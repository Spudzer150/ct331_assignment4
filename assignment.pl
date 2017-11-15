%Definitions for isElementInList(El, List)
%Base case el is ead of list.
isElementInList(EL, [El | _]).
%recurse over list looking for element.
isElementInList(El, [_|T]) :- isElementInList(El, T).

%Definitions for mergeLists(List1, List2, Merged)
%BaseCase if first list is empty
mergeLists([], List2, List2).
%Recursivly add elements from first list to second.
mergeLists([H|T], List2, [H|Merged]):-mergeLists(T, List2, Merged).

%Definitions for reverseList(List, ReversedList)
%Base when list is empty
reverseList([],[]).

%recursivly remove head and append it to tail.
reverseList([H|T], ReversedList):-reverseList(T, ReverseT), mergeLists(ReverseT, [H], ReversedList).

%insertElementIntoListEnd(El, List, NewList)


insertElementIntoListEnd(El, List, NewList):- mergeLists(List, [El] , NewList).
