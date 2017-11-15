%Definitions for isElementInList(El, List)
isElementInList(El,[El]). %not necessary but there.
isElementInList(El,[El|_]).
isElementInList(El,[_|T]):-
    isElementInList(El,T).

%Definitions for reverseList(List, ReversedList)
reverseList([],[]).  %reverse of empty is empty - base case
reverseList([X],[X]).
reverseList([H|T],RL):-
    reverseList(T,RT),
    mergeList(RT,[H],RL).

%Definitions for mergeLists(List1, List2, Merged)
mergeList([],L2,L2).
mergeList(L2,[],L2).
mergeList([H|T],L2,[H|Merged]):-
    mergeList(T,L2,Merged).



%insertElementIntoListEnd(El, List, NewList)
insertListEnd(X,[],[X]). %base case
insertListEnd(X,Y,NL):-
       mergeList(Y,[X],NL).

