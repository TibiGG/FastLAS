holdsAt(F,Te) :- fluent(F), initiatedAt(F,Ts), next_time(Ts, Te), time(Ts).
holdsAt(F,Te) :- fluent(F), holdsAt(F,Ts), not terminatedAt(F,Ts), next_time(Ts, Te), time(Ts).

fluent(meeting(X,Y)) :- person(X), person(Y).
happensAt(close(Id1,Id2,Threshold),Time) :- dist(Id1,Id2,Time,Distance), dist(Threshold), Distance <= Threshold.
happensAt(further(Id1,Id2,Threshold),Time) :- dist(Id1,Id2,Time,Distance), dist(Threshold), Distance > Threshold.

at_least_one :- holdsAt(meeting(X, Y), 2), X != Y.
should_be_atleast_one :- goal(holdsAt(A, 2)).
:- should_be_atleast_one, not at_least_one.
:- not should_be_atleast_one, at_least_one.

dist(24).
dist(25).
dist(27).
dist(34).
dist(40).

time(1).
next_time(1, 2).



#bias("penalty(1, head(X)) :- in_head(X).").
#bias("penalty(1, body(X)) :- in_body(X).").

#modeh(terminatedAt(meeting(var(person), var(person)), var(time))).
#modeh(initiatedAt(meeting(var(person), var(person)), var(time))).


#modeb(happensAt(walking(var(person)), var(time))). %2
#modeb(happensAt(active(var(person)), var(time))). %2
#modeb(happensAt(inactive(var(person)), var(time))). %2
#modeb(happensAt(running(var(person)), var(time))). %2
#modeb(happensAt(appear(var(person)), var(time))). %2
#modeb(happensAt(disappear(var(person)), var(time))). %2
#modeb(happensAt(abrupt(var(person)), var(time))). %2
#modeb(happensAt(close(var(person), var(person), const(dist)), var(time))). % 10

#modeb(not happensAt(walking(var(person)), var(time))). % 2
#modeb(not happensAt(appear(var(person)), var(time))). % 2
#modeb(not happensAt(disappear(var(person)), var(time))). % 2
#modeb(happensAt(further(var(person), var(person), const(dist)), var(time))). % 10

#pos(p_17666@100, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,27).
dist(id1,id0,1,27).
}).



#pos(p_17667@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,27).
dist(id1,id0,1,27).
}).



#pos(p_17668@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,26).
dist(id1,id0,1,26).
}).



#pos(p_17669@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,26).
dist(id1,id0,1,26).
}).



#pos(p_17670@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,25).
dist(id1,id0,1,25).
}).



#pos(p_17671@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
}).



#pos(p_17672@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
}).



#pos(p_17673@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
}).



#pos(p_17674@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
}).



#pos(p_17675@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
}).



#pos(p_17676@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_17677@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_17678@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_17679@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_17680@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_17681@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_17682@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_17683@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_17684@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_17685@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_17686@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_17687@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
}).



#pos(p_17688@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
}).



#pos(p_17689@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_17690@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_17691@100, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_17692@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_22732@100, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
goal(holdsAt(meeting(id2,id3),2)).
goal(holdsAt(meeting(id3,id2),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(running(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,175).
dist(id1,id0,1,175).
dist(id0,id2,1,82).
dist(id2,id0,1,82).
dist(id1,id2,1,172).
dist(id2,id1,1,172).
dist(id0,id3,1,72).
dist(id3,id0,1,72).
dist(id1,id3,1,185).
dist(id3,id1,1,185).
dist(id2,id3,1,18).
dist(id3,id2,1,18).
}).



#pos(p_22733@100, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(running(id2),1).
happensAt(walking(id3),1).
holdsAt(meeting(id2,id3),1).
holdsAt(meeting(id3,id2),1).
dist(id0,id1,1,175).
dist(id1,id0,1,175).
dist(id0,id2,1,82).
dist(id2,id0,1,82).
dist(id1,id2,1,173).
dist(id2,id1,1,173).
dist(id0,id3,1,71).
dist(id3,id0,1,71).
dist(id1,id3,1,184).
dist(id3,id1,1,184).
dist(id2,id3,1,17).
dist(id3,id2,1,17).
}).



#pos(p_22734@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(running(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,175).
dist(id1,id0,1,175).
dist(id0,id2,1,85).
dist(id2,id0,1,85).
dist(id1,id2,1,175).
dist(id2,id1,1,175).
dist(id0,id3,1,70).
dist(id3,id0,1,70).
dist(id1,id3,1,184).
dist(id3,id1,1,184).
dist(id2,id3,1,19).
dist(id3,id2,1,19).
}).



#pos(p_11137@100, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
happensAt(appear(id0),1).
happensAt(appear(id1),1).
dist(id0,id1,1,48).
dist(id1,id0,1,48).
}).



#pos(p_11138@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,48).
dist(id1,id0,1,48).
}).



#pos(p_11139@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
}).



#pos(p_11140@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
}).



#pos(p_11141@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
}).



#pos(p_11142@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,47).
dist(id1,id0,1,47).
}).



#pos(p_11143@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
}).



#pos(p_11144@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
}).



#pos(p_11145@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
}).



#pos(p_11146@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
}).



#pos(p_11147@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,45).
dist(id1,id0,1,45).
}).



#pos(p_11148@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,45).
dist(id1,id0,1,45).
}).



#pos(p_11149@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,44).
dist(id1,id0,1,44).
}).



#pos(p_11150@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,43).
dist(id1,id0,1,43).
}).



#pos(p_11151@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,44).
dist(id1,id0,1,44).
}).



#pos(p_11152@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,45).
dist(id1,id0,1,45).
}).



#pos(p_11153@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,44).
dist(id1,id0,1,44).
}).



#pos(p_11154@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,44).
dist(id1,id0,1,44).
}).



#pos(p_11155@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,44).
dist(id1,id0,1,44).
}).



#pos(p_11156@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,43).
dist(id1,id0,1,43).
}).



#pos(p_11157@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,44).
dist(id1,id0,1,44).
}).



#pos(p_11158@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,42).
dist(id1,id0,1,42).
}).



#pos(p_11159@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,42).
dist(id1,id0,1,42).
}).



#pos(p_11160@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,42).
dist(id1,id0,1,42).
}).



#pos(p_11161@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,42).
dist(id1,id0,1,42).
}).



#pos(p_11162@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,42).
dist(id1,id0,1,42).
}).



#pos(p_11163@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,43).
dist(id1,id0,1,43).
}).



#pos(p_11164@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,43).
dist(id1,id0,1,43).
}).



#pos(p_11165@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,42).
dist(id1,id0,1,42).
}).



#pos(p_11166@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,42).
dist(id1,id0,1,42).
}).



#pos(p_11167@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,41).
dist(id1,id0,1,41).
}).



#pos(p_11168@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,42).
dist(id1,id0,1,42).
}).



#pos(p_11169@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,41).
dist(id1,id0,1,41).
}).



#pos(p_11170@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,42).
dist(id1,id0,1,42).
}).



#pos(p_11171@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,43).
dist(id1,id0,1,43).
}).



#pos(p_11172@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,44).
dist(id1,id0,1,44).
}).



#pos(p_11173@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,44).
dist(id1,id0,1,44).
}).



#pos(p_11174@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,45).
dist(id1,id0,1,45).
}).



#pos(p_11175@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,45).
dist(id1,id0,1,45).
}).



#pos(p_11176@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
}).



#pos(p_11177@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
}).



#pos(p_11178@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
}).



#pos(p_11179@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
}).



#pos(p_11180@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,47).
dist(id1,id0,1,47).
}).



#pos(p_11181@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,47).
dist(id1,id0,1,47).
}).



#pos(p_11182@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,47).
dist(id1,id0,1,47).
}).



#pos(p_11183@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
}).



#pos(p_11184@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
}).



#pos(p_11185@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,48).
dist(id1,id0,1,48).
}).



#pos(p_11186@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,48).
dist(id1,id0,1,48).
}).



#pos(p_11187@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,49).
dist(id1,id0,1,49).
}).



#pos(p_11188@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,49).
dist(id1,id0,1,49).
}).



#pos(p_11189@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,49).
dist(id1,id0,1,49).
}).



#pos(p_11190@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,51).
dist(id1,id0,1,51).
}).



#pos(p_11191@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,51).
dist(id1,id0,1,51).
}).



#pos(p_11192@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,50).
dist(id1,id0,1,50).
}).



#pos(p_11193@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,50).
dist(id1,id0,1,50).
}).



#pos(p_11194@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,50).
dist(id1,id0,1,50).
}).



#pos(p_11195@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,50).
dist(id1,id0,1,50).
}).



#pos(p_11196@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,50).
dist(id1,id0,1,50).
}).



#pos(p_11197@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,51).
dist(id1,id0,1,51).
}).



#pos(p_11198@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,51).
dist(id1,id0,1,51).
}).



#pos(p_11199@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,52).
dist(id1,id0,1,52).
}).



#pos(p_11200@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,53).
dist(id1,id0,1,53).
}).



#pos(p_11201@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,53).
dist(id1,id0,1,53).
}).



#pos(p_11202@100, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,53).
dist(id1,id0,1,53).
}).



#pos(p_11203@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,55).
dist(id1,id0,1,55).
}).



#pos(p_126@100, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,199).
dist(id1,id0,1,199).
dist(id0,id2,1,200).
dist(id2,id0,1,200).
dist(id1,id2,1,17).
dist(id2,id1,1,17).
}).



#pos(p_127@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,201).
dist(id1,id0,1,201).
dist(id0,id2,1,202).
dist(id2,id0,1,202).
dist(id1,id2,1,17).
dist(id2,id1,1,17).
}).



#pos(p_128@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,202).
dist(id1,id0,1,202).
dist(id0,id2,1,204).
dist(id2,id0,1,204).
dist(id1,id2,1,17).
dist(id2,id1,1,17).
}).



#pos(p_129@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,203).
dist(id1,id0,1,203).
dist(id0,id2,1,205).
dist(id2,id0,1,205).
dist(id1,id2,1,17).
dist(id2,id1,1,17).
}).



#pos(p_130@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,205).
dist(id1,id0,1,205).
dist(id0,id2,1,207).
dist(id2,id0,1,207).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_131@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,207).
dist(id1,id0,1,207).
dist(id0,id2,1,210).
dist(id2,id0,1,210).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_132@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,207).
dist(id1,id0,1,207).
dist(id0,id2,1,211).
dist(id2,id0,1,211).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_133@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,207).
dist(id1,id0,1,207).
dist(id0,id2,1,212).
dist(id2,id0,1,212).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_134@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,209).
dist(id1,id0,1,209).
dist(id0,id2,1,214).
dist(id2,id0,1,214).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_135@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,210).
dist(id1,id0,1,210).
dist(id0,id2,1,215).
dist(id2,id0,1,215).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_136@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,212).
dist(id1,id0,1,212).
dist(id0,id2,1,217).
dist(id2,id0,1,217).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_137@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,213).
dist(id1,id0,1,213).
dist(id0,id2,1,218).
dist(id2,id0,1,218).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_138@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,222).
dist(id2,id0,1,222).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_139@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,219).
dist(id1,id0,1,219).
dist(id0,id2,1,224).
dist(id2,id0,1,224).
dist(id1,id2,1,17).
dist(id2,id1,1,17).
}).



#pos(p_140@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,222).
dist(id1,id0,1,222).
dist(id0,id2,1,228).
dist(id2,id0,1,228).
dist(id1,id2,1,17).
dist(id2,id1,1,17).
}).



#pos(p_141@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,226).
dist(id1,id0,1,226).
dist(id0,id2,1,232).
dist(id2,id0,1,232).
dist(id1,id2,1,17).
dist(id2,id1,1,17).
}).



#pos(p_142@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,229).
dist(id1,id0,1,229).
dist(id0,id2,1,235).
dist(id2,id0,1,235).
dist(id1,id2,1,17).
dist(id2,id1,1,17).
}).



#pos(p_143@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,231).
dist(id1,id0,1,231).
dist(id0,id2,1,237).
dist(id2,id0,1,237).
dist(id1,id2,1,17).
dist(id2,id1,1,17).
}).



#pos(p_144@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,233).
dist(id1,id0,1,233).
dist(id0,id2,1,238).
dist(id2,id0,1,238).
dist(id1,id2,1,17).
dist(id2,id1,1,17).
}).



#pos(p_145@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,234).
dist(id1,id0,1,234).
dist(id0,id2,1,240).
dist(id2,id0,1,240).
dist(id1,id2,1,17).
dist(id2,id1,1,17).
}).



#pos(p_146@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,237).
dist(id1,id0,1,237).
dist(id0,id2,1,242).
dist(id2,id0,1,242).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_147@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,239).
dist(id1,id0,1,239).
dist(id0,id2,1,245).
dist(id2,id0,1,245).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_148@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,240).
dist(id1,id0,1,240).
dist(id0,id2,1,246).
dist(id2,id0,1,246).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_149@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,243).
dist(id1,id0,1,243).
dist(id0,id2,1,249).
dist(id2,id0,1,249).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_150@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,245).
dist(id1,id0,1,245).
dist(id0,id2,1,251).
dist(id2,id0,1,251).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_151@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,246).
dist(id1,id0,1,246).
dist(id0,id2,1,251).
dist(id2,id0,1,251).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_152@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,248).
dist(id1,id0,1,248).
dist(id0,id2,1,253).
dist(id2,id0,1,253).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_153@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,249).
dist(id1,id0,1,249).
dist(id0,id2,1,254).
dist(id2,id0,1,254).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_154@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,249).
dist(id1,id0,1,249).
dist(id0,id2,1,254).
dist(id2,id0,1,254).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_155@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,249).
dist(id1,id0,1,249).
dist(id0,id2,1,254).
dist(id2,id0,1,254).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_156@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,249).
dist(id1,id0,1,249).
dist(id0,id2,1,254).
dist(id2,id0,1,254).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_157@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,249).
dist(id1,id0,1,249).
dist(id0,id2,1,254).
dist(id2,id0,1,254).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_158@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,250).
dist(id1,id0,1,250).
dist(id0,id2,1,254).
dist(id2,id0,1,254).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_159@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,256).
dist(id1,id0,1,256).
dist(id0,id2,1,260).
dist(id2,id0,1,260).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_160@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,258).
dist(id1,id0,1,258).
dist(id0,id2,1,263).
dist(id2,id0,1,263).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_161@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,260).
dist(id1,id0,1,260).
dist(id0,id2,1,265).
dist(id2,id0,1,265).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_162@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(disappear(id0),1).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,259).
dist(id1,id0,1,259).
dist(id0,id2,1,264).
dist(id2,id0,1,264).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_163@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_164@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_165@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_166@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_167@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_168@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_169@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_170@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_171@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_172@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_173@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_174@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_175@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_176@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_177@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_178@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_179@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_180@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_181@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_182@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_183@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_184@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_185@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_186@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_187@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_188@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_189@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_190@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_191@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_192@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_193@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_194@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_195@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_196@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_197@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_198@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_199@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_200@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_201@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_202@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_203@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_204@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_205@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_206@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_207@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_208@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_209@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_210@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_211@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_212@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_213@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_214@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_215@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_216@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_217@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_218@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_219@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(appear(id0),1).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,222).
dist(id1,id0,1,222).
dist(id0,id2,1,227).
dist(id2,id0,1,227).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_220@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,222).
dist(id1,id0,1,222).
dist(id0,id2,1,227).
dist(id2,id0,1,227).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_221@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,222).
dist(id1,id0,1,222).
dist(id0,id2,1,227).
dist(id2,id0,1,227).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_222@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,221).
dist(id1,id0,1,221).
dist(id0,id2,1,226).
dist(id2,id0,1,226).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_223@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,221).
dist(id1,id0,1,221).
dist(id0,id2,1,226).
dist(id2,id0,1,226).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_224@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,221).
dist(id1,id0,1,221).
dist(id0,id2,1,226).
dist(id2,id0,1,226).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_225@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,221).
dist(id1,id0,1,221).
dist(id0,id2,1,226).
dist(id2,id0,1,226).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_226@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,221).
dist(id1,id0,1,221).
dist(id0,id2,1,226).
dist(id2,id0,1,226).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_227@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,220).
dist(id1,id0,1,220).
dist(id0,id2,1,224).
dist(id2,id0,1,224).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_228@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,220).
dist(id1,id0,1,220).
dist(id0,id2,1,224).
dist(id2,id0,1,224).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_229@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,220).
dist(id1,id0,1,220).
dist(id0,id2,1,224).
dist(id2,id0,1,224).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_230@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,213).
dist(id1,id0,1,213).
dist(id0,id2,1,218).
dist(id2,id0,1,218).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_231@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,211).
dist(id1,id0,1,211).
dist(id0,id2,1,216).
dist(id2,id0,1,216).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_232@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,206).
dist(id1,id0,1,206).
dist(id0,id2,1,211).
dist(id2,id0,1,211).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_233@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,203).
dist(id1,id0,1,203).
dist(id0,id2,1,207).
dist(id2,id0,1,207).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_234@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,202).
dist(id1,id0,1,202).
dist(id0,id2,1,207).
dist(id2,id0,1,207).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_235@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,202).
dist(id1,id0,1,202).
dist(id0,id2,1,207).
dist(id2,id0,1,207).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_236@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,202).
dist(id1,id0,1,202).
dist(id0,id2,1,207).
dist(id2,id0,1,207).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_237@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,202).
dist(id1,id0,1,202).
dist(id0,id2,1,207).
dist(id2,id0,1,207).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_238@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,201).
dist(id1,id0,1,201).
dist(id0,id2,1,206).
dist(id2,id0,1,206).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_239@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,199).
dist(id1,id0,1,199).
dist(id0,id2,1,204).
dist(id2,id0,1,204).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_240@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,198).
dist(id1,id0,1,198).
dist(id0,id2,1,203).
dist(id2,id0,1,203).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_241@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,197).
dist(id1,id0,1,197).
dist(id0,id2,1,202).
dist(id2,id0,1,202).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_242@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,197).
dist(id1,id0,1,197).
dist(id0,id2,1,201).
dist(id2,id0,1,201).
dist(id1,id2,1,14).
dist(id2,id1,1,14).
}).



#pos(p_243@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
dist(id0,id2,1,199).
dist(id2,id0,1,199).
dist(id1,id2,1,14).
dist(id2,id1,1,14).
}).



#pos(p_244@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,193).
dist(id1,id0,1,193).
dist(id0,id2,1,197).
dist(id2,id0,1,197).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_245@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,192).
dist(id1,id0,1,192).
dist(id0,id2,1,195).
dist(id2,id0,1,195).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_246@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,190).
dist(id1,id0,1,190).
dist(id0,id2,1,194).
dist(id2,id0,1,194).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_247@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,189).
dist(id1,id0,1,189).
dist(id0,id2,1,193).
dist(id2,id0,1,193).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_248@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,188).
dist(id1,id0,1,188).
dist(id0,id2,1,191).
dist(id2,id0,1,191).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_249@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,188).
dist(id1,id0,1,188).
dist(id0,id2,1,191).
dist(id2,id0,1,191).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_250@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,187).
dist(id1,id0,1,187).
dist(id0,id2,1,190).
dist(id2,id0,1,190).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_251@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,183).
dist(id1,id0,1,183).
dist(id0,id2,1,187).
dist(id2,id0,1,187).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_252@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,183).
dist(id1,id0,1,183).
dist(id0,id2,1,186).
dist(id2,id0,1,186).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_253@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
dist(id0,id2,1,183).
dist(id2,id0,1,183).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_254@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,178).
dist(id1,id0,1,178).
dist(id0,id2,1,182).
dist(id2,id0,1,182).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_255@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,175).
dist(id1,id0,1,175).
dist(id0,id2,1,179).
dist(id2,id0,1,179).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_256@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,174).
dist(id1,id0,1,174).
dist(id0,id2,1,177).
dist(id2,id0,1,177).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_257@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,173).
dist(id1,id0,1,173).
dist(id0,id2,1,176).
dist(id2,id0,1,176).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_258@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,170).
dist(id1,id0,1,170).
dist(id0,id2,1,174).
dist(id2,id0,1,174).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_259@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,170).
dist(id1,id0,1,170).
dist(id0,id2,1,173).
dist(id2,id0,1,173).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_260@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,169).
dist(id1,id0,1,169).
dist(id0,id2,1,171).
dist(id2,id0,1,171).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_261@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,168).
dist(id1,id0,1,168).
dist(id0,id2,1,171).
dist(id2,id0,1,171).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_262@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,167).
dist(id1,id0,1,167).
dist(id0,id2,1,171).
dist(id2,id0,1,171).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_263@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,166).
dist(id1,id0,1,166).
dist(id0,id2,1,170).
dist(id2,id0,1,170).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_264@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,164).
dist(id1,id0,1,164).
dist(id0,id2,1,168).
dist(id2,id0,1,168).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_265@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,162).
dist(id1,id0,1,162).
dist(id0,id2,1,166).
dist(id2,id0,1,166).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_266@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,158).
dist(id1,id0,1,158).
dist(id0,id2,1,162).
dist(id2,id0,1,162).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_267@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,157).
dist(id1,id0,1,157).
dist(id0,id2,1,161).
dist(id2,id0,1,161).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_268@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,156).
dist(id1,id0,1,156).
dist(id0,id2,1,160).
dist(id2,id0,1,160).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_269@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,155).
dist(id1,id0,1,155).
dist(id0,id2,1,159).
dist(id2,id0,1,159).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_270@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,154).
dist(id1,id0,1,154).
dist(id0,id2,1,157).
dist(id2,id0,1,157).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_271@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,152).
dist(id1,id0,1,152).
dist(id0,id2,1,157).
dist(id2,id0,1,157).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_272@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,151).
dist(id1,id0,1,151).
dist(id0,id2,1,156).
dist(id2,id0,1,156).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_273@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,151).
dist(id1,id0,1,151).
dist(id0,id2,1,156).
dist(id2,id0,1,156).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_274@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,151).
dist(id1,id0,1,151).
dist(id0,id2,1,155).
dist(id2,id0,1,155).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_275@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,148).
dist(id1,id0,1,148).
dist(id0,id2,1,153).
dist(id2,id0,1,153).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_276@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,148).
dist(id1,id0,1,148).
dist(id0,id2,1,152).
dist(id2,id0,1,152).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_277@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,146).
dist(id1,id0,1,146).
dist(id0,id2,1,149).
dist(id2,id0,1,149).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_278@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,142).
dist(id1,id0,1,142).
dist(id0,id2,1,147).
dist(id2,id0,1,147).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_279@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,142).
dist(id1,id0,1,142).
dist(id0,id2,1,146).
dist(id2,id0,1,146).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_280@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,140).
dist(id1,id0,1,140).
dist(id0,id2,1,143).
dist(id2,id0,1,143).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_281@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,140).
dist(id1,id0,1,140).
dist(id0,id2,1,143).
dist(id2,id0,1,143).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_282@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,137).
dist(id1,id0,1,137).
dist(id0,id2,1,141).
dist(id2,id0,1,141).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_283@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,138).
dist(id1,id0,1,138).
dist(id0,id2,1,141).
dist(id2,id0,1,141).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_284@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,136).
dist(id1,id0,1,136).
dist(id0,id2,1,140).
dist(id2,id0,1,140).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_285@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,135).
dist(id1,id0,1,135).
dist(id0,id2,1,138).
dist(id2,id0,1,138).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_286@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,135).
dist(id1,id0,1,135).
dist(id0,id2,1,139).
dist(id2,id0,1,139).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_287@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,134).
dist(id1,id0,1,134).
dist(id0,id2,1,138).
dist(id2,id0,1,138).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_288@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,133).
dist(id1,id0,1,133).
dist(id0,id2,1,135).
dist(id2,id0,1,135).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_289@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,131).
dist(id1,id0,1,131).
dist(id0,id2,1,133).
dist(id2,id0,1,133).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_290@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,130).
dist(id1,id0,1,130).
dist(id0,id2,1,132).
dist(id2,id0,1,132).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_291@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,127).
dist(id1,id0,1,127).
dist(id0,id2,1,129).
dist(id2,id0,1,129).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_292@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,126).
dist(id1,id0,1,126).
dist(id0,id2,1,128).
dist(id2,id0,1,128).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_293@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,125).
dist(id1,id0,1,125).
dist(id0,id2,1,127).
dist(id2,id0,1,127).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_294@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,125).
dist(id1,id0,1,125).
dist(id0,id2,1,127).
dist(id2,id0,1,127).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_295@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,124).
dist(id1,id0,1,124).
dist(id0,id2,1,126).
dist(id2,id0,1,126).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_296@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,124).
dist(id1,id0,1,124).
dist(id0,id2,1,126).
dist(id2,id0,1,126).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_297@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,124).
dist(id1,id0,1,124).
dist(id0,id2,1,125).
dist(id2,id0,1,125).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_298@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,123).
dist(id1,id0,1,123).
dist(id0,id2,1,125).
dist(id2,id0,1,125).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_299@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,123).
dist(id1,id0,1,123).
dist(id0,id2,1,125).
dist(id2,id0,1,125).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_300@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,122).
dist(id1,id0,1,122).
dist(id0,id2,1,124).
dist(id2,id0,1,124).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_301@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,121).
dist(id1,id0,1,121).
dist(id0,id2,1,123).
dist(id2,id0,1,123).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_302@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,119).
dist(id1,id0,1,119).
dist(id0,id2,1,121).
dist(id2,id0,1,121).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_303@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
dist(id0,id2,1,119).
dist(id2,id0,1,119).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_304@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,117).
dist(id1,id0,1,117).
dist(id0,id2,1,118).
dist(id2,id0,1,118).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_305@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,116).
dist(id1,id0,1,116).
dist(id0,id2,1,117).
dist(id2,id0,1,117).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_306@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,114).
dist(id1,id0,1,114).
dist(id0,id2,1,115).
dist(id2,id0,1,115).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_307@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,113).
dist(id1,id0,1,113).
dist(id0,id2,1,114).
dist(id2,id0,1,114).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_308@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,113).
dist(id1,id0,1,113).
dist(id0,id2,1,113).
dist(id2,id0,1,113).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_309@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,112).
dist(id1,id0,1,112).
dist(id0,id2,1,112).
dist(id2,id0,1,112).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_310@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,112).
dist(id1,id0,1,112).
dist(id0,id2,1,112).
dist(id2,id0,1,112).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_311@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,112).
dist(id1,id0,1,112).
dist(id0,id2,1,111).
dist(id2,id0,1,111).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_312@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,112).
dist(id1,id0,1,112).
dist(id0,id2,1,111).
dist(id2,id0,1,111).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_313@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,110).
dist(id1,id0,1,110).
dist(id0,id2,1,109).
dist(id2,id0,1,109).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_314@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,110).
dist(id1,id0,1,110).
dist(id0,id2,1,108).
dist(id2,id0,1,108).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_315@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,107).
dist(id1,id0,1,107).
dist(id0,id2,1,107).
dist(id2,id0,1,107).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_316@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,106).
dist(id1,id0,1,106).
dist(id0,id2,1,105).
dist(id2,id0,1,105).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_317@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,105).
dist(id1,id0,1,105).
dist(id0,id2,1,104).
dist(id2,id0,1,104).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_318@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,105).
dist(id1,id0,1,105).
dist(id0,id2,1,104).
dist(id2,id0,1,104).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_319@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,105).
dist(id1,id0,1,105).
dist(id0,id2,1,104).
dist(id2,id0,1,104).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_320@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,105).
dist(id1,id0,1,105).
dist(id0,id2,1,104).
dist(id2,id0,1,104).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_321@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,105).
dist(id1,id0,1,105).
dist(id0,id2,1,103).
dist(id2,id0,1,103).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_322@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,105).
dist(id1,id0,1,105).
dist(id0,id2,1,103).
dist(id2,id0,1,103).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_323@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,104).
dist(id1,id0,1,104).
dist(id0,id2,1,102).
dist(id2,id0,1,102).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_324@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,104).
dist(id1,id0,1,104).
dist(id0,id2,1,102).
dist(id2,id0,1,102).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_325@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,103).
dist(id1,id0,1,103).
dist(id0,id2,1,101).
dist(id2,id0,1,101).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_326@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,103).
dist(id1,id0,1,103).
dist(id0,id2,1,101).
dist(id2,id0,1,101).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_327@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,102).
dist(id1,id0,1,102).
dist(id0,id2,1,100).
dist(id2,id0,1,100).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_328@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,101).
dist(id1,id0,1,101).
dist(id0,id2,1,98).
dist(id2,id0,1,98).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_329@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,100).
dist(id1,id0,1,100).
dist(id0,id2,1,97).
dist(id2,id0,1,97).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_330@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,98).
dist(id1,id0,1,98).
dist(id0,id2,1,95).
dist(id2,id0,1,95).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_331@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,97).
dist(id1,id0,1,97).
dist(id0,id2,1,94).
dist(id2,id0,1,94).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_332@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,97).
dist(id1,id0,1,97).
dist(id0,id2,1,93).
dist(id2,id0,1,93).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_333@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,97).
dist(id1,id0,1,97).
dist(id0,id2,1,94).
dist(id2,id0,1,94).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_334@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,97).
dist(id1,id0,1,97).
dist(id0,id2,1,94).
dist(id2,id0,1,94).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_335@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,96).
dist(id1,id0,1,96).
dist(id0,id2,1,93).
dist(id2,id0,1,93).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_336@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,97).
dist(id1,id0,1,97).
dist(id0,id2,1,93).
dist(id2,id0,1,93).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_337@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,97).
dist(id1,id0,1,97).
dist(id0,id2,1,93).
dist(id2,id0,1,93).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_338@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,95).
dist(id1,id0,1,95).
dist(id0,id2,1,92).
dist(id2,id0,1,92).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_339@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,95).
dist(id1,id0,1,95).
dist(id0,id2,1,92).
dist(id2,id0,1,92).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_340@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,94).
dist(id1,id0,1,94).
dist(id0,id2,1,90).
dist(id2,id0,1,90).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_341@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,93).
dist(id1,id0,1,93).
dist(id0,id2,1,89).
dist(id2,id0,1,89).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_342@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,93).
dist(id1,id0,1,93).
dist(id0,id2,1,89).
dist(id2,id0,1,89).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_343@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,92).
dist(id1,id0,1,92).
dist(id0,id2,1,88).
dist(id2,id0,1,88).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_344@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,92).
dist(id1,id0,1,92).
dist(id0,id2,1,88).
dist(id2,id0,1,88).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_345@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,92).
dist(id1,id0,1,92).
dist(id0,id2,1,88).
dist(id2,id0,1,88).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_346@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,92).
dist(id1,id0,1,92).
dist(id0,id2,1,88).
dist(id2,id0,1,88).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_347@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,93).
dist(id1,id0,1,93).
dist(id0,id2,1,87).
dist(id2,id0,1,87).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_348@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,92).
dist(id1,id0,1,92).
dist(id0,id2,1,87).
dist(id2,id0,1,87).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_349@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,92).
dist(id1,id0,1,92).
dist(id0,id2,1,87).
dist(id2,id0,1,87).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_350@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,92).
dist(id1,id0,1,92).
dist(id0,id2,1,87).
dist(id2,id0,1,87).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_351@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,92).
dist(id1,id0,1,92).
dist(id0,id2,1,85).
dist(id2,id0,1,85).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_352@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,91).
dist(id1,id0,1,91).
dist(id0,id2,1,85).
dist(id2,id0,1,85).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_353@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,91).
dist(id1,id0,1,91).
dist(id0,id2,1,85).
dist(id2,id0,1,85).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_354@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,91).
dist(id1,id0,1,91).
dist(id0,id2,1,85).
dist(id2,id0,1,85).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_355@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,88).
dist(id1,id0,1,88).
dist(id0,id2,1,82).
dist(id2,id0,1,82).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_356@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,87).
dist(id1,id0,1,87).
dist(id0,id2,1,81).
dist(id2,id0,1,81).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_357@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,87).
dist(id1,id0,1,87).
dist(id0,id2,1,81).
dist(id2,id0,1,81).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_358@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,87).
dist(id1,id0,1,87).
dist(id0,id2,1,81).
dist(id2,id0,1,81).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_359@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,87).
dist(id1,id0,1,87).
dist(id0,id2,1,81).
dist(id2,id0,1,81).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_360@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,87).
dist(id1,id0,1,87).
dist(id0,id2,1,80).
dist(id2,id0,1,80).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_361@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,87).
dist(id1,id0,1,87).
dist(id0,id2,1,81).
dist(id2,id0,1,81).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_362@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,87).
dist(id1,id0,1,87).
dist(id0,id2,1,81).
dist(id2,id0,1,81).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_363@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,87).
dist(id1,id0,1,87).
dist(id0,id2,1,81).
dist(id2,id0,1,81).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_364@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,87).
dist(id1,id0,1,87).
dist(id0,id2,1,80).
dist(id2,id0,1,80).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_365@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,87).
dist(id1,id0,1,87).
dist(id0,id2,1,80).
dist(id2,id0,1,80).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_366@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,86).
dist(id1,id0,1,86).
dist(id0,id2,1,79).
dist(id2,id0,1,79).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_367@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_368@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_369@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,79).
dist(id2,id0,1,79).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_370@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,79).
dist(id2,id0,1,79).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_371@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,79).
dist(id2,id0,1,79).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_372@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,79).
dist(id2,id0,1,79).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_373@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_374@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_375@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,79).
dist(id2,id0,1,79).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_376@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,79).
dist(id2,id0,1,79).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_377@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_378@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_379@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_380@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_381@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_382@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_383@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_384@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_385@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_386@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_387@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_388@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_389@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_390@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,86).
dist(id1,id0,1,86).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_391@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_392@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_393@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_394@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,86).
dist(id1,id0,1,86).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_395@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,86).
dist(id1,id0,1,86).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_396@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,87).
dist(id1,id0,1,87).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_397@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,87).
dist(id1,id0,1,87).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_398@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,87).
dist(id1,id0,1,87).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_399@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,87).
dist(id1,id0,1,87).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_400@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,86).
dist(id1,id0,1,86).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_401@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,86).
dist(id1,id0,1,86).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_402@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,86).
dist(id1,id0,1,86).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_403@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,86).
dist(id1,id0,1,86).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_404@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,86).
dist(id1,id0,1,86).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_405@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,86).
dist(id1,id0,1,86).
dist(id0,id2,1,79).
dist(id2,id0,1,79).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_406@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_407@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_408@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_409@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_410@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_411@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_412@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_413@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,83).
dist(id1,id0,1,83).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,8).
dist(id2,id1,1,8).
}).



#pos(p_414@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,83).
dist(id1,id0,1,83).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,8).
dist(id2,id1,1,8).
}).



#pos(p_415@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,82).
dist(id1,id0,1,82).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,8).
dist(id2,id1,1,8).
}).



#pos(p_416@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,79).
dist(id2,id0,1,79).
dist(id1,id2,1,8).
dist(id2,id1,1,8).
}).



#pos(p_417@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,83).
dist(id1,id0,1,83).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,8).
dist(id2,id1,1,8).
}).



#pos(p_418@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,83).
dist(id1,id0,1,83).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,8).
dist(id2,id1,1,8).
}).



#pos(p_419@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,83).
dist(id1,id0,1,83).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_420@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,82).
dist(id1,id0,1,82).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_421@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,83).
dist(id1,id0,1,83).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_422@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,83).
dist(id1,id0,1,83).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_423@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,83).
dist(id1,id0,1,83).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_424@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,83).
dist(id1,id0,1,83).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_425@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,83).
dist(id1,id0,1,83).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_426@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,83).
dist(id1,id0,1,83).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_427@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,83).
dist(id1,id0,1,83).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_428@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_429@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_430@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_431@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_432@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_433@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,75).
dist(id2,id0,1,75).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_434@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,75).
dist(id2,id0,1,75).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_435@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,75).
dist(id2,id0,1,75).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_436@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,75).
dist(id2,id0,1,75).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_437@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,86).
dist(id1,id0,1,86).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_438@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_439@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_440@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,73).
dist(id2,id0,1,73).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_441@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,86).
dist(id1,id0,1,86).
dist(id0,id2,1,74).
dist(id2,id0,1,74).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_442@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,87).
dist(id1,id0,1,87).
dist(id0,id2,1,75).
dist(id2,id0,1,75).
dist(id1,id2,1,13).
dist(id2,id1,1,13).
}).



#pos(p_443@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,87).
dist(id1,id0,1,87).
dist(id0,id2,1,74).
dist(id2,id0,1,74).
dist(id1,id2,1,14).
dist(id2,id1,1,14).
}).



#pos(p_444@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,89).
dist(id1,id0,1,89).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,14).
dist(id2,id1,1,14).
}).



#pos(p_445@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,89).
dist(id1,id0,1,89).
dist(id0,id2,1,75).
dist(id2,id0,1,75).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_446@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,90).
dist(id1,id0,1,90).
dist(id0,id2,1,75).
dist(id2,id0,1,75).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_447@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,90).
dist(id1,id0,1,90).
dist(id0,id2,1,75).
dist(id2,id0,1,75).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_448@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,89).
dist(id1,id0,1,89).
dist(id0,id2,1,74).
dist(id2,id0,1,74).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_449@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,89).
dist(id1,id0,1,89).
dist(id0,id2,1,74).
dist(id2,id0,1,74).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_450@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,90).
dist(id1,id0,1,90).
dist(id0,id2,1,75).
dist(id2,id0,1,75).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_451@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,90).
dist(id1,id0,1,90).
dist(id0,id2,1,75).
dist(id2,id0,1,75).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_452@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,90).
dist(id1,id0,1,90).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_453@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,90).
dist(id1,id0,1,90).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_454@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,91).
dist(id1,id0,1,91).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_455@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,92).
dist(id1,id0,1,92).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_456@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,92).
dist(id1,id0,1,92).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_457@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,92).
dist(id1,id0,1,92).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_458@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,92).
dist(id1,id0,1,92).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_459@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,92).
dist(id1,id0,1,92).
dist(id0,id2,1,76).
dist(id2,id0,1,76).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_460@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,93).
dist(id1,id0,1,93).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_461@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,93).
dist(id1,id0,1,93).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_462@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,93).
dist(id1,id0,1,93).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_463@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,94).
dist(id1,id0,1,94).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,17).
dist(id2,id1,1,17).
}).



#pos(p_464@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,94).
dist(id1,id0,1,94).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,17).
dist(id2,id1,1,17).
}).



#pos(p_465@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,95).
dist(id1,id0,1,95).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,17).
dist(id2,id1,1,17).
}).



#pos(p_466@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,95).
dist(id1,id0,1,95).
dist(id0,id2,1,79).
dist(id2,id0,1,79).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_467@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,96).
dist(id1,id0,1,96).
dist(id0,id2,1,80).
dist(id2,id0,1,80).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_468@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,97).
dist(id1,id0,1,97).
dist(id0,id2,1,80).
dist(id2,id0,1,80).
dist(id1,id2,1,17).
dist(id2,id1,1,17).
}).



#pos(p_469@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,98).
dist(id1,id0,1,98).
dist(id0,id2,1,82).
dist(id2,id0,1,82).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_470@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,99).
dist(id1,id0,1,99).
dist(id0,id2,1,83).
dist(id2,id0,1,83).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_471@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,99).
dist(id1,id0,1,99).
dist(id0,id2,1,83).
dist(id2,id0,1,83).
dist(id1,id2,1,16).
dist(id2,id1,1,16).
}).



#pos(p_472@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,99).
dist(id1,id0,1,99).
dist(id0,id2,1,82).
dist(id2,id0,1,82).
dist(id1,id2,1,17).
dist(id2,id1,1,17).
}).



#pos(p_473@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,99).
dist(id1,id0,1,99).
dist(id0,id2,1,81).
dist(id2,id0,1,81).
dist(id1,id2,1,18).
dist(id2,id1,1,18).
}).



#pos(p_474@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,100).
dist(id1,id0,1,100).
dist(id0,id2,1,81).
dist(id2,id0,1,81).
dist(id1,id2,1,19).
dist(id2,id1,1,19).
}).



#pos(p_475@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,101).
dist(id1,id0,1,101).
dist(id0,id2,1,82).
dist(id2,id0,1,82).
dist(id1,id2,1,19).
dist(id2,id1,1,19).
}).



#pos(p_476@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,102).
dist(id1,id0,1,102).
dist(id0,id2,1,83).
dist(id2,id0,1,83).
dist(id1,id2,1,19).
dist(id2,id1,1,19).
}).



#pos(p_477@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,103).
dist(id1,id0,1,103).
dist(id0,id2,1,83).
dist(id2,id0,1,83).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_478@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,104).
dist(id1,id0,1,104).
dist(id0,id2,1,84).
dist(id2,id0,1,84).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_479@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,103).
dist(id1,id0,1,103).
dist(id0,id2,1,84).
dist(id2,id0,1,84).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_480@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(active(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,104).
dist(id1,id0,1,104).
dist(id0,id2,1,85).
dist(id2,id0,1,85).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_481@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,105).
dist(id1,id0,1,105).
dist(id0,id2,1,86).
dist(id2,id0,1,86).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_482@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,105).
dist(id1,id0,1,105).
dist(id0,id2,1,86).
dist(id2,id0,1,86).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_483@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,106).
dist(id1,id0,1,106).
dist(id0,id2,1,87).
dist(id2,id0,1,87).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_484@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,106).
dist(id1,id0,1,106).
dist(id0,id2,1,87).
dist(id2,id0,1,87).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_485@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,106).
dist(id1,id0,1,106).
dist(id0,id2,1,87).
dist(id2,id0,1,87).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_486@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,106).
dist(id1,id0,1,106).
dist(id0,id2,1,87).
dist(id2,id0,1,87).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_487@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,106).
dist(id1,id0,1,106).
dist(id0,id2,1,87).
dist(id2,id0,1,87).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_488@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,106).
dist(id1,id0,1,106).
dist(id0,id2,1,87).
dist(id2,id0,1,87).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_489@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,106).
dist(id1,id0,1,106).
dist(id0,id2,1,87).
dist(id2,id0,1,87).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_490@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,106).
dist(id1,id0,1,106).
dist(id0,id2,1,87).
dist(id2,id0,1,87).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_491@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,107).
dist(id1,id0,1,107).
dist(id0,id2,1,87).
dist(id2,id0,1,87).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_492@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,107).
dist(id1,id0,1,107).
dist(id0,id2,1,88).
dist(id2,id0,1,88).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_493@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,109).
dist(id1,id0,1,109).
dist(id0,id2,1,89).
dist(id2,id0,1,89).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_494@1, {}, {}, {
person(id0).
person(id1).
person(id2).
goal(holdsAt(meeting(id1,id2),2)).
goal(holdsAt(meeting(id2,id1),2)).
happensAt(disappear(id0),1).
happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(inactive(id2),1).
holdsAt(meeting(id1,id2),1).
holdsAt(meeting(id2,id1),1).
dist(id0,id1,1,110).
dist(id1,id0,1,110).
dist(id0,id2,1,90).
dist(id2,id0,1,90).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_495@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_496@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_497@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_498@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_499@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_500@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_501@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_502@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_503@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_504@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_505@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_506@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_507@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_508@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_509@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_510@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_511@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_512@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_513@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_514@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_515@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_516@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_517@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_518@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_519@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_520@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_521@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_522@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_523@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_524@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_525@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_526@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_527@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_528@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_529@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_530@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_531@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_532@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_533@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_534@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_535@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_536@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_537@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_538@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_539@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_540@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_541@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_542@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_543@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_544@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_545@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_546@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_547@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_548@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_549@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_550@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_551@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_552@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_553@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_554@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_555@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_556@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_557@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_558@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_559@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_560@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_561@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_562@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_563@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_564@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_565@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_566@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_567@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_568@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_569@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_570@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_571@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_572@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_573@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_574@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_575@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_576@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_577@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_578@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_579@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_580@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_581@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_582@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_583@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_584@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_585@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_586@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_587@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_588@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_589@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_590@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_591@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_592@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_593@100, {}, {}, {
person(id0).
person(id1).

happensAt(disappear(id0),1).
happensAt(disappear(id1),1).
happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_594@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(appear(id0),1).
happensAt(appear(id1),1).
happensAt(appear(id2),1).
dist(id0,id1,1,182).
dist(id1,id0,1,182).
dist(id0,id2,1,181).
dist(id2,id0,1,181).
dist(id1,id2,1,12).
dist(id2,id1,1,12).
}).



#pos(p_18254@100, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_18255@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_18256@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_18257@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_18258@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,13).
dist(id1,id0,1,13).
}).



#pos(p_18259@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,13).
dist(id1,id0,1,13).
}).



#pos(p_18260@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,13).
dist(id1,id0,1,13).
}).



#pos(p_18261@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18262@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18263@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18264@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,13).
dist(id1,id0,1,13).
}).



#pos(p_18265@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18266@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18267@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18268@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18269@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18270@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18271@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18272@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18273@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18274@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18275@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18276@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(inactive(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18277@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18278@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18279@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18280@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18281@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18282@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18283@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18284@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18285@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18286@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18287@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18288@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18289@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18290@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18291@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18292@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18293@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18294@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18295@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18296@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18297@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,13).
dist(id1,id0,1,13).
}).



#pos(p_18298@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_18299@100, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_18300@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,17).
dist(id1,id0,1,17).
}).



#pos(p_18944@100, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_18945@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_18946@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,13).
dist(id1,id0,1,13).
}).



#pos(p_18947@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,13).
dist(id1,id0,1,13).
}).



#pos(p_18948@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,13).
dist(id1,id0,1,13).
}).



#pos(p_18949@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18950@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18951@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18952@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_18953@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_18954@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_18955@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_18956@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_18957@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_18958@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_18959@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18960@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18961@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18962@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18963@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18964@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18965@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18966@100, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18967@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20157@100, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,13).
dist(id1,id0,1,13).
}).



#pos(p_20158@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,13).
dist(id1,id0,1,13).
}).



#pos(p_20159@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20160@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20161@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20162@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20163@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20164@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20165@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20166@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20167@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20168@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20169@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20170@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20171@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20172@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20173@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20174@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20175@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20176@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20177@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20178@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20179@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20180@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20181@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20182@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20183@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20184@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20185@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20186@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20187@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20188@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20189@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20190@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20191@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20192@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20193@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20194@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20195@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20196@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20197@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20198@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20199@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20200@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20201@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20202@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20203@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20204@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20205@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20206@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20207@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_20208@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20209@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20210@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20211@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,13).
dist(id1,id0,1,13).
}).



#pos(p_20212@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,13).
dist(id1,id0,1,13).
}).



#pos(p_20213@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_20214@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_20215@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_20216@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_20217@100, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_20218@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_12439@100, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,37).
dist(id1,id0,1,37).
}).



#pos(p_12440@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12441@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12442@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12443@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12444@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12445@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12446@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_12447@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_12448@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_12449@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_12450@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12451@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12452@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12453@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,37).
dist(id1,id0,1,37).
}).



#pos(p_12454@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12455@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_12456@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_12457@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12458@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12459@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_12460@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,34).
dist(id1,id0,1,34).
}).



#pos(p_12461@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,34).
dist(id1,id0,1,34).
}).



#pos(p_12462@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_12463@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_12464@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_12465@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_12466@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_12467@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(walking(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_12468@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_12469@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_12470@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_12471@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_12472@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_12473@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_12474@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_12475@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_12476@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_12477@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_12478@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_12479@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_12480@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_12481@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_12482@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_12483@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_12484@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_12485@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_12486@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_12487@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_12488@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_12489@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_12490@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_12491@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_12492@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_12493@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_12494@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_12495@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_12496@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_12497@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_12498@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_12499@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_12500@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
}).



#pos(p_12501@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
}).



#pos(p_12502@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,34).
dist(id1,id0,1,34).
}).



#pos(p_12503@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,34).
dist(id1,id0,1,34).
}).



#pos(p_12504@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,34).
dist(id1,id0,1,34).
}).



#pos(p_12505@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,34).
dist(id1,id0,1,34).
}).



#pos(p_12506@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_12507@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_12508@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_12509@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12510@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12511@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12512@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12513@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12514@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12515@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12516@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12517@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12518@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,37).
dist(id1,id0,1,37).
}).



#pos(p_12519@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,37).
dist(id1,id0,1,37).
}).



#pos(p_12520@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,37).
dist(id1,id0,1,37).
}).



#pos(p_12521@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,37).
dist(id1,id0,1,37).
}).



#pos(p_12522@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12523@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,37).
dist(id1,id0,1,37).
}).



#pos(p_12524@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,37).
dist(id1,id0,1,37).
}).



#pos(p_12525@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,37).
dist(id1,id0,1,37).
}).



#pos(p_12526@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,37).
dist(id1,id0,1,37).
}).



#pos(p_12527@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,37).
dist(id1,id0,1,37).
}).



#pos(p_12528@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12529@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12530@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12531@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12532@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12533@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12534@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12535@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,37).
dist(id1,id0,1,37).
}).



#pos(p_12536@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
}).



#pos(p_12537@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
}).



#pos(p_12538@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
}).



#pos(p_12539@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
}).



#pos(p_12540@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,37).
dist(id1,id0,1,37).
}).



#pos(p_12541@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12542@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12543@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_12544@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_12545@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_12546@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_12547@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_12548@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_12549@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_12550@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_12551@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_12552@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_12553@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_12554@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_12555@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,34).
dist(id1,id0,1,34).
}).



#pos(p_12556@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,34).
dist(id1,id0,1,34).
}).



#pos(p_12557@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,34).
dist(id1,id0,1,34).
}).



#pos(p_12558@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12559@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_12560@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
}).



#pos(p_12561@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
}).



#pos(p_12562@100, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
}).



#pos(p_12563@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,40).
dist(id1,id0,1,40).
}).



#pos(p_22813@100, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
person(id4).
person(id5).
goal(holdsAt(meeting(id0,id3),2)).
goal(holdsAt(meeting(id3,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(running(id2),1).
happensAt(walking(id3),1).
happensAt(running(id4),1).
happensAt(walking(id5),1).
dist(id0,id1,1,162).
dist(id1,id0,1,162).
dist(id0,id2,1,82).
dist(id2,id0,1,82).
dist(id1,id2,1,221).
dist(id2,id1,1,221).
dist(id0,id3,1,17).
dist(id3,id0,1,17).
dist(id1,id3,1,148).
dist(id3,id1,1,148).
dist(id2,id3,1,84).
dist(id3,id2,1,84).
dist(id0,id4,1,131).
dist(id4,id0,1,131).
dist(id1,id4,1,241).
dist(id4,id1,1,241).
dist(id2,id4,1,57).
dist(id4,id2,1,57).
dist(id3,id4,1,128).
dist(id4,id3,1,128).
dist(id0,id5,1,83).
dist(id5,id0,1,83).
dist(id1,id5,1,208).
dist(id5,id1,1,208).
dist(id2,id5,1,21).
dist(id5,id2,1,21).
dist(id3,id5,1,81).
dist(id5,id3,1,81).
dist(id4,id5,1,48).
dist(id5,id4,1,48).
}).



#pos(p_22814@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
person(id4).
person(id5).
goal(holdsAt(meeting(id0,id3),2)).
goal(holdsAt(meeting(id3,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(running(id2),1).
happensAt(walking(id3),1).
happensAt(running(id4),1).
happensAt(walking(id5),1).
holdsAt(meeting(id0,id3),1).
holdsAt(meeting(id3,id0),1).
dist(id0,id1,1,161).
dist(id1,id0,1,161).
dist(id0,id2,1,81).
dist(id2,id0,1,81).
dist(id1,id2,1,221).
dist(id2,id1,1,221).
dist(id0,id3,1,15).
dist(id3,id0,1,15).
dist(id1,id3,1,148).
dist(id3,id1,1,148).
dist(id2,id3,1,85).
dist(id3,id2,1,85).
dist(id0,id4,1,130).
dist(id4,id0,1,130).
dist(id1,id4,1,241).
dist(id4,id1,1,241).
dist(id2,id4,1,56).
dist(id4,id2,1,56).
dist(id3,id4,1,128).
dist(id4,id3,1,128).
dist(id0,id5,1,82).
dist(id5,id0,1,82).
dist(id1,id5,1,208).
dist(id5,id1,1,208).
dist(id2,id5,1,21).
dist(id5,id2,1,21).
dist(id3,id5,1,81).
dist(id5,id3,1,81).
dist(id4,id5,1,47).
dist(id5,id4,1,47).
}).



#pos(p_22815@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
person(id4).
person(id5).
goal(holdsAt(meeting(id0,id3),2)).
goal(holdsAt(meeting(id3,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(running(id2),1).
happensAt(walking(id3),1).
happensAt(running(id4),1).
happensAt(walking(id5),1).
holdsAt(meeting(id0,id3),1).
holdsAt(meeting(id3,id0),1).
dist(id0,id1,1,160).
dist(id1,id0,1,160).
dist(id0,id2,1,81).
dist(id2,id0,1,81).
dist(id1,id2,1,220).
dist(id2,id1,1,220).
dist(id0,id3,1,15).
dist(id3,id0,1,15).
dist(id1,id3,1,147).
dist(id3,id1,1,147).
dist(id2,id3,1,85).
dist(id3,id2,1,85).
dist(id0,id4,1,129).
dist(id4,id0,1,129).
dist(id1,id4,1,240).
dist(id4,id1,1,240).
dist(id2,id4,1,55).
dist(id4,id2,1,55).
dist(id3,id4,1,127).
dist(id4,id3,1,127).
dist(id0,id5,1,82).
dist(id5,id0,1,82).
dist(id1,id5,1,207).
dist(id5,id1,1,207).
dist(id2,id5,1,21).
dist(id5,id2,1,21).
dist(id3,id5,1,81).
dist(id5,id3,1,81).
dist(id4,id5,1,46).
dist(id5,id4,1,46).
}).



#pos(p_22816@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
person(id4).
person(id5).
goal(holdsAt(meeting(id0,id3),2)).
goal(holdsAt(meeting(id3,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(running(id2),1).
happensAt(walking(id3),1).
happensAt(running(id4),1).
happensAt(walking(id5),1).
holdsAt(meeting(id0,id3),1).
holdsAt(meeting(id3,id0),1).
dist(id0,id1,1,160).
dist(id1,id0,1,160).
dist(id0,id2,1,81).
dist(id2,id0,1,81).
dist(id1,id2,1,220).
dist(id2,id1,1,220).
dist(id0,id3,1,15).
dist(id3,id0,1,15).
dist(id1,id3,1,147).
dist(id3,id1,1,147).
dist(id2,id3,1,85).
dist(id3,id2,1,85).
dist(id0,id4,1,130).
dist(id4,id0,1,130).
dist(id1,id4,1,241).
dist(id4,id1,1,241).
dist(id2,id4,1,56).
dist(id4,id2,1,56).
dist(id3,id4,1,128).
dist(id4,id3,1,128).
dist(id0,id5,1,82).
dist(id5,id0,1,82).
dist(id1,id5,1,207).
dist(id5,id1,1,207).
dist(id2,id5,1,21).
dist(id5,id2,1,21).
dist(id3,id5,1,81).
dist(id5,id3,1,81).
dist(id4,id5,1,47).
dist(id5,id4,1,47).
}).



#pos(p_22817@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
person(id4).
person(id5).
goal(holdsAt(meeting(id0,id3),2)).
goal(holdsAt(meeting(id3,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(running(id2),1).
happensAt(walking(id3),1).
happensAt(running(id4),1).
happensAt(walking(id5),1).
holdsAt(meeting(id0,id3),1).
holdsAt(meeting(id3,id0),1).
dist(id0,id1,1,160).
dist(id1,id0,1,160).
dist(id0,id2,1,81).
dist(id2,id0,1,81).
dist(id1,id2,1,219).
dist(id2,id1,1,219).
dist(id0,id3,1,15).
dist(id3,id0,1,15).
dist(id1,id3,1,146).
dist(id3,id1,1,146).
dist(id2,id3,1,85).
dist(id3,id2,1,85).
dist(id0,id4,1,130).
dist(id4,id0,1,130).
dist(id1,id4,1,241).
dist(id4,id1,1,241).
dist(id2,id4,1,55).
dist(id4,id2,1,55).
dist(id3,id4,1,128).
dist(id4,id3,1,128).
dist(id0,id5,1,82).
dist(id5,id0,1,82).
dist(id1,id5,1,206).
dist(id5,id1,1,206).
dist(id2,id5,1,21).
dist(id5,id2,1,21).
dist(id3,id5,1,81).
dist(id5,id3,1,81).
dist(id4,id5,1,47).
dist(id5,id4,1,47).
}).



#pos(p_22818@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
person(id4).
person(id5).
goal(holdsAt(meeting(id0,id3),2)).
goal(holdsAt(meeting(id3,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(running(id2),1).
happensAt(walking(id3),1).
happensAt(running(id4),1).
happensAt(walking(id5),1).
holdsAt(meeting(id0,id3),1).
holdsAt(meeting(id3,id0),1).
dist(id0,id1,1,162).
dist(id1,id0,1,162).
dist(id0,id2,1,81).
dist(id2,id0,1,81).
dist(id1,id2,1,221).
dist(id2,id1,1,221).
dist(id0,id3,1,15).
dist(id3,id0,1,15).
dist(id1,id3,1,148).
dist(id3,id1,1,148).
dist(id2,id3,1,86).
dist(id3,id2,1,86).
dist(id0,id4,1,129).
dist(id4,id0,1,129).
dist(id1,id4,1,243).
dist(id4,id1,1,243).
dist(id2,id4,1,54).
dist(id4,id2,1,54).
dist(id3,id4,1,129).
dist(id4,id3,1,129).
dist(id0,id5,1,82).
dist(id5,id0,1,82).
dist(id1,id5,1,208).
dist(id5,id1,1,208).
dist(id2,id5,1,21).
dist(id5,id2,1,21).
dist(id3,id5,1,83).
dist(id5,id3,1,83).
dist(id4,id5,1,46).
dist(id5,id4,1,46).
}).



#pos(p_22819@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
person(id4).
person(id5).
goal(holdsAt(meeting(id0,id3),2)).
goal(holdsAt(meeting(id3,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(running(id2),1).
happensAt(walking(id3),1).
happensAt(running(id4),1).
happensAt(walking(id5),1).
happensAt(disappear(id2),1).
holdsAt(meeting(id0,id3),1).
holdsAt(meeting(id3,id0),1).
dist(id0,id1,1,162).
dist(id1,id0,1,162).
dist(id0,id2,1,81).
dist(id2,id0,1,81).
dist(id1,id2,1,221).
dist(id2,id1,1,221).
dist(id0,id3,1,16).
dist(id3,id0,1,16).
dist(id1,id3,1,147).
dist(id3,id1,1,147).
dist(id2,id3,1,87).
dist(id3,id2,1,87).
dist(id0,id4,1,129).
dist(id4,id0,1,129).
dist(id1,id4,1,243).
dist(id4,id1,1,243).
dist(id2,id4,1,54).
dist(id4,id2,1,54).
dist(id3,id4,1,130).
dist(id4,id3,1,130).
dist(id0,id5,1,82).
dist(id5,id0,1,82).
dist(id1,id5,1,208).
dist(id5,id1,1,208).
dist(id2,id5,1,21).
dist(id5,id2,1,21).
dist(id3,id5,1,84).
dist(id5,id3,1,84).
dist(id4,id5,1,46).
dist(id5,id4,1,46).
}).



#pos(p_22820@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
person(id4).
goal(holdsAt(meeting(id0,id2),2)).
goal(holdsAt(meeting(id2,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(running(id3),1).
happensAt(walking(id4),1).
holdsAt(meeting(id0,id2),1).
holdsAt(meeting(id2,id0),1).
dist(id0,id1,1,162).
dist(id1,id0,1,162).
dist(id0,id2,1,17).
dist(id2,id0,1,17).
dist(id1,id2,1,145).
dist(id2,id1,1,145).
dist(id0,id3,1,128).
dist(id3,id0,1,128).
dist(id1,id3,1,242).
dist(id3,id1,1,242).
dist(id2,id3,1,131).
dist(id3,id2,1,131).
dist(id0,id4,1,82).
dist(id4,id0,1,82).
dist(id1,id4,1,208).
dist(id4,id1,1,208).
dist(id2,id4,1,85).
dist(id4,id2,1,85).
dist(id3,id4,1,46).
dist(id4,id3,1,46).
}).



#pos(p_22821@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
person(id4).
goal(holdsAt(meeting(id0,id2),2)).
goal(holdsAt(meeting(id2,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(running(id3),1).
happensAt(walking(id4),1).
holdsAt(meeting(id0,id2),1).
holdsAt(meeting(id2,id0),1).
dist(id0,id1,1,162).
dist(id1,id0,1,162).
dist(id0,id2,1,17).
dist(id2,id0,1,17).
dist(id1,id2,1,145).
dist(id2,id1,1,145).
dist(id0,id3,1,128).
dist(id3,id0,1,128).
dist(id1,id3,1,244).
dist(id3,id1,1,244).
dist(id2,id3,1,132).
dist(id3,id2,1,132).
dist(id0,id4,1,82).
dist(id4,id0,1,82).
dist(id1,id4,1,209).
dist(id4,id1,1,209).
dist(id2,id4,1,87).
dist(id4,id2,1,87).
dist(id3,id4,1,46).
dist(id4,id3,1,46).
}).



#pos(p_22822@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
person(id4).
goal(holdsAt(meeting(id0,id2),2)).
goal(holdsAt(meeting(id2,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(running(id3),1).
happensAt(walking(id4),1).
holdsAt(meeting(id0,id2),1).
holdsAt(meeting(id2,id0),1).
dist(id0,id1,1,163).
dist(id1,id0,1,163).
dist(id0,id2,1,18).
dist(id2,id0,1,18).
dist(id1,id2,1,145).
dist(id2,id1,1,145).
dist(id0,id3,1,129).
dist(id3,id0,1,129).
dist(id1,id3,1,245).
dist(id3,id1,1,245).
dist(id2,id3,1,135).
dist(id3,id2,1,135).
dist(id0,id4,1,82).
dist(id4,id0,1,82).
dist(id1,id4,1,210).
dist(id4,id1,1,210).
dist(id2,id4,1,89).
dist(id4,id2,1,89).
dist(id3,id4,1,46).
dist(id4,id3,1,46).
}).



#pos(p_22823@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
person(id4).
goal(holdsAt(meeting(id0,id2),2)).
goal(holdsAt(meeting(id2,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(running(id3),1).
happensAt(walking(id4),1).
holdsAt(meeting(id0,id2),1).
holdsAt(meeting(id2,id0),1).
dist(id0,id1,1,162).
dist(id1,id0,1,162).
dist(id0,id2,1,18).
dist(id2,id0,1,18).
dist(id1,id2,1,144).
dist(id2,id1,1,144).
dist(id0,id3,1,128).
dist(id3,id0,1,128).
dist(id1,id3,1,244).
dist(id3,id1,1,244).
dist(id2,id3,1,135).
dist(id3,id2,1,135).
dist(id0,id4,1,82).
dist(id4,id0,1,82).
dist(id1,id4,1,209).
dist(id4,id1,1,209).
dist(id2,id4,1,89).
dist(id4,id2,1,89).
dist(id3,id4,1,46).
dist(id4,id3,1,46).
}).



#pos(p_22824@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
person(id4).
goal(holdsAt(meeting(id0,id2),2)).
goal(holdsAt(meeting(id2,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(running(id3),1).
happensAt(walking(id4),1).
holdsAt(meeting(id0,id2),1).
holdsAt(meeting(id2,id0),1).
dist(id0,id1,1,162).
dist(id1,id0,1,162).
dist(id0,id2,1,17).
dist(id2,id0,1,17).
dist(id1,id2,1,145).
dist(id2,id1,1,145).
dist(id0,id3,1,128).
dist(id3,id0,1,128).
dist(id1,id3,1,244).
dist(id3,id1,1,244).
dist(id2,id3,1,136).
dist(id3,id2,1,136).
dist(id0,id4,1,82).
dist(id4,id0,1,82).
dist(id1,id4,1,209).
dist(id4,id1,1,209).
dist(id2,id4,1,90).
dist(id4,id2,1,90).
dist(id3,id4,1,46).
dist(id4,id3,1,46).
}).



#pos(p_22825@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
person(id4).
goal(holdsAt(meeting(id0,id2),2)).
goal(holdsAt(meeting(id2,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(running(id3),1).
happensAt(walking(id4),1).
holdsAt(meeting(id0,id2),1).
holdsAt(meeting(id2,id0),1).
dist(id0,id1,1,162).
dist(id1,id0,1,162).
dist(id0,id2,1,18).
dist(id2,id0,1,18).
dist(id1,id2,1,144).
dist(id2,id1,1,144).
dist(id0,id3,1,127).
dist(id3,id0,1,127).
dist(id1,id3,1,244).
dist(id3,id1,1,244).
dist(id2,id3,1,137).
dist(id3,id2,1,137).
dist(id0,id4,1,82).
dist(id4,id0,1,82).
dist(id1,id4,1,209).
dist(id4,id1,1,209).
dist(id2,id4,1,93).
dist(id4,id2,1,93).
dist(id3,id4,1,44).
dist(id4,id3,1,44).
}).



#pos(p_22826@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
person(id4).
goal(holdsAt(meeting(id0,id2),2)).
goal(holdsAt(meeting(id2,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(running(id3),1).
happensAt(walking(id4),1).
holdsAt(meeting(id0,id2),1).
holdsAt(meeting(id2,id0),1).
dist(id0,id1,1,160).
dist(id1,id0,1,160).
dist(id0,id2,1,18).
dist(id2,id0,1,18).
dist(id1,id2,1,142).
dist(id2,id1,1,142).
dist(id0,id3,1,127).
dist(id3,id0,1,127).
dist(id1,id3,1,243).
dist(id3,id1,1,243).
dist(id2,id3,1,138).
dist(id3,id2,1,138).
dist(id0,id4,1,82).
dist(id4,id0,1,82).
dist(id1,id4,1,207).
dist(id4,id1,1,207).
dist(id2,id4,1,93).
dist(id4,id2,1,93).
dist(id3,id4,1,45).
dist(id4,id3,1,45).
}).



#pos(p_22827@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
person(id4).
goal(holdsAt(meeting(id0,id2),2)).
goal(holdsAt(meeting(id2,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(running(id3),1).
happensAt(walking(id4),1).
holdsAt(meeting(id0,id2),1).
holdsAt(meeting(id2,id0),1).
dist(id0,id1,1,162).
dist(id1,id0,1,162).
dist(id0,id2,1,18).
dist(id2,id0,1,18).
dist(id1,id2,1,144).
dist(id2,id1,1,144).
dist(id0,id3,1,126).
dist(id3,id0,1,126).
dist(id1,id3,1,245).
dist(id3,id1,1,245).
dist(id2,id3,1,138).
dist(id3,id2,1,138).
dist(id0,id4,1,82).
dist(id4,id0,1,82).
dist(id1,id4,1,209).
dist(id4,id1,1,209).
dist(id2,id4,1,94).
dist(id4,id2,1,94).
dist(id3,id4,1,43).
dist(id4,id3,1,43).
}).



#pos(p_22828@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
person(id4).
goal(holdsAt(meeting(id0,id2),2)).
goal(holdsAt(meeting(id2,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(running(id3),1).
happensAt(walking(id4),1).
holdsAt(meeting(id0,id2),1).
holdsAt(meeting(id2,id0),1).
dist(id0,id1,1,162).
dist(id1,id0,1,162).
dist(id0,id2,1,18).
dist(id2,id0,1,18).
dist(id1,id2,1,144).
dist(id2,id1,1,144).
dist(id0,id3,1,125).
dist(id3,id0,1,125).
dist(id1,id3,1,245).
dist(id3,id1,1,245).
dist(id2,id3,1,137).
dist(id3,id2,1,137).
dist(id0,id4,1,82).
dist(id4,id0,1,82).
dist(id1,id4,1,210).
dist(id4,id1,1,210).
dist(id2,id4,1,94).
dist(id4,id2,1,94).
dist(id3,id4,1,43).
dist(id4,id3,1,43).
}).



#pos(p_22829@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
person(id4).
goal(holdsAt(meeting(id0,id2),2)).
goal(holdsAt(meeting(id2,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(running(id3),1).
happensAt(walking(id4),1).
holdsAt(meeting(id0,id2),1).
holdsAt(meeting(id2,id0),1).
dist(id0,id1,1,162).
dist(id1,id0,1,162).
dist(id0,id2,1,18).
dist(id2,id0,1,18).
dist(id1,id2,1,144).
dist(id2,id1,1,144).
dist(id0,id3,1,125).
dist(id3,id0,1,125).
dist(id1,id3,1,245).
dist(id3,id1,1,245).
dist(id2,id3,1,138).
dist(id3,id2,1,138).
dist(id0,id4,1,82).
dist(id4,id0,1,82).
dist(id1,id4,1,210).
dist(id4,id1,1,210).
dist(id2,id4,1,95).
dist(id4,id2,1,95).
dist(id3,id4,1,43).
dist(id4,id3,1,43).
}).



#pos(p_22830@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
person(id4).
goal(holdsAt(meeting(id0,id2),2)).
goal(holdsAt(meeting(id2,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(running(id3),1).
happensAt(walking(id4),1).
holdsAt(meeting(id0,id2),1).
holdsAt(meeting(id2,id0),1).
dist(id0,id1,1,162).
dist(id1,id0,1,162).
dist(id0,id2,1,18).
dist(id2,id0,1,18).
dist(id1,id2,1,144).
dist(id2,id1,1,144).
dist(id0,id3,1,124).
dist(id3,id0,1,124).
dist(id1,id3,1,245).
dist(id3,id1,1,245).
dist(id2,id3,1,137).
dist(id3,id2,1,137).
dist(id0,id4,1,84).
dist(id4,id0,1,84).
dist(id1,id4,1,211).
dist(id4,id1,1,211).
dist(id2,id4,1,96).
dist(id4,id2,1,96).
dist(id3,id4,1,41).
dist(id4,id3,1,41).
}).



#pos(p_22831@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
person(id4).
goal(holdsAt(meeting(id0,id2),2)).
goal(holdsAt(meeting(id2,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(running(id3),1).
happensAt(walking(id4),1).
holdsAt(meeting(id0,id2),1).
holdsAt(meeting(id2,id0),1).
dist(id0,id1,1,161).
dist(id1,id0,1,161).
dist(id0,id2,1,18).
dist(id2,id0,1,18).
dist(id1,id2,1,144).
dist(id2,id1,1,144).
dist(id0,id3,1,125).
dist(id3,id0,1,125).
dist(id1,id3,1,245).
dist(id3,id1,1,245).
dist(id2,id3,1,139).
dist(id3,id2,1,139).
dist(id0,id4,1,84).
dist(id4,id0,1,84).
dist(id1,id4,1,210).
dist(id4,id1,1,210).
dist(id2,id4,1,97).
dist(id4,id2,1,97).
dist(id3,id4,1,41).
dist(id4,id3,1,41).
}).



#pos(p_22832@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
person(id4).
goal(holdsAt(meeting(id0,id2),2)).
goal(holdsAt(meeting(id2,id0),2)).
happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(running(id3),1).
happensAt(walking(id4),1).
holdsAt(meeting(id0,id2),1).
holdsAt(meeting(id2,id0),1).
dist(id0,id1,1,161).
dist(id1,id0,1,161).
dist(id0,id2,1,19).
dist(id2,id0,1,19).
dist(id1,id2,1,144).
dist(id2,id1,1,144).
dist(id0,id3,1,125).
dist(id3,id0,1,125).
dist(id1,id3,1,245).
dist(id3,id1,1,245).
dist(id2,id3,1,140).
dist(id3,id2,1,140).
dist(id0,id4,1,84).
dist(id4,id0,1,84).
dist(id1,id4,1,210).
dist(id4,id1,1,210).
dist(id2,id4,1,99).
dist(id4,id2,1,99).
dist(id3,id4,1,41).
dist(id4,id3,1,41).
}).



#pos(p_22833@100, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
person(id4).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(running(id3),1).
happensAt(walking(id4),1).
holdsAt(meeting(id0,id2),1).
holdsAt(meeting(id2,id0),1).
dist(id0,id1,1,160).
dist(id1,id0,1,160).
dist(id0,id2,1,19).
dist(id2,id0,1,19).
dist(id1,id2,1,145).
dist(id2,id1,1,145).
dist(id0,id3,1,125).
dist(id3,id0,1,125).
dist(id1,id3,1,244).
dist(id3,id1,1,244).
dist(id2,id3,1,142).
dist(id3,id2,1,142).
dist(id0,id4,1,84).
dist(id4,id0,1,84).
dist(id1,id4,1,209).
dist(id4,id1,1,209).
dist(id2,id4,1,101).
dist(id4,id2,1,101).
dist(id3,id4,1,41).
dist(id4,id3,1,41).
}).



#pos(p_22834@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).
person(id4).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(running(id3),1).
happensAt(walking(id4),1).
dist(id0,id1,1,161).
dist(id1,id0,1,161).
dist(id0,id2,1,19).
dist(id2,id0,1,19).
dist(id1,id2,1,145).
dist(id2,id1,1,145).
dist(id0,id3,1,125).
dist(id3,id0,1,125).
dist(id1,id3,1,244).
dist(id3,id1,1,244).
dist(id2,id3,1,142).
dist(id3,id2,1,142).
dist(id0,id4,1,84).
dist(id4,id0,1,84).
dist(id1,id4,1,210).
dist(id4,id1,1,210).
dist(id2,id4,1,102).
dist(id4,id2,1,102).
dist(id3,id4,1,40).
dist(id4,id3,1,40).
}).



#pos(p_18662@100, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_18663@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_18664@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_18665@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18666@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_18667@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_18668@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_18669@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18670@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18671@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18672@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18673@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18674@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18675@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18676@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_18677@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_18678@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18679@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_18680@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_18681@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18682@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_18683@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_18684@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_18685@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_18686@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_18687@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_18688@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_18689@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_18690@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18691@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18692@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18693@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18694@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18695@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18696@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18697@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18698@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18699@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18700@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18701@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18702@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18703@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18704@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18705@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18706@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18707@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18708@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18709@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18710@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18711@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18712@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18713@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18714@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18715@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18716@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18717@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18718@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18719@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18720@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18721@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18722@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18723@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18724@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,4).
dist(id1,id0,1,4).
}).



#pos(p_18725@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,5).
dist(id1,id0,1,5).
}).



#pos(p_18726@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,5).
dist(id1,id0,1,5).
}).



#pos(p_18727@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,5).
dist(id1,id0,1,5).
}).



#pos(p_18728@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,5).
dist(id1,id0,1,5).
}).



#pos(p_18729@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,5).
dist(id1,id0,1,5).
}).



#pos(p_18730@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,3).
dist(id1,id0,1,3).
}).



#pos(p_18731@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,3).
dist(id1,id0,1,3).
}).



#pos(p_18732@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,3).
dist(id1,id0,1,3).
}).



#pos(p_18733@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,3).
dist(id1,id0,1,3).
}).



#pos(p_18734@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,3).
dist(id1,id0,1,3).
}).



#pos(p_18735@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,3).
dist(id1,id0,1,3).
}).



#pos(p_18736@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,3).
dist(id1,id0,1,3).
}).



#pos(p_18737@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,3).
dist(id1,id0,1,3).
}).



#pos(p_18738@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,3).
dist(id1,id0,1,3).
}).



#pos(p_18739@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,3).
dist(id1,id0,1,3).
}).



#pos(p_18740@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,3).
dist(id1,id0,1,3).
}).



#pos(p_18741@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,3).
dist(id1,id0,1,3).
}).



#pos(p_18742@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,3).
dist(id1,id0,1,3).
}).



#pos(p_18743@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,1).
dist(id1,id0,1,1).
}).



#pos(p_18744@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,3).
dist(id1,id0,1,3).
}).



#pos(p_18745@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,3).
dist(id1,id0,1,3).
}).



#pos(p_18746@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18747@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18748@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18749@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18750@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18751@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_18752@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_18753@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_18754@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_18755@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_18756@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18757@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18758@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_18759@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_18760@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18761@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18762@1, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18763@100, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(active(id1),1).
happensAt(disappear(id0),1).
happensAt(disappear(id1),1).
holdsAt(meeting(id0,id1),1).
holdsAt(meeting(id1,id0),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18764@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).
happensAt(appear(id0),1).

}).


#pos(p_17351@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_17352@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_17353@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_17354@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17355@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17356@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17357@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17358@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17359@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17360@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17361@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17362@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17363@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17364@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17365@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17366@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17367@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17368@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17369@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17370@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17371@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17372@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17373@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17374@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17375@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_3209@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,125).
dist(id1,id0,1,125).
}).



#pos(p_3210@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,126).
dist(id1,id0,1,126).
}).



#pos(p_3211@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,128).
dist(id1,id0,1,128).
}).



#pos(p_3212@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,129).
dist(id1,id0,1,129).
}).



#pos(p_3213@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,130).
dist(id1,id0,1,130).
}).



#pos(p_3214@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,131).
dist(id1,id0,1,131).
}).



#pos(p_3215@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,132).
dist(id1,id0,1,132).
}).



#pos(p_3216@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,133).
dist(id1,id0,1,133).
}).



#pos(p_3217@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,136).
dist(id1,id0,1,136).
}).



#pos(p_3218@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,140).
dist(id1,id0,1,140).
}).



#pos(p_3219@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,142).
dist(id1,id0,1,142).
}).



#pos(p_3220@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,145).
dist(id1,id0,1,145).
}).



#pos(p_3221@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,145).
dist(id1,id0,1,145).
}).



#pos(p_3222@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,147).
dist(id1,id0,1,147).
}).



#pos(p_3223@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,148).
dist(id1,id0,1,148).
}).



#pos(p_3224@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,150).
dist(id1,id0,1,150).
}).



#pos(p_3225@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,150).
dist(id1,id0,1,150).
}).



#pos(p_3226@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,151).
dist(id1,id0,1,151).
}).



#pos(p_3227@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,152).
dist(id1,id0,1,152).
}).



#pos(p_3228@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,153).
dist(id1,id0,1,153).
}).



#pos(p_3229@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,154).
dist(id1,id0,1,154).
}).



#pos(p_3230@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,157).
dist(id1,id0,1,157).
}).



#pos(p_3231@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,161).
dist(id1,id0,1,161).
}).



#pos(p_3232@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,163).
dist(id1,id0,1,163).
}).



#pos(p_3233@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,166).
dist(id1,id0,1,166).
}).



#pos(p_4009@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4010@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4011@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4012@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4013@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4014@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4015@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4016@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4017@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4018@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4019@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4020@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4021@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4022@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4023@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4024@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4025@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4026@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4027@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4028@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4029@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4030@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4031@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4032@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4033@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24009@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24010@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24011@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24012@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24013@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24014@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24015@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24016@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24017@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24018@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24019@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24020@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24021@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24022@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24023@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24024@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24025@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24026@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24027@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24028@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24029@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24030@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24031@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24032@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24033@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19761@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
dist(id0,id2,1,24).
dist(id2,id0,1,24).
dist(id1,id2,1,51).
dist(id2,id1,1,51).
dist(id0,id3,1,28).
dist(id3,id0,1,28).
dist(id1,id3,1,28).
dist(id3,id1,1,28).
dist(id2,id3,1,32).
dist(id3,id2,1,32).
}).



#pos(p_19762@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
dist(id0,id2,1,24).
dist(id2,id0,1,24).
dist(id1,id2,1,52).
dist(id2,id1,1,52).
dist(id0,id3,1,27).
dist(id3,id0,1,27).
dist(id1,id3,1,29).
dist(id3,id1,1,29).
dist(id2,id3,1,31).
dist(id3,id2,1,31).
}).



#pos(p_19763@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,34).
dist(id1,id0,1,34).
dist(id0,id2,1,24).
dist(id2,id0,1,24).
dist(id1,id2,1,53).
dist(id2,id1,1,53).
dist(id0,id3,1,26).
dist(id3,id0,1,26).
dist(id1,id3,1,30).
dist(id3,id1,1,30).
dist(id2,id3,1,30).
dist(id3,id2,1,30).
}).



#pos(p_19764@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
dist(id0,id2,1,24).
dist(id2,id0,1,24).
dist(id1,id2,1,54).
dist(id2,id1,1,54).
dist(id0,id3,1,27).
dist(id3,id0,1,27).
dist(id1,id3,1,31).
dist(id3,id1,1,31).
dist(id2,id3,1,31).
dist(id3,id2,1,31).
}).



#pos(p_19765@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,34).
dist(id1,id0,1,34).
dist(id0,id2,1,25).
dist(id2,id0,1,25).
dist(id1,id2,1,54).
dist(id2,id1,1,54).
dist(id0,id3,1,27).
dist(id3,id0,1,27).
dist(id1,id3,1,30).
dist(id3,id1,1,30).
dist(id2,id3,1,32).
dist(id3,id2,1,32).
}).



#pos(p_19766@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,34).
dist(id1,id0,1,34).
dist(id0,id2,1,26).
dist(id2,id0,1,26).
dist(id1,id2,1,54).
dist(id2,id1,1,54).
dist(id0,id3,1,28).
dist(id3,id0,1,28).
dist(id1,id3,1,29).
dist(id3,id1,1,29).
dist(id2,id3,1,32).
dist(id3,id2,1,32).
}).



#pos(p_19767@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,34).
dist(id1,id0,1,34).
dist(id0,id2,1,26).
dist(id2,id0,1,26).
dist(id1,id2,1,54).
dist(id2,id1,1,54).
dist(id0,id3,1,28).
dist(id3,id0,1,28).
dist(id1,id3,1,29).
dist(id3,id1,1,29).
dist(id2,id3,1,32).
dist(id3,id2,1,32).
}).



#pos(p_19768@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
dist(id0,id2,1,27).
dist(id2,id0,1,27).
dist(id1,id2,1,54).
dist(id2,id1,1,54).
dist(id0,id3,1,28).
dist(id3,id0,1,28).
dist(id1,id3,1,28).
dist(id3,id1,1,28).
dist(id2,id3,1,33).
dist(id3,id2,1,33).
}).



#pos(p_19769@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,34).
dist(id1,id0,1,34).
dist(id0,id2,1,27).
dist(id2,id0,1,27).
dist(id1,id2,1,54).
dist(id2,id1,1,54).
dist(id0,id3,1,29).
dist(id3,id0,1,29).
dist(id1,id3,1,27).
dist(id3,id1,1,27).
dist(id2,id3,1,34).
dist(id3,id2,1,34).
}).



#pos(p_19770@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
dist(id0,id2,1,27).
dist(id2,id0,1,27).
dist(id1,id2,1,53).
dist(id2,id1,1,53).
dist(id0,id3,1,29).
dist(id3,id0,1,29).
dist(id1,id3,1,27).
dist(id3,id1,1,27).
dist(id2,id3,1,33).
dist(id3,id2,1,33).
}).



#pos(p_19771@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
dist(id0,id2,1,27).
dist(id2,id0,1,27).
dist(id1,id2,1,51).
dist(id2,id1,1,51).
dist(id0,id3,1,29).
dist(id3,id0,1,29).
dist(id1,id3,1,26).
dist(id3,id1,1,26).
dist(id2,id3,1,33).
dist(id3,id2,1,33).
}).



#pos(p_19772@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
dist(id0,id2,1,26).
dist(id2,id0,1,26).
dist(id1,id2,1,50).
dist(id2,id1,1,50).
dist(id0,id3,1,29).
dist(id3,id0,1,29).
dist(id1,id3,1,26).
dist(id3,id1,1,26).
dist(id2,id3,1,32).
dist(id3,id2,1,32).
}).



#pos(p_19773@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
dist(id0,id2,1,25).
dist(id2,id0,1,25).
dist(id1,id2,1,50).
dist(id2,id1,1,50).
dist(id0,id3,1,29).
dist(id3,id0,1,29).
dist(id1,id3,1,27).
dist(id3,id1,1,27).
dist(id2,id3,1,33).
dist(id3,id2,1,33).
}).



#pos(p_19774@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
dist(id0,id2,1,24).
dist(id2,id0,1,24).
dist(id1,id2,1,50).
dist(id2,id1,1,50).
dist(id0,id3,1,29).
dist(id3,id0,1,29).
dist(id1,id3,1,28).
dist(id3,id1,1,28).
dist(id2,id3,1,32).
dist(id3,id2,1,32).
}).



#pos(p_19775@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
dist(id0,id2,1,24).
dist(id2,id0,1,24).
dist(id1,id2,1,51).
dist(id2,id1,1,51).
dist(id0,id3,1,29).
dist(id3,id0,1,29).
dist(id1,id3,1,29).
dist(id3,id1,1,29).
dist(id2,id3,1,32).
dist(id3,id2,1,32).
}).



#pos(p_19776@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
dist(id0,id2,1,25).
dist(id2,id0,1,25).
dist(id1,id2,1,53).
dist(id2,id1,1,53).
dist(id0,id3,1,29).
dist(id3,id0,1,29).
dist(id1,id3,1,31).
dist(id3,id1,1,31).
dist(id2,id3,1,33).
dist(id3,id2,1,33).
}).



#pos(p_19777@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
dist(id0,id2,1,25).
dist(id2,id0,1,25).
dist(id1,id2,1,53).
dist(id2,id1,1,53).
dist(id0,id3,1,29).
dist(id3,id0,1,29).
dist(id1,id3,1,32).
dist(id3,id1,1,32).
dist(id2,id3,1,33).
dist(id3,id2,1,33).
}).



#pos(p_19778@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
dist(id0,id2,1,26).
dist(id2,id0,1,26).
dist(id1,id2,1,54).
dist(id2,id1,1,54).
dist(id0,id3,1,29).
dist(id3,id0,1,29).
dist(id1,id3,1,32).
dist(id3,id1,1,32).
dist(id2,id3,1,34).
dist(id3,id2,1,34).
}).



#pos(p_19779@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
dist(id0,id2,1,27).
dist(id2,id0,1,27).
dist(id1,id2,1,54).
dist(id2,id1,1,54).
dist(id0,id3,1,29).
dist(id3,id0,1,29).
dist(id1,id3,1,31).
dist(id3,id1,1,31).
dist(id2,id3,1,35).
dist(id3,id2,1,35).
}).



#pos(p_19780@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,29).
dist(id1,id0,1,29).
dist(id0,id2,1,29).
dist(id2,id0,1,29).
dist(id1,id2,1,54).
dist(id2,id1,1,54).
dist(id0,id3,1,29).
dist(id3,id0,1,29).
dist(id1,id3,1,30).
dist(id3,id1,1,30).
dist(id2,id3,1,35).
dist(id3,id2,1,35).
}).



#pos(p_19781@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,29).
dist(id1,id0,1,29).
dist(id0,id2,1,30).
dist(id2,id0,1,30).
dist(id1,id2,1,54).
dist(id2,id1,1,54).
dist(id0,id3,1,31).
dist(id3,id0,1,31).
dist(id1,id3,1,30).
dist(id3,id1,1,30).
dist(id2,id3,1,36).
dist(id3,id2,1,36).
}).



#pos(p_19782@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,29).
dist(id1,id0,1,29).
dist(id0,id2,1,31).
dist(id2,id0,1,31).
dist(id1,id2,1,55).
dist(id2,id1,1,55).
dist(id0,id3,1,30).
dist(id3,id0,1,30).
dist(id1,id3,1,28).
dist(id3,id1,1,28).
dist(id2,id3,1,38).
dist(id3,id2,1,38).
}).



#pos(p_19783@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,27).
dist(id1,id0,1,27).
dist(id0,id2,1,32).
dist(id2,id0,1,32).
dist(id1,id2,1,55).
dist(id2,id1,1,55).
dist(id0,id3,1,31).
dist(id3,id0,1,31).
dist(id1,id3,1,28).
dist(id3,id1,1,28).
dist(id2,id3,1,40).
dist(id3,id2,1,40).
}).



#pos(p_19784@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,26).
dist(id1,id0,1,26).
dist(id0,id2,1,32).
dist(id2,id0,1,32).
dist(id1,id2,1,55).
dist(id2,id1,1,55).
dist(id0,id3,1,31).
dist(id3,id0,1,31).
dist(id1,id3,1,28).
dist(id3,id1,1,28).
dist(id2,id3,1,40).
dist(id3,id2,1,40).
}).



#pos(p_19785@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,27).
dist(id1,id0,1,27).
dist(id0,id2,1,31).
dist(id2,id0,1,31).
dist(id1,id2,1,55).
dist(id2,id1,1,55).
dist(id0,id3,1,31).
dist(id3,id0,1,31).
dist(id1,id3,1,28).
dist(id3,id1,1,28).
dist(id2,id3,1,40).
dist(id3,id2,1,40).
}).



#pos(p_19736@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
dist(id0,id2,1,19).
dist(id2,id0,1,19).
dist(id1,id2,1,35).
dist(id2,id1,1,35).
dist(id0,id3,1,27).
dist(id3,id0,1,27).
dist(id1,id3,1,26).
dist(id3,id1,1,26).
dist(id2,id3,1,15).
dist(id3,id2,1,15).
}).



#pos(p_19737@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
dist(id0,id2,1,20).
dist(id2,id0,1,20).
dist(id1,id2,1,35).
dist(id2,id1,1,35).
dist(id0,id3,1,27).
dist(id3,id0,1,27).
dist(id1,id3,1,26).
dist(id3,id1,1,26).
dist(id2,id3,1,14).
dist(id3,id2,1,14).
}).



#pos(p_19738@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
dist(id0,id2,1,20).
dist(id2,id0,1,20).
dist(id1,id2,1,36).
dist(id2,id1,1,36).
dist(id0,id3,1,27).
dist(id3,id0,1,27).
dist(id1,id3,1,26).
dist(id3,id1,1,26).
dist(id2,id3,1,14).
dist(id3,id2,1,14).
}).



#pos(p_19739@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
dist(id0,id2,1,21).
dist(id2,id0,1,21).
dist(id1,id2,1,36).
dist(id2,id1,1,36).
dist(id0,id3,1,26).
dist(id3,id0,1,26).
dist(id1,id3,1,25).
dist(id3,id1,1,25).
dist(id2,id3,1,14).
dist(id3,id2,1,14).
}).



#pos(p_19740@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
dist(id0,id2,1,21).
dist(id2,id0,1,21).
dist(id1,id2,1,36).
dist(id2,id1,1,36).
dist(id0,id3,1,26).
dist(id3,id0,1,26).
dist(id1,id3,1,23).
dist(id3,id1,1,23).
dist(id2,id3,1,16).
dist(id3,id2,1,16).
}).



#pos(p_19741@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
dist(id0,id2,1,21).
dist(id2,id0,1,21).
dist(id1,id2,1,38).
dist(id2,id1,1,38).
dist(id0,id3,1,28).
dist(id3,id0,1,28).
dist(id1,id3,1,24).
dist(id3,id1,1,24).
dist(id2,id3,1,17).
dist(id3,id2,1,17).
}).



#pos(p_19742@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
dist(id0,id2,1,22).
dist(id2,id0,1,22).
dist(id1,id2,1,38).
dist(id2,id1,1,38).
dist(id0,id3,1,28).
dist(id3,id0,1,28).
dist(id1,id3,1,24).
dist(id3,id1,1,24).
dist(id2,id3,1,17).
dist(id3,id2,1,17).
}).



#pos(p_19743@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
dist(id0,id2,1,22).
dist(id2,id0,1,22).
dist(id1,id2,1,37).
dist(id2,id1,1,37).
dist(id0,id3,1,28).
dist(id3,id0,1,28).
dist(id1,id3,1,23).
dist(id3,id1,1,23).
dist(id2,id3,1,17).
dist(id3,id2,1,17).
}).



#pos(p_19744@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
dist(id0,id2,1,22).
dist(id2,id0,1,22).
dist(id1,id2,1,38).
dist(id2,id1,1,38).
dist(id0,id3,1,27).
dist(id3,id0,1,27).
dist(id1,id3,1,23).
dist(id3,id1,1,23).
dist(id2,id3,1,18).
dist(id3,id2,1,18).
}).



#pos(p_19745@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
dist(id0,id2,1,22).
dist(id2,id0,1,22).
dist(id1,id2,1,40).
dist(id2,id1,1,40).
dist(id0,id3,1,27).
dist(id3,id0,1,27).
dist(id1,id3,1,25).
dist(id3,id1,1,25).
dist(id2,id3,1,19).
dist(id3,id2,1,19).
}).



#pos(p_19746@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
dist(id0,id2,1,23).
dist(id2,id0,1,23).
dist(id1,id2,1,41).
dist(id2,id1,1,41).
dist(id0,id3,1,27).
dist(id3,id0,1,27).
dist(id1,id3,1,25).
dist(id3,id1,1,25).
dist(id2,id3,1,19).
dist(id3,id2,1,19).
}).



#pos(p_19747@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
dist(id0,id2,1,23).
dist(id2,id0,1,23).
dist(id1,id2,1,43).
dist(id2,id1,1,43).
dist(id0,id3,1,27).
dist(id3,id0,1,27).
dist(id1,id3,1,26).
dist(id3,id1,1,26).
dist(id2,id3,1,21).
dist(id3,id2,1,21).
}).



#pos(p_19748@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
dist(id0,id2,1,23).
dist(id2,id0,1,23).
dist(id1,id2,1,44).
dist(id2,id1,1,44).
dist(id0,id3,1,27).
dist(id3,id0,1,27).
dist(id1,id3,1,27).
dist(id3,id1,1,27).
dist(id2,id3,1,21).
dist(id3,id2,1,21).
}).



#pos(p_19749@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
dist(id0,id2,1,24).
dist(id2,id0,1,24).
dist(id1,id2,1,46).
dist(id2,id1,1,46).
dist(id0,id3,1,27).
dist(id3,id0,1,27).
dist(id1,id3,1,27).
dist(id3,id1,1,27).
dist(id2,id3,1,24).
dist(id3,id2,1,24).
}).



#pos(p_19750@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
dist(id0,id2,1,24).
dist(id2,id0,1,24).
dist(id1,id2,1,47).
dist(id2,id1,1,47).
dist(id0,id3,1,27).
dist(id3,id0,1,27).
dist(id1,id3,1,28).
dist(id3,id1,1,28).
dist(id2,id3,1,24).
dist(id3,id2,1,24).
}).



#pos(p_19751@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
dist(id0,id2,1,24).
dist(id2,id0,1,24).
dist(id1,id2,1,46).
dist(id2,id1,1,46).
dist(id0,id3,1,28).
dist(id3,id0,1,28).
dist(id1,id3,1,27).
dist(id3,id1,1,27).
dist(id2,id3,1,24).
dist(id3,id2,1,24).
}).



#pos(p_19752@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
dist(id0,id2,1,25).
dist(id2,id0,1,25).
dist(id1,id2,1,46).
dist(id2,id1,1,46).
dist(id0,id3,1,28).
dist(id3,id0,1,28).
dist(id1,id3,1,25).
dist(id3,id1,1,25).
dist(id2,id3,1,25).
dist(id3,id2,1,25).
}).



#pos(p_19753@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
dist(id0,id2,1,26).
dist(id2,id0,1,26).
dist(id1,id2,1,47).
dist(id2,id1,1,47).
dist(id0,id3,1,27).
dist(id3,id0,1,27).
dist(id1,id3,1,25).
dist(id3,id1,1,25).
dist(id2,id3,1,27).
dist(id3,id2,1,27).
}).



#pos(p_19754@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
dist(id0,id2,1,27).
dist(id2,id0,1,27).
dist(id1,id2,1,46).
dist(id2,id1,1,46).
dist(id0,id3,1,28).
dist(id3,id0,1,28).
dist(id1,id3,1,25).
dist(id3,id1,1,25).
dist(id2,id3,1,26).
dist(id3,id2,1,26).
}).



#pos(p_19755@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
dist(id0,id2,1,27).
dist(id2,id0,1,27).
dist(id1,id2,1,47).
dist(id2,id1,1,47).
dist(id0,id3,1,28).
dist(id3,id0,1,28).
dist(id1,id3,1,24).
dist(id3,id1,1,24).
dist(id2,id3,1,28).
dist(id3,id2,1,28).
}).



#pos(p_19756@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
dist(id0,id2,1,23).
dist(id2,id0,1,23).
dist(id1,id2,1,45).
dist(id2,id1,1,45).
dist(id0,id3,1,28).
dist(id3,id0,1,28).
dist(id1,id3,1,24).
dist(id3,id1,1,24).
dist(id2,id3,1,28).
dist(id3,id2,1,28).
}).



#pos(p_19757@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
dist(id0,id2,1,24).
dist(id2,id0,1,24).
dist(id1,id2,1,47).
dist(id2,id1,1,47).
dist(id0,id3,1,28).
dist(id3,id0,1,28).
dist(id1,id3,1,24).
dist(id3,id1,1,24).
dist(id2,id3,1,29).
dist(id3,id2,1,29).
}).



#pos(p_19758@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
dist(id0,id2,1,24).
dist(id2,id0,1,24).
dist(id1,id2,1,48).
dist(id2,id1,1,48).
dist(id0,id3,1,28).
dist(id3,id0,1,28).
dist(id1,id3,1,25).
dist(id3,id1,1,25).
dist(id2,id3,1,30).
dist(id3,id2,1,30).
}).



#pos(p_19759@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
dist(id0,id2,1,25).
dist(id2,id0,1,25).
dist(id1,id2,1,49).
dist(id2,id1,1,49).
dist(id0,id3,1,28).
dist(id3,id0,1,28).
dist(id1,id3,1,26).
dist(id3,id1,1,26).
dist(id2,id3,1,31).
dist(id3,id2,1,31).
}).



#pos(p_19760@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
dist(id0,id2,1,24).
dist(id2,id0,1,24).
dist(id1,id2,1,50).
dist(id2,id1,1,50).
dist(id0,id3,1,28).
dist(id3,id0,1,28).
dist(id1,id3,1,27).
dist(id3,id1,1,27).
dist(id2,id3,1,32).
dist(id3,id2,1,32).
}).



#pos(p_5659@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_5660@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_5661@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5662@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5663@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5664@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5665@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5666@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5667@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5668@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5669@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5670@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5671@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5672@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5673@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5674@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5675@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5676@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5677@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5678@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5679@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5680@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5681@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5682@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5683@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_23509@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,158).
dist(id1,id0,1,158).
dist(id0,id2,1,135).
dist(id2,id0,1,135).
dist(id1,id2,1,48).
dist(id2,id1,1,48).
}).



#pos(p_23510@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,158).
dist(id1,id0,1,158).
dist(id0,id2,1,136).
dist(id2,id0,1,136).
dist(id1,id2,1,47).
dist(id2,id1,1,47).
}).



#pos(p_23511@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,158).
dist(id1,id0,1,158).
dist(id0,id2,1,136).
dist(id2,id0,1,136).
dist(id1,id2,1,47).
dist(id2,id1,1,47).
}).



#pos(p_23512@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,158).
dist(id1,id0,1,158).
dist(id0,id2,1,137).
dist(id2,id0,1,137).
dist(id1,id2,1,42).
dist(id2,id1,1,42).
}).



#pos(p_23513@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,158).
dist(id1,id0,1,158).
dist(id0,id2,1,137).
dist(id2,id0,1,137).
dist(id1,id2,1,41).
dist(id2,id1,1,41).
}).



#pos(p_23514@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,158).
dist(id1,id0,1,158).
dist(id0,id2,1,137).
dist(id2,id0,1,137).
dist(id1,id2,1,41).
dist(id2,id1,1,41).
}).



#pos(p_23515@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,158).
dist(id1,id0,1,158).
dist(id0,id2,1,137).
dist(id2,id0,1,137).
dist(id1,id2,1,41).
dist(id2,id1,1,41).
}).



#pos(p_23516@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,158).
dist(id1,id0,1,158).
dist(id0,id2,1,137).
dist(id2,id0,1,137).
dist(id1,id2,1,41).
dist(id2,id1,1,41).
}).



#pos(p_23517@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,158).
dist(id1,id0,1,158).
dist(id0,id2,1,132).
dist(id2,id0,1,132).
dist(id1,id2,1,43).
dist(id2,id1,1,43).
}).



#pos(p_23518@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,162).
dist(id1,id0,1,162).
dist(id0,id2,1,136).
dist(id2,id0,1,136).
dist(id1,id2,1,45).
dist(id2,id1,1,45).
}).



#pos(p_23519@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,162).
dist(id1,id0,1,162).
dist(id0,id2,1,136).
dist(id2,id0,1,136).
dist(id1,id2,1,45).
dist(id2,id1,1,45).
}).



#pos(p_23520@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,162).
dist(id1,id0,1,162).
dist(id0,id2,1,136).
dist(id2,id0,1,136).
dist(id1,id2,1,45).
dist(id2,id1,1,45).
}).



#pos(p_23521@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,162).
dist(id1,id0,1,162).
dist(id0,id2,1,136).
dist(id2,id0,1,136).
dist(id1,id2,1,44).
dist(id2,id1,1,44).
}).



#pos(p_23522@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,162).
dist(id1,id0,1,162).
dist(id0,id2,1,136).
dist(id2,id0,1,136).
dist(id1,id2,1,44).
dist(id2,id1,1,44).
}).



#pos(p_23523@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,163).
dist(id1,id0,1,163).
dist(id0,id2,1,137).
dist(id2,id0,1,137).
dist(id1,id2,1,44).
dist(id2,id1,1,44).
}).



#pos(p_23524@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,163).
dist(id1,id0,1,163).
dist(id0,id2,1,137).
dist(id2,id0,1,137).
dist(id1,id2,1,42).
dist(id2,id1,1,42).
}).



#pos(p_23525@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,163).
dist(id1,id0,1,163).
dist(id0,id2,1,137).
dist(id2,id0,1,137).
dist(id1,id2,1,42).
dist(id2,id1,1,42).
}).



#pos(p_23526@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,163).
dist(id1,id0,1,163).
dist(id0,id2,1,137).
dist(id2,id0,1,137).
dist(id1,id2,1,40).
dist(id2,id1,1,40).
}).



#pos(p_23527@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,163).
dist(id1,id0,1,163).
dist(id0,id2,1,148).
dist(id2,id0,1,148).
dist(id1,id2,1,33).
dist(id2,id1,1,33).
}).



#pos(p_23528@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,163).
dist(id1,id0,1,163).
dist(id0,id2,1,148).
dist(id2,id0,1,148).
dist(id1,id2,1,33).
dist(id2,id1,1,33).
}).



#pos(p_23529@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,163).
dist(id1,id0,1,163).
dist(id0,id2,1,148).
dist(id2,id0,1,148).
dist(id1,id2,1,33).
dist(id2,id1,1,33).
}).



#pos(p_23530@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,163).
dist(id1,id0,1,163).
dist(id0,id2,1,148).
dist(id2,id0,1,148).
dist(id1,id2,1,33).
dist(id2,id1,1,33).
}).



#pos(p_23531@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,163).
dist(id1,id0,1,163).
dist(id0,id2,1,148).
dist(id2,id0,1,148).
dist(id1,id2,1,26).
dist(id2,id1,1,26).
}).



#pos(p_23532@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,165).
dist(id1,id0,1,165).
dist(id0,id2,1,150).
dist(id2,id0,1,150).
dist(id1,id2,1,26).
dist(id2,id1,1,26).
}).



#pos(p_23533@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,165).
dist(id1,id0,1,165).
dist(id0,id2,1,146).
dist(id2,id0,1,146).
dist(id1,id2,1,28).
dist(id2,id1,1,28).
}).



#pos(p_7450@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7451@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7452@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7453@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7454@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7455@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7456@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7457@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7458@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7459@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7460@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7461@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7462@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7463@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7464@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7465@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7466@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7467@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7468@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7469@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7470@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7471@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7472@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7473@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7474@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_22070@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,144).
dist(id1,id0,1,144).
}).



#pos(p_22071@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,145).
dist(id1,id0,1,145).
}).



#pos(p_22072@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,146).
dist(id1,id0,1,146).
}).



#pos(p_22073@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,146).
dist(id1,id0,1,146).
}).



#pos(p_22074@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,148).
dist(id1,id0,1,148).
}).



#pos(p_22075@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,149).
dist(id1,id0,1,149).
}).



#pos(p_22076@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,152).
dist(id1,id0,1,152).
}).



#pos(p_22077@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,152).
dist(id1,id0,1,152).
}).



#pos(p_22078@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,153).
dist(id1,id0,1,153).
}).



#pos(p_22079@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,152).
dist(id1,id0,1,152).
}).



#pos(p_22080@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,152).
dist(id1,id0,1,152).
}).



#pos(p_22081@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,153).
dist(id1,id0,1,153).
}).



#pos(p_22082@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,153).
dist(id1,id0,1,153).
}).



#pos(p_22083@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,154).
dist(id1,id0,1,154).
}).



#pos(p_22084@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,154).
dist(id1,id0,1,154).
}).



#pos(p_22085@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,158).
dist(id1,id0,1,158).
}).



#pos(p_22086@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,160).
dist(id1,id0,1,160).
}).



#pos(p_22087@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,163).
dist(id1,id0,1,163).
}).



#pos(p_22088@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,165).
dist(id1,id0,1,165).
}).



#pos(p_22089@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,167).
dist(id1,id0,1,167).
}).



#pos(p_22090@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,168).
dist(id1,id0,1,168).
}).



#pos(p_22091@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,168).
dist(id1,id0,1,168).
}).



#pos(p_22092@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,168).
dist(id1,id0,1,168).
}).



#pos(p_22093@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,167).
dist(id1,id0,1,167).
}).



#pos(p_22094@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,167).
dist(id1,id0,1,167).
}).



#pos(p_21820@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_21821@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
}).



#pos(p_21822@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,25).
dist(id1,id0,1,25).
}).



#pos(p_21823@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,27).
dist(id1,id0,1,27).
}).



#pos(p_21824@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,27).
dist(id1,id0,1,27).
}).



#pos(p_21825@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,29).
dist(id1,id0,1,29).
}).



#pos(p_21826@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_21827@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_21828@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
}).



#pos(p_21829@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_21830@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_21831@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_21832@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_21833@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_21834@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,37).
dist(id1,id0,1,37).
}).



#pos(p_21835@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,39).
dist(id1,id0,1,39).
}).



#pos(p_21836@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
}).



#pos(p_21837@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,40).
dist(id1,id0,1,40).
}).



#pos(p_21838@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,40).
dist(id1,id0,1,40).
}).



#pos(p_21839@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,42).
dist(id1,id0,1,42).
}).



#pos(p_21840@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,44).
dist(id1,id0,1,44).
}).



#pos(p_21841@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,47).
dist(id1,id0,1,47).
}).



#pos(p_21842@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,47).
dist(id1,id0,1,47).
}).



#pos(p_21843@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,48).
dist(id1,id0,1,48).
}).



#pos(p_21844@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,49).
dist(id1,id0,1,49).
}).



#pos(p_2834@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,245).
dist(id1,id0,1,245).
dist(id0,id2,1,190).
dist(id2,id0,1,190).
dist(id1,id2,1,66).
dist(id2,id1,1,66).
}).



#pos(p_2835@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,251).
dist(id1,id0,1,251).
dist(id0,id2,1,194).
dist(id2,id0,1,194).
dist(id1,id2,1,67).
dist(id2,id1,1,67).
}).



#pos(p_2836@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,256).
dist(id1,id0,1,256).
dist(id0,id2,1,198).
dist(id2,id0,1,198).
dist(id1,id2,1,68).
dist(id2,id1,1,68).
}).



#pos(p_2837@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,259).
dist(id1,id0,1,259).
dist(id0,id2,1,202).
dist(id2,id0,1,202).
dist(id1,id2,1,68).
dist(id2,id1,1,68).
}).



#pos(p_2838@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,263).
dist(id1,id0,1,263).
dist(id0,id2,1,204).
dist(id2,id0,1,204).
dist(id1,id2,1,69).
dist(id2,id1,1,69).
}).



#pos(p_2839@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,266).
dist(id1,id0,1,266).
dist(id0,id2,1,207).
dist(id2,id0,1,207).
dist(id1,id2,1,69).
dist(id2,id1,1,69).
}).



#pos(p_2840@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,269).
dist(id1,id0,1,269).
dist(id0,id2,1,210).
dist(id2,id0,1,210).
dist(id1,id2,1,69).
dist(id2,id1,1,69).
}).



#pos(p_2841@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,271).
dist(id1,id0,1,271).
dist(id0,id2,1,211).
dist(id2,id0,1,211).
dist(id1,id2,1,69).
dist(id2,id1,1,69).
}).



#pos(p_2842@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,274).
dist(id1,id0,1,274).
dist(id0,id2,1,213).
dist(id2,id0,1,213).
dist(id1,id2,1,70).
dist(id2,id1,1,70).
}).



#pos(p_2843@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,275).
dist(id1,id0,1,275).
dist(id0,id2,1,214).
dist(id2,id0,1,214).
dist(id1,id2,1,70).
dist(id2,id1,1,70).
}).



#pos(p_2844@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,277).
dist(id1,id0,1,277).
dist(id0,id2,1,216).
dist(id2,id0,1,216).
dist(id1,id2,1,70).
dist(id2,id1,1,70).
}).



#pos(p_2845@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,279).
dist(id1,id0,1,279).
dist(id0,id2,1,218).
dist(id2,id0,1,218).
dist(id1,id2,1,70).
dist(id2,id1,1,70).
}).



#pos(p_2846@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,282).
dist(id1,id0,1,282).
dist(id0,id2,1,220).
dist(id2,id0,1,220).
dist(id1,id2,1,70).
dist(id2,id1,1,70).
}).



#pos(p_2847@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,284).
dist(id1,id0,1,284).
dist(id0,id2,1,222).
dist(id2,id0,1,222).
dist(id1,id2,1,70).
dist(id2,id1,1,70).
}).



#pos(p_2848@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,284).
dist(id1,id0,1,284).
dist(id0,id2,1,222).
dist(id2,id0,1,222).
dist(id1,id2,1,70).
dist(id2,id1,1,70).
}).



#pos(p_2849@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,287).
dist(id1,id0,1,287).
dist(id0,id2,1,223).
dist(id2,id0,1,223).
dist(id1,id2,1,71).
dist(id2,id1,1,71).
}).



#pos(p_2850@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,287).
dist(id1,id0,1,287).
dist(id0,id2,1,223).
dist(id2,id0,1,223).
dist(id1,id2,1,71).
dist(id2,id1,1,71).
}).



#pos(p_2851@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,287).
dist(id1,id0,1,287).
dist(id0,id2,1,223).
dist(id2,id0,1,223).
dist(id1,id2,1,71).
dist(id2,id1,1,71).
}).



#pos(p_2852@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,286).
dist(id1,id0,1,286).
dist(id0,id2,1,222).
dist(id2,id0,1,222).
dist(id1,id2,1,71).
dist(id2,id1,1,71).
}).



#pos(p_2853@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,289).
dist(id1,id0,1,289).
dist(id0,id2,1,223).
dist(id2,id0,1,223).
dist(id1,id2,1,72).
dist(id2,id1,1,72).
}).



#pos(p_2854@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,290).
dist(id1,id0,1,290).
dist(id0,id2,1,223).
dist(id2,id0,1,223).
dist(id1,id2,1,72).
dist(id2,id1,1,72).
}).



#pos(p_2855@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,290).
dist(id1,id0,1,290).
dist(id0,id2,1,224).
dist(id2,id0,1,224).
dist(id1,id2,1,72).
dist(id2,id1,1,72).
}).



#pos(p_2856@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,290).
dist(id1,id0,1,290).
dist(id0,id2,1,224).
dist(id2,id0,1,224).
dist(id1,id2,1,72).
dist(id2,id1,1,72).
}).



#pos(p_2857@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,291).
dist(id1,id0,1,291).
dist(id0,id2,1,225).
dist(id2,id0,1,225).
dist(id1,id2,1,72).
dist(id2,id1,1,72).
}).



#pos(p_2858@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,292).
dist(id1,id0,1,292).
dist(id0,id2,1,226).
dist(id2,id0,1,226).
dist(id1,id2,1,72).
dist(id2,id1,1,72).
}).




#pos(p_2884@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,303).
dist(id1,id0,1,303).
dist(id0,id2,1,233).
dist(id2,id0,1,233).
dist(id1,id2,1,73).
dist(id2,id1,1,73).
}).



#pos(p_2885@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,303).
dist(id1,id0,1,303).
dist(id0,id2,1,233).
dist(id2,id0,1,233).
dist(id1,id2,1,73).
dist(id2,id1,1,73).
}).



#pos(p_2886@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,303).
dist(id1,id0,1,303).
dist(id0,id2,1,233).
dist(id2,id0,1,233).
dist(id1,id2,1,73).
dist(id2,id1,1,73).
}).



#pos(p_2887@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,303).
dist(id1,id0,1,303).
dist(id0,id2,1,233).
dist(id2,id0,1,233).
dist(id1,id2,1,73).
dist(id2,id1,1,73).
}).



#pos(p_2888@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,304).
dist(id1,id0,1,304).
dist(id0,id2,1,233).
dist(id2,id0,1,233).
dist(id1,id2,1,74).
dist(id2,id1,1,74).
}).



#pos(p_2889@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,304).
dist(id1,id0,1,304).
dist(id0,id2,1,233).
dist(id2,id0,1,233).
dist(id1,id2,1,74).
dist(id2,id1,1,74).
}).



#pos(p_2890@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,305).
dist(id1,id0,1,305).
dist(id0,id2,1,233).
dist(id2,id0,1,233).
dist(id1,id2,1,75).
dist(id2,id1,1,75).
}).



#pos(p_2891@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,306).
dist(id1,id0,1,306).
dist(id0,id2,1,235).
dist(id2,id0,1,235).
dist(id1,id2,1,73).
dist(id2,id1,1,73).
}).



#pos(p_2892@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,306).
dist(id1,id0,1,306).
dist(id0,id2,1,235).
dist(id2,id0,1,235).
dist(id1,id2,1,74).
dist(id2,id1,1,74).
}).



#pos(p_2893@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,307).
dist(id1,id0,1,307).
dist(id0,id2,1,235).
dist(id2,id0,1,235).
dist(id1,id2,1,74).
dist(id2,id1,1,74).
}).



#pos(p_2894@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,306).
dist(id1,id0,1,306).
dist(id0,id2,1,235).
dist(id2,id0,1,235).
dist(id1,id2,1,74).
dist(id2,id1,1,74).
}).



#pos(p_2895@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,307).
dist(id1,id0,1,307).
dist(id0,id2,1,235).
dist(id2,id0,1,235).
dist(id1,id2,1,74).
dist(id2,id1,1,74).
}).



#pos(p_2896@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,306).
dist(id1,id0,1,306).
dist(id0,id2,1,235).
dist(id2,id0,1,235).
dist(id1,id2,1,73).
dist(id2,id1,1,73).
}).



#pos(p_2897@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,305).
dist(id1,id0,1,305).
dist(id0,id2,1,235).
dist(id2,id0,1,235).
dist(id1,id2,1,73).
dist(id2,id1,1,73).
}).



#pos(p_2898@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,306).
dist(id1,id0,1,306).
dist(id0,id2,1,235).
dist(id2,id0,1,235).
dist(id1,id2,1,73).
dist(id2,id1,1,73).
}).



#pos(p_2899@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,305).
dist(id1,id0,1,305).
dist(id0,id2,1,235).
dist(id2,id0,1,235).
dist(id1,id2,1,72).
dist(id2,id1,1,72).
}).



#pos(p_2900@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,305).
dist(id1,id0,1,305).
dist(id0,id2,1,235).
dist(id2,id0,1,235).
dist(id1,id2,1,72).
dist(id2,id1,1,72).
}).



#pos(p_2901@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,308).
dist(id1,id0,1,308).
dist(id0,id2,1,237).
dist(id2,id0,1,237).
dist(id1,id2,1,73).
dist(id2,id1,1,73).
}).



#pos(p_2902@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,306).
dist(id1,id0,1,306).
dist(id0,id2,1,237).
dist(id2,id0,1,237).
dist(id1,id2,1,71).
dist(id2,id1,1,71).
}).



#pos(p_2903@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,309).
dist(id1,id0,1,309).
dist(id0,id2,1,240).
dist(id2,id0,1,240).
dist(id1,id2,1,71).
dist(id2,id1,1,71).
}).



#pos(p_2904@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,311).
dist(id1,id0,1,311).
dist(id0,id2,1,240).
dist(id2,id0,1,240).
dist(id1,id2,1,72).
dist(id2,id1,1,72).
}).



#pos(p_2905@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
dist(id0,id1,1,309).
dist(id1,id0,1,309).
dist(id0,id2,1,240).
dist(id2,id0,1,240).
dist(id1,id2,1,70).
dist(id2,id1,1,70).
}).



#pos(p_2906@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(inactive(id2),1).
happensAt(disappear(id0),1).
dist(id0,id1,1,311).
dist(id1,id0,1,311).
dist(id0,id2,1,241).
dist(id2,id0,1,241).
dist(id1,id2,1,71).
dist(id2,id1,1,71).
}).



#pos(p_2907@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,70).
dist(id1,id0,1,70).
}).



#pos(p_2908@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,68).
dist(id1,id0,1,68).
}).



#pos(p_15291@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15292@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15293@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15294@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15295@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15296@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15297@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15298@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15299@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15300@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15301@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15302@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15303@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15304@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15305@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15306@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15307@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15308@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15309@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15310@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15311@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15312@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15313@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15314@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15315@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14716@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14717@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14718@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14719@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14720@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14721@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14722@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14723@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14724@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14725@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14726@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14727@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14728@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14729@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14730@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14731@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14732@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14733@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14734@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14735@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14736@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14737@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14738@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14739@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14740@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15116@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15117@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15118@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15119@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15120@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15121@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15122@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15123@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15124@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15125@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15126@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15127@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15128@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15129@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15130@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15131@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15132@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15133@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15134@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15135@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15136@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15137@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15138@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15139@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15140@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8050@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8051@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8052@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8053@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8054@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8055@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8056@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8057@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).
happensAt(disappear(id0),1).

}).



#pos(p_8058@1, {}, {}, {
person(id0).
person(id1).

happensAt(appear(id0),1).
happensAt(appear(id1),1).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,295).
dist(id1,id0,1,295).
}).



#pos(p_8059@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,296).
dist(id1,id0,1,296).
}).



#pos(p_8060@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,300).
dist(id1,id0,1,300).
}).



#pos(p_8061@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,301).
dist(id1,id0,1,301).
}).



#pos(p_8062@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,300).
dist(id1,id0,1,300).
}).



#pos(p_8063@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,301).
dist(id1,id0,1,301).
}).



#pos(p_8064@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,302).
dist(id1,id0,1,302).
}).



#pos(p_8065@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,300).
dist(id1,id0,1,300).
}).



#pos(p_8066@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,300).
dist(id1,id0,1,300).
}).



#pos(p_8067@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,300).
dist(id1,id0,1,300).
}).



#pos(p_8068@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,299).
dist(id1,id0,1,299).
}).



#pos(p_8069@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(appear(id2),1).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,298).
dist(id1,id0,1,298).
dist(id0,id2,1,303).
dist(id2,id0,1,303).
dist(id1,id2,1,5).
dist(id2,id1,1,5).
}).



#pos(p_8070@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,297).
dist(id1,id0,1,297).
dist(id0,id2,1,302).
dist(id2,id0,1,302).
dist(id1,id2,1,5).
dist(id2,id1,1,5).
}).



#pos(p_8071@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,297).
dist(id1,id0,1,297).
dist(id0,id2,1,302).
dist(id2,id0,1,302).
dist(id1,id2,1,5).
dist(id2,id1,1,5).
}).



#pos(p_8072@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,296).
dist(id1,id0,1,296).
dist(id0,id2,1,302).
dist(id2,id0,1,302).
dist(id1,id2,1,5).
dist(id2,id1,1,5).
}).



#pos(p_8073@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,296).
dist(id1,id0,1,296).
dist(id0,id2,1,301).
dist(id2,id0,1,301).
dist(id1,id2,1,5).
dist(id2,id1,1,5).
}).



#pos(p_8074@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,296).
dist(id1,id0,1,296).
dist(id0,id2,1,300).
dist(id2,id0,1,300).
dist(id1,id2,1,5).
dist(id2,id1,1,5).
}).



#pos(p_12791@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12792@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12793@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12794@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12795@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12796@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12797@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12798@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12799@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12800@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12801@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12802@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12803@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12804@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12805@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12806@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12807@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12808@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12809@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12810@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12811@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12812@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12813@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12814@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12815@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16216@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
}).



#pos(p_16217@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
}).



#pos(p_16218@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
}).



#pos(p_16219@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_16220@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_16221@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_16222@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_16223@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_16224@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_16225@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_16226@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_16227@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_16228@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_16229@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
}).



#pos(p_16230@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
}).



#pos(p_16231@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_16232@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_16233@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_16234@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
}).



#pos(p_16235@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
}).



#pos(p_16236@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
}).



#pos(p_16237@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
}).



#pos(p_16238@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
}).



#pos(p_16239@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_16240@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).




#pos(p_1571@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
dist(id0,id2,1,74).
dist(id2,id0,1,74).
dist(id1,id2,1,43).
dist(id2,id1,1,43).
}).



#pos(p_1572@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
dist(id0,id2,1,74).
dist(id2,id0,1,74).
dist(id1,id2,1,43).
dist(id2,id1,1,43).
}).



#pos(p_1573@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
dist(id0,id2,1,74).
dist(id2,id0,1,74).
dist(id1,id2,1,43).
dist(id2,id1,1,43).
}).



#pos(p_1574@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,39).
dist(id1,id0,1,39).
dist(id0,id2,1,74).
dist(id2,id0,1,74).
dist(id1,id2,1,43).
dist(id2,id1,1,43).
}).



#pos(p_1575@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,39).
dist(id1,id0,1,39).
dist(id0,id2,1,74).
dist(id2,id0,1,74).
dist(id1,id2,1,43).
dist(id2,id1,1,43).
}).



#pos(p_1576@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,39).
dist(id1,id0,1,39).
dist(id0,id2,1,73).
dist(id2,id0,1,73).
dist(id1,id2,1,43).
dist(id2,id1,1,43).
}).



#pos(p_1577@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,39).
dist(id1,id0,1,39).
dist(id0,id2,1,73).
dist(id2,id0,1,73).
dist(id1,id2,1,43).
dist(id2,id1,1,43).
}).



#pos(p_1578@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,39).
dist(id1,id0,1,39).
dist(id0,id2,1,74).
dist(id2,id0,1,74).
dist(id1,id2,1,44).
dist(id2,id1,1,44).
}).



#pos(p_1579@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,39).
dist(id1,id0,1,39).
dist(id0,id2,1,75).
dist(id2,id0,1,75).
dist(id1,id2,1,45).
dist(id2,id1,1,45).
}).



#pos(p_1580@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,39).
dist(id1,id0,1,39).
dist(id0,id2,1,75).
dist(id2,id0,1,75).
dist(id1,id2,1,45).
dist(id2,id1,1,45).
}).



#pos(p_1581@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,40).
dist(id1,id0,1,40).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,47).
dist(id2,id1,1,47).
}).



#pos(p_1582@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,39).
dist(id1,id0,1,39).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,48).
dist(id2,id1,1,48).
}).



#pos(p_1583@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,41).
dist(id1,id0,1,41).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,48).
dist(id2,id1,1,48).
}).



#pos(p_1584@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,41).
dist(id1,id0,1,41).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,49).
dist(id2,id1,1,49).
}).



#pos(p_1585@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,41).
dist(id1,id0,1,41).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,49).
dist(id2,id1,1,49).
}).



#pos(p_1586@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,41).
dist(id1,id0,1,41).
dist(id0,id2,1,78).
dist(id2,id0,1,78).
dist(id1,id2,1,49).
dist(id2,id1,1,49).
}).



#pos(p_1587@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,42).
dist(id1,id0,1,42).
dist(id0,id2,1,79).
dist(id2,id0,1,79).
dist(id1,id2,1,50).
dist(id2,id1,1,50).
}).



#pos(p_1588@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,43).
dist(id1,id0,1,43).
dist(id0,id2,1,80).
dist(id2,id0,1,80).
dist(id1,id2,1,50).
dist(id2,id1,1,50).
}).



#pos(p_1589@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,43).
dist(id1,id0,1,43).
dist(id0,id2,1,80).
dist(id2,id0,1,80).
dist(id1,id2,1,50).
dist(id2,id1,1,50).
}).



#pos(p_1590@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,43).
dist(id1,id0,1,43).
dist(id0,id2,1,80).
dist(id2,id0,1,80).
dist(id1,id2,1,50).
dist(id2,id1,1,50).
}).



#pos(p_1591@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,43).
dist(id1,id0,1,43).
dist(id0,id2,1,80).
dist(id2,id0,1,80).
dist(id1,id2,1,50).
dist(id2,id1,1,50).
}).



#pos(p_1592@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,44).
dist(id1,id0,1,44).
dist(id0,id2,1,79).
dist(id2,id0,1,79).
dist(id1,id2,1,50).
dist(id2,id1,1,50).
}).



#pos(p_1593@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,44).
dist(id1,id0,1,44).
dist(id0,id2,1,80).
dist(id2,id0,1,80).
dist(id1,id2,1,51).
dist(id2,id1,1,51).
}).



#pos(p_1594@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,44).
dist(id1,id0,1,44).
dist(id0,id2,1,79).
dist(id2,id0,1,79).
dist(id1,id2,1,51).
dist(id2,id1,1,51).
}).



#pos(p_1595@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,44).
dist(id1,id0,1,44).
dist(id0,id2,1,79).
dist(id2,id0,1,79).
dist(id1,id2,1,52).
dist(id2,id1,1,52).
}).



#pos(p_3934@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,319).
dist(id1,id0,1,319).
}).



#pos(p_3935@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,319).
dist(id1,id0,1,319).
}).



#pos(p_3936@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,319).
dist(id1,id0,1,319).
}).



#pos(p_3937@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,320).
dist(id1,id0,1,320).
}).



#pos(p_3938@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(disappear(id0),1).
dist(id0,id1,1,320).
dist(id1,id0,1,320).
}).



#pos(p_3939@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_3940@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_3941@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_3942@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_3943@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_3944@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_3945@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_3946@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_3947@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_3948@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_3949@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_3950@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_3951@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_3952@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_3953@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_3954@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_3955@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15766@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,117).
dist(id1,id0,1,117).
}).



#pos(p_15767@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,115).
dist(id1,id0,1,115).
}).



#pos(p_15768@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,113).
dist(id1,id0,1,113).
}).



#pos(p_15769@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,112).
dist(id1,id0,1,112).
}).



#pos(p_15770@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,113).
dist(id1,id0,1,113).
}).



#pos(p_15771@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,113).
dist(id1,id0,1,113).
}).



#pos(p_15772@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,113).
dist(id1,id0,1,113).
}).



#pos(p_15773@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,114).
dist(id1,id0,1,114).
}).



#pos(p_15774@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,114).
dist(id1,id0,1,114).
}).



#pos(p_15775@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,112).
dist(id1,id0,1,112).
}).



#pos(p_15776@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,111).
dist(id1,id0,1,111).
}).



#pos(p_15777@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,109).
dist(id1,id0,1,109).
}).



#pos(p_15778@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,109).
dist(id1,id0,1,109).
}).



#pos(p_15779@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,107).
dist(id1,id0,1,107).
}).



#pos(p_15780@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,105).
dist(id1,id0,1,105).
}).



#pos(p_15781@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,104).
dist(id1,id0,1,104).
}).



#pos(p_15782@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,103).
dist(id1,id0,1,103).
}).



#pos(p_15783@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,102).
dist(id1,id0,1,102).
}).



#pos(p_15784@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,102).
dist(id1,id0,1,102).
}).



#pos(p_15785@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,101).
dist(id1,id0,1,101).
}).



#pos(p_15786@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,100).
dist(id1,id0,1,100).
}).



#pos(p_15787@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,100).
dist(id1,id0,1,100).
}).



#pos(p_15788@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,99).
dist(id1,id0,1,99).
}).



#pos(p_15789@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,99).
dist(id1,id0,1,99).
}).



#pos(p_15790@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,97).
dist(id1,id0,1,97).
}).



#pos(p_5809@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5810@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5811@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5812@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5813@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5814@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5815@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5816@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5817@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5818@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5819@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5820@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5821@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5822@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5823@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5824@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5825@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5826@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5827@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5828@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5829@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5830@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5831@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5832@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5833@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19142@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,58).
dist(id1,id0,1,58).
dist(id0,id2,1,32).
dist(id2,id0,1,32).
dist(id1,id2,1,61).
dist(id2,id1,1,61).
}).



#pos(p_19143@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,58).
dist(id1,id0,1,58).
dist(id0,id2,1,31).
dist(id2,id0,1,31).
dist(id1,id2,1,61).
dist(id2,id1,1,61).
}).



#pos(p_19144@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,61).
dist(id1,id0,1,61).
dist(id0,id2,1,31).
dist(id2,id0,1,31).
dist(id1,id2,1,62).
dist(id2,id1,1,62).
}).



#pos(p_19145@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,68).
dist(id1,id0,1,68).
dist(id0,id2,1,31).
dist(id2,id0,1,31).
dist(id1,id2,1,66).
dist(id2,id1,1,66).
}).



#pos(p_19146@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,73).
dist(id1,id0,1,73).
dist(id0,id2,1,30).
dist(id2,id0,1,30).
dist(id1,id2,1,69).
dist(id2,id1,1,69).
}).



#pos(p_19147@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,76).
dist(id1,id0,1,76).
dist(id0,id2,1,30).
dist(id2,id0,1,30).
dist(id1,id2,1,72).
dist(id2,id1,1,72).
}).



#pos(p_19148@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,80).
dist(id1,id0,1,80).
dist(id0,id2,1,29).
dist(id2,id0,1,29).
dist(id1,id2,1,73).
dist(id2,id1,1,73).
}).



#pos(p_19149@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,81).
dist(id1,id0,1,81).
dist(id0,id2,1,29).
dist(id2,id0,1,29).
dist(id1,id2,1,73).
dist(id2,id1,1,73).
}).



#pos(p_19150@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,83).
dist(id1,id0,1,83).
dist(id0,id2,1,26).
dist(id2,id0,1,26).
dist(id1,id2,1,75).
dist(id2,id1,1,75).
}).



#pos(p_19151@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,83).
dist(id1,id0,1,83).
dist(id0,id2,1,25).
dist(id2,id0,1,25).
dist(id1,id2,1,77).
dist(id2,id1,1,77).
}).



#pos(p_19152@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,24).
dist(id2,id0,1,24).
dist(id1,id2,1,80).
dist(id2,id1,1,80).
}).



#pos(p_19153@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,23).
dist(id2,id0,1,23).
dist(id1,id2,1,80).
dist(id2,id1,1,80).
}).



#pos(p_19154@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,87).
dist(id1,id0,1,87).
dist(id0,id2,1,23).
dist(id2,id0,1,23).
dist(id1,id2,1,82).
dist(id2,id1,1,82).
}).



#pos(p_19155@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,89).
dist(id1,id0,1,89).
dist(id0,id2,1,20).
dist(id2,id0,1,20).
dist(id1,id2,1,84).
dist(id2,id1,1,84).
}).



#pos(p_19156@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,92).
dist(id1,id0,1,92).
dist(id0,id2,1,20).
dist(id2,id0,1,20).
dist(id1,id2,1,87).
dist(id2,id1,1,87).
}).



#pos(p_19157@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,97).
dist(id1,id0,1,97).
dist(id0,id2,1,20).
dist(id2,id0,1,20).
dist(id1,id2,1,90).
dist(id2,id1,1,90).
}).



#pos(p_19158@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,102).
dist(id1,id0,1,102).
dist(id0,id2,1,17).
dist(id2,id0,1,17).
dist(id1,id2,1,93).
dist(id2,id1,1,93).
}).



#pos(p_19159@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,107).
dist(id1,id0,1,107).
dist(id0,id2,1,18).
dist(id2,id0,1,18).
dist(id1,id2,1,97).
dist(id2,id1,1,97).
}).



#pos(p_19160@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,111).
dist(id1,id0,1,111).
dist(id0,id2,1,18).
dist(id2,id0,1,18).
dist(id1,id2,1,100).
dist(id2,id1,1,100).
}).



#pos(p_19161@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,113).
dist(id1,id0,1,113).
dist(id0,id2,1,19).
dist(id2,id0,1,19).
dist(id1,id2,1,101).
dist(id2,id1,1,101).
}).



#pos(p_19162@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,117).
dist(id1,id0,1,117).
dist(id0,id2,1,19).
dist(id2,id0,1,19).
dist(id1,id2,1,104).
dist(id2,id1,1,104).
}).



#pos(p_19163@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
dist(id0,id2,1,18).
dist(id2,id0,1,18).
dist(id1,id2,1,105).
dist(id2,id1,1,105).
}).



#pos(p_19164@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,128).
dist(id1,id0,1,128).
dist(id0,id2,1,24).
dist(id2,id0,1,24).
dist(id1,id2,1,106).
dist(id2,id1,1,106).
}).



#pos(p_19165@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,128).
dist(id1,id0,1,128).
dist(id0,id2,1,23).
dist(id2,id0,1,23).
dist(id1,id2,1,107).
dist(id2,id1,1,107).
}).



#pos(p_19166@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,132).
dist(id1,id0,1,132).
dist(id0,id2,1,23).
dist(id2,id0,1,23).
dist(id1,id2,1,109).
dist(id2,id1,1,109).
}).



#pos(p_23909@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,191).
dist(id1,id0,1,191).
}).



#pos(p_23910@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,191).
dist(id1,id0,1,191).
}).



#pos(p_23911@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,191).
dist(id1,id0,1,191).
}).



#pos(p_23912@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,188).
dist(id1,id0,1,188).
}).



#pos(p_23913@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,188).
dist(id1,id0,1,188).
}).



#pos(p_23914@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,191).
dist(id1,id0,1,191).
}).



#pos(p_23915@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,189).
dist(id1,id0,1,189).
}).



#pos(p_23916@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,192).
dist(id1,id0,1,192).
}).



#pos(p_23917@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,193).
dist(id1,id0,1,193).
}).



#pos(p_23918@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_23919@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,196).
dist(id1,id0,1,196).
}).



#pos(p_23920@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,198).
dist(id1,id0,1,198).
}).



#pos(p_23921@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,199).
dist(id1,id0,1,199).
}).



#pos(p_23922@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,200).
dist(id1,id0,1,200).
}).



#pos(p_23923@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,201).
dist(id1,id0,1,201).
}).



#pos(p_23924@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,201).
dist(id1,id0,1,201).
}).



#pos(p_23925@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,199).
dist(id1,id0,1,199).
}).



#pos(p_23926@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,200).
dist(id1,id0,1,200).
}).



#pos(p_23927@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,201).
dist(id1,id0,1,201).
}).



#pos(p_23928@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,200).
dist(id1,id0,1,200).
}).



#pos(p_23929@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,201).
dist(id1,id0,1,201).
}).



#pos(p_23930@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,201).
dist(id1,id0,1,201).
}).



#pos(p_23931@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,203).
dist(id1,id0,1,203).
}).



#pos(p_23932@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,206).
dist(id1,id0,1,206).
}).



#pos(p_23933@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,210).
dist(id1,id0,1,210).
}).



#pos(p_21870@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,80).
dist(id1,id0,1,80).
dist(id0,id2,1,108).
dist(id2,id0,1,108).
dist(id1,id2,1,187).
dist(id2,id1,1,187).
}).



#pos(p_21871@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,81).
dist(id1,id0,1,81).
dist(id0,id2,1,106).
dist(id2,id0,1,106).
dist(id1,id2,1,187).
dist(id2,id1,1,187).
}).



#pos(p_21872@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,82).
dist(id1,id0,1,82).
dist(id0,id2,1,105).
dist(id2,id0,1,105).
dist(id1,id2,1,186).
dist(id2,id1,1,186).
}).



#pos(p_21873@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,103).
dist(id2,id0,1,103).
dist(id1,id2,1,186).
dist(id2,id1,1,186).
}).



#pos(p_21874@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,87).
dist(id1,id0,1,87).
dist(id0,id2,1,100).
dist(id2,id0,1,100).
dist(id1,id2,1,186).
dist(id2,id1,1,186).
}).



#pos(p_21875@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,89).
dist(id1,id0,1,89).
dist(id0,id2,1,97).
dist(id2,id0,1,97).
dist(id1,id2,1,185).
dist(id2,id1,1,185).
}).



#pos(p_21876@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,94).
dist(id1,id0,1,94).
dist(id0,id2,1,92).
dist(id2,id0,1,92).
dist(id1,id2,1,185).
dist(id2,id1,1,185).
}).



#pos(p_21877@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,98).
dist(id1,id0,1,98).
dist(id0,id2,1,88).
dist(id2,id0,1,88).
dist(id1,id2,1,185).
dist(id2,id1,1,185).
}).



#pos(p_21878@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,103).
dist(id1,id0,1,103).
dist(id0,id2,1,83).
dist(id2,id0,1,83).
dist(id1,id2,1,185).
dist(id2,id1,1,185).
}).



#pos(p_21879@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,107).
dist(id1,id0,1,107).
dist(id0,id2,1,80).
dist(id2,id0,1,80).
dist(id1,id2,1,186).
dist(id2,id1,1,186).
}).



#pos(p_21880@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,110).
dist(id1,id0,1,110).
dist(id0,id2,1,77).
dist(id2,id0,1,77).
dist(id1,id2,1,186).
dist(id2,id1,1,186).
}).



#pos(p_21881@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,110).
dist(id1,id0,1,110).
dist(id0,id2,1,75).
dist(id2,id0,1,75).
dist(id1,id2,1,185).
dist(id2,id1,1,185).
}).



#pos(p_21882@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,114).
dist(id1,id0,1,114).
dist(id0,id2,1,71).
dist(id2,id0,1,71).
dist(id1,id2,1,185).
dist(id2,id1,1,185).
}).



#pos(p_21883@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
dist(id0,id2,1,67).
dist(id2,id0,1,67).
dist(id1,id2,1,185).
dist(id2,id1,1,185).
}).



#pos(p_21884@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,123).
dist(id1,id0,1,123).
dist(id0,id2,1,62).
dist(id2,id0,1,62).
dist(id1,id2,1,185).
dist(id2,id1,1,185).
}).



#pos(p_21885@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,127).
dist(id1,id0,1,127).
dist(id0,id2,1,58).
dist(id2,id0,1,58).
dist(id1,id2,1,185).
dist(id2,id1,1,185).
}).



#pos(p_21886@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,128).
dist(id1,id0,1,128).
dist(id0,id2,1,57).
dist(id2,id0,1,57).
dist(id1,id2,1,185).
dist(id2,id1,1,185).
}).



#pos(p_21887@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,130).
dist(id1,id0,1,130).
dist(id0,id2,1,55).
dist(id2,id0,1,55).
dist(id1,id2,1,185).
dist(id2,id1,1,185).
}).



#pos(p_21888@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,133).
dist(id1,id0,1,133).
dist(id0,id2,1,52).
dist(id2,id0,1,52).
dist(id1,id2,1,185).
dist(id2,id1,1,185).
}).



#pos(p_21889@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,136).
dist(id1,id0,1,136).
dist(id0,id2,1,49).
dist(id2,id0,1,49).
dist(id1,id2,1,185).
dist(id2,id1,1,185).
}).



#pos(p_21890@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,139).
dist(id1,id0,1,139).
dist(id0,id2,1,46).
dist(id2,id0,1,46).
dist(id1,id2,1,185).
dist(id2,id1,1,185).
}).



#pos(p_21891@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,142).
dist(id1,id0,1,142).
dist(id0,id2,1,43).
dist(id2,id0,1,43).
dist(id1,id2,1,185).
dist(id2,id1,1,185).
}).



#pos(p_21892@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,145).
dist(id1,id0,1,145).
dist(id0,id2,1,40).
dist(id2,id0,1,40).
dist(id1,id2,1,185).
dist(id2,id1,1,185).
}).



#pos(p_21893@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,146).
dist(id1,id0,1,146).
dist(id0,id2,1,39).
dist(id2,id0,1,39).
dist(id1,id2,1,185).
dist(id2,id1,1,185).
}).



#pos(p_21894@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(running(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,148).
dist(id1,id0,1,148).
dist(id0,id2,1,37).
dist(id2,id0,1,37).
dist(id1,id2,1,185).
dist(id2,id1,1,185).
}).



#pos(p_20745@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_20746@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_20747@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_20748@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_20749@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_20750@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_20751@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_20752@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_20753@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20754@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_20755@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_20756@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_20757@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20758@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20759@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20760@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_20761@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,13).
dist(id1,id0,1,13).
}).



#pos(p_20762@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_20763@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,18).
dist(id1,id0,1,18).
}).



#pos(p_20764@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,21).
dist(id1,id0,1,21).
}).



#pos(p_20765@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_20766@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
}).



#pos(p_20767@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
}).



#pos(p_20768@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
}).



#pos(p_20769@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_20620@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,114).
dist(id1,id0,1,114).
}).



#pos(p_20621@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,113).
dist(id1,id0,1,113).
}).



#pos(p_20622@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,113).
dist(id1,id0,1,113).
}).



#pos(p_20623@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,112).
dist(id1,id0,1,112).
}).



#pos(p_20624@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,113).
dist(id1,id0,1,113).
}).



#pos(p_20625@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,113).
dist(id1,id0,1,113).
}).



#pos(p_20626@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,111).
dist(id1,id0,1,111).
}).



#pos(p_20627@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,111).
dist(id1,id0,1,111).
}).



#pos(p_20628@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,108).
dist(id1,id0,1,108).
}).



#pos(p_20629@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,107).
dist(id1,id0,1,107).
}).



#pos(p_20630@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,107).
dist(id1,id0,1,107).
}).



#pos(p_20631@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,105).
dist(id1,id0,1,105).
}).



#pos(p_20632@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,104).
dist(id1,id0,1,104).
}).



#pos(p_20633@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,103).
dist(id1,id0,1,103).
}).



#pos(p_20634@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,101).
dist(id1,id0,1,101).
}).



#pos(p_20635@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,100).
dist(id1,id0,1,100).
}).



#pos(p_20636@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,99).
dist(id1,id0,1,99).
}).



#pos(p_20637@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,99).
dist(id1,id0,1,99).
}).



#pos(p_20638@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,99).
dist(id1,id0,1,99).
}).



#pos(p_20639@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,99).
dist(id1,id0,1,99).
}).



#pos(p_20640@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,98).
dist(id1,id0,1,98).
}).



#pos(p_20641@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,98).
dist(id1,id0,1,98).
}).



#pos(p_20642@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,96).
dist(id1,id0,1,96).
}).



#pos(p_20643@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,96).
dist(id1,id0,1,96).
}).



#pos(p_20644@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,96).
dist(id1,id0,1,96).
}).



#pos(p_9354@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9355@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9356@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9357@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9358@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9359@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9360@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9361@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9362@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9363@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9364@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9365@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9366@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9367@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9368@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9369@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9370@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9371@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9372@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9373@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9374@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9375@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9376@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9377@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9378@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4284@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4285@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4286@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4287@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4288@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4289@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4290@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4291@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4292@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4293@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4294@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4295@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4296@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4297@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4298@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4299@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4300@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4301@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4302@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4303@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4304@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4305@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4306@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4307@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4308@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_20820@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
}).



#pos(p_20821@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,39).
dist(id1,id0,1,39).
}).



#pos(p_20822@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,43).
dist(id1,id0,1,43).
}).



#pos(p_20823@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,44).
dist(id1,id0,1,44).
}).



#pos(p_20824@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
}).



#pos(p_20825@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,48).
dist(id1,id0,1,48).
}).



#pos(p_20826@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,49).
dist(id1,id0,1,49).
}).



#pos(p_20827@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,50).
dist(id1,id0,1,50).
}).



#pos(p_20828@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,52).
dist(id1,id0,1,52).
}).



#pos(p_20829@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,53).
dist(id1,id0,1,53).
}).



#pos(p_20830@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,55).
dist(id1,id0,1,55).
}).



#pos(p_20831@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,57).
dist(id1,id0,1,57).
}).



#pos(p_20832@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,58).
dist(id1,id0,1,58).
}).



#pos(p_20833@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,60).
dist(id1,id0,1,60).
}).



#pos(p_20834@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,61).
dist(id1,id0,1,61).
}).



#pos(p_20835@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,62).
dist(id1,id0,1,62).
}).



#pos(p_20836@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,62).
dist(id1,id0,1,62).
}).



#pos(p_20837@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,63).
dist(id1,id0,1,63).
}).



#pos(p_20838@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,63).
dist(id1,id0,1,63).
}).



#pos(p_20839@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,62).
dist(id1,id0,1,62).
}).



#pos(p_20840@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,64).
dist(id1,id0,1,64).
}).



#pos(p_20841@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,66).
dist(id1,id0,1,66).
}).



#pos(p_20842@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,68).
dist(id1,id0,1,68).
}).



#pos(p_20843@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,69).
dist(id1,id0,1,69).
}).



#pos(p_20844@1, {}, {}, {
person(id0).
person(id1).

happensAt(running(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,70).
dist(id1,id0,1,70).
}).



#pos(p_23859@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,152).
dist(id1,id0,1,152).
}).



#pos(p_23860@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,152).
dist(id1,id0,1,152).
}).



#pos(p_23861@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,153).
dist(id1,id0,1,153).
}).



#pos(p_23862@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,152).
dist(id1,id0,1,152).
}).



#pos(p_23863@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,152).
dist(id1,id0,1,152).
}).



#pos(p_23864@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(appear(id1),1).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,203).
dist(id1,id0,1,203).
dist(id0,id2,1,151).
dist(id2,id0,1,151).
dist(id1,id2,1,213).
dist(id2,id1,1,213).
}).



#pos(p_23865@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,203).
dist(id1,id0,1,203).
dist(id0,id2,1,151).
dist(id2,id0,1,151).
dist(id1,id2,1,213).
dist(id2,id1,1,213).
}).



#pos(p_23866@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,202).
dist(id1,id0,1,202).
dist(id0,id2,1,153).
dist(id2,id0,1,153).
dist(id1,id2,1,214).
dist(id2,id1,1,214).
}).



#pos(p_23867@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,202).
dist(id1,id0,1,202).
dist(id0,id2,1,155).
dist(id2,id0,1,155).
dist(id1,id2,1,217).
dist(id2,id1,1,217).
}).



#pos(p_23868@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,202).
dist(id1,id0,1,202).
dist(id0,id2,1,155).
dist(id2,id0,1,155).
dist(id1,id2,1,217).
dist(id2,id1,1,217).
}).



#pos(p_23869@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,202).
dist(id1,id0,1,202).
dist(id0,id2,1,160).
dist(id2,id0,1,160).
dist(id1,id2,1,221).
dist(id2,id1,1,221).
}).



#pos(p_23870@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,201).
dist(id1,id0,1,201).
dist(id0,id2,1,163).
dist(id2,id0,1,163).
dist(id1,id2,1,224).
dist(id2,id1,1,224).
}).



#pos(p_23871@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,201).
dist(id1,id0,1,201).
dist(id0,id2,1,166).
dist(id2,id0,1,166).
dist(id1,id2,1,228).
dist(id2,id1,1,228).
}).



#pos(p_23872@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,197).
dist(id1,id0,1,197).
dist(id0,id2,1,168).
dist(id2,id0,1,168).
dist(id1,id2,1,230).
dist(id2,id1,1,230).
}).



#pos(p_23873@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,197).
dist(id1,id0,1,197).
dist(id0,id2,1,168).
dist(id2,id0,1,168).
dist(id1,id2,1,234).
dist(id2,id1,1,234).
}).



#pos(p_23874@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,197).
dist(id1,id0,1,197).
dist(id0,id2,1,168).
dist(id2,id0,1,168).
dist(id1,id2,1,237).
dist(id2,id1,1,237).
}).



#pos(p_23875@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,198).
dist(id1,id0,1,198).
dist(id0,id2,1,169).
dist(id2,id0,1,169).
dist(id1,id2,1,237).
dist(id2,id1,1,237).
}).



#pos(p_23876@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,198).
dist(id1,id0,1,198).
dist(id0,id2,1,169).
dist(id2,id0,1,169).
dist(id1,id2,1,239).
dist(id2,id1,1,239).
}).



#pos(p_23877@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,199).
dist(id1,id0,1,199).
dist(id0,id2,1,167).
dist(id2,id0,1,167).
dist(id1,id2,1,239).
dist(id2,id1,1,239).
}).



#pos(p_23878@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,199).
dist(id1,id0,1,199).
dist(id0,id2,1,167).
dist(id2,id0,1,167).
dist(id1,id2,1,240).
dist(id2,id1,1,240).
}).



#pos(p_23879@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,199).
dist(id1,id0,1,199).
dist(id0,id2,1,166).
dist(id2,id0,1,166).
dist(id1,id2,1,240).
dist(id2,id1,1,240).
}).



#pos(p_23880@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,196).
dist(id1,id0,1,196).
dist(id0,id2,1,166).
dist(id2,id0,1,166).
dist(id1,id2,1,241).
dist(id2,id1,1,241).
}).



#pos(p_23881@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,197).
dist(id1,id0,1,197).
dist(id0,id2,1,168).
dist(id2,id0,1,168).
dist(id1,id2,1,244).
dist(id2,id1,1,244).
}).



#pos(p_23882@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,197).
dist(id1,id0,1,197).
dist(id0,id2,1,170).
dist(id2,id0,1,170).
dist(id1,id2,1,245).
dist(id2,id1,1,245).
}).



#pos(p_23883@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,197).
dist(id1,id0,1,197).
dist(id0,id2,1,171).
dist(id2,id0,1,171).
dist(id1,id2,1,246).
dist(id2,id1,1,246).
}).



#pos(p_20243@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,29).
dist(id1,id0,1,29).
}).



#pos(p_20244@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
}).



#pos(p_20245@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_20246@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_20247@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
}).



#pos(p_20248@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_20249@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
}).



#pos(p_20250@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_20251@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_20252@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_20253@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,37).
dist(id1,id0,1,37).
}).



#pos(p_20254@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
}).



#pos(p_20255@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,40).
dist(id1,id0,1,40).
}).



#pos(p_20256@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,42).
dist(id1,id0,1,42).
}).



#pos(p_20257@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,43).
dist(id1,id0,1,43).
}).



#pos(p_20258@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,45).
dist(id1,id0,1,45).
}).



#pos(p_20259@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
}).



#pos(p_20260@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,49).
dist(id1,id0,1,49).
}).



#pos(p_20261@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,49).
dist(id1,id0,1,49).
}).



#pos(p_20262@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,50).
dist(id1,id0,1,50).
}).



#pos(p_20263@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,51).
dist(id1,id0,1,51).
}).



#pos(p_20264@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,53).
dist(id1,id0,1,53).
}).



#pos(p_20265@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,53).
dist(id1,id0,1,53).
}).



#pos(p_20266@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,55).
dist(id1,id0,1,55).
}).



#pos(p_20267@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,54).
dist(id1,id0,1,54).
}).




#pos(p_6520@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,109).
dist(id1,id0,1,109).
}).



#pos(p_6521@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,109).
dist(id1,id0,1,109).
}).



#pos(p_6522@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,109).
dist(id1,id0,1,109).
}).



#pos(p_6523@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,109).
dist(id1,id0,1,109).
}).



#pos(p_6524@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,109).
dist(id1,id0,1,109).
}).



#pos(p_6525@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,109).
dist(id1,id0,1,109).
}).



#pos(p_6526@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,110).
dist(id1,id0,1,110).
}).



#pos(p_6527@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,110).
dist(id1,id0,1,110).
}).



#pos(p_6528@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,110).
dist(id1,id0,1,110).
}).



#pos(p_6529@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,109).
dist(id1,id0,1,109).
}).



#pos(p_6530@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,109).
dist(id1,id0,1,109).
}).



#pos(p_6531@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,109).
dist(id1,id0,1,109).
}).



#pos(p_6532@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,108).
dist(id1,id0,1,108).
}).



#pos(p_6533@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,108).
dist(id1,id0,1,108).
}).



#pos(p_6534@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,108).
dist(id1,id0,1,108).
}).



#pos(p_6535@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,108).
dist(id1,id0,1,108).
}).



#pos(p_6536@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,108).
dist(id1,id0,1,108).
}).



#pos(p_6537@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,108).
dist(id1,id0,1,108).
}).



#pos(p_6538@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,108).
dist(id1,id0,1,108).
}).



#pos(p_6539@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,108).
dist(id1,id0,1,108).
}).



#pos(p_6540@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,109).
dist(id1,id0,1,109).
}).



#pos(p_6541@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,109).
dist(id1,id0,1,109).
}).



#pos(p_6542@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,109).
dist(id1,id0,1,109).
}).



#pos(p_6543@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,108).
dist(id1,id0,1,108).
}).



#pos(p_6544@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,108).
dist(id1,id0,1,108).
}).



#pos(p_14266@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,16).
dist(id1,id0,1,16).
}).



#pos(p_14267@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_14268@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_14269@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,13).
dist(id1,id0,1,13).
}).



#pos(p_14270@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_14271@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_14272@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_14273@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_14274@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_14275@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_14276@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_14277@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_14278@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_14279@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_14280@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_14281@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_14282@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_14283@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_14284@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_14285@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_14286@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_14287@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_14288@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_14289@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_14290@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_8904@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8905@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8906@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8907@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8908@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8909@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8910@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8911@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8912@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8913@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8914@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8915@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8916@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8917@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8918@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8919@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8920@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8921@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8922@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8923@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8924@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8925@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8926@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8927@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8928@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18109@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,268).
dist(id1,id0,1,268).
}).



#pos(p_18110@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,266).
dist(id1,id0,1,266).
}).



#pos(p_18111@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,266).
dist(id1,id0,1,266).
}).



#pos(p_18112@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,266).
dist(id1,id0,1,266).
}).



#pos(p_18113@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,267).
dist(id1,id0,1,267).
}).



#pos(p_18114@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,264).
dist(id1,id0,1,264).
}).



#pos(p_18115@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,264).
dist(id1,id0,1,264).
}).



#pos(p_18116@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,262).
dist(id1,id0,1,262).
}).



#pos(p_18117@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,259).
dist(id1,id0,1,259).
}).



#pos(p_18118@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,259).
dist(id1,id0,1,259).
}).



#pos(p_18119@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,252).
dist(id1,id0,1,252).
}).



#pos(p_18120@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,252).
dist(id1,id0,1,252).
}).



#pos(p_18121@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,251).
dist(id1,id0,1,251).
}).



#pos(p_18122@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,248).
dist(id1,id0,1,248).
}).



#pos(p_18123@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,248).
dist(id1,id0,1,248).
}).



#pos(p_18124@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,246).
dist(id1,id0,1,246).
}).



#pos(p_18125@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,244).
dist(id1,id0,1,244).
}).



#pos(p_18126@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,242).
dist(id1,id0,1,242).
}).



#pos(p_18127@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,241).
dist(id1,id0,1,241).
}).



#pos(p_18128@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,239).
dist(id1,id0,1,239).
}).



#pos(p_18129@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,237).
dist(id1,id0,1,237).
}).



#pos(p_18130@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,234).
dist(id1,id0,1,234).
}).



#pos(p_18131@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,229).
dist(id1,id0,1,229).
}).



#pos(p_18132@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,226).
dist(id1,id0,1,226).
}).



#pos(p_18133@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,223).
dist(id1,id0,1,223).
}).



#pos(p_4159@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4160@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4161@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4162@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4163@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4164@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4165@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4166@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4167@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4168@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4169@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4170@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4171@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4172@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4173@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4174@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4175@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4176@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4177@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4178@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4179@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4180@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4181@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4182@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4183@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_21645@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
}).



#pos(p_21646@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
}).



#pos(p_21647@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,215).
dist(id1,id0,1,215).
}).



#pos(p_21648@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,213).
dist(id1,id0,1,213).
}).



#pos(p_21649@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,212).
dist(id1,id0,1,212).
}).



#pos(p_21650@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,210).
dist(id1,id0,1,210).
}).



#pos(p_21651@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,208).
dist(id1,id0,1,208).
}).



#pos(p_21652@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(appear(id1),1).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,176).
dist(id1,id0,1,176).
dist(id0,id2,1,205).
dist(id2,id0,1,205).
dist(id1,id2,1,237).
dist(id2,id1,1,237).
}).



#pos(p_21653@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,176).
dist(id1,id0,1,176).
dist(id0,id2,1,205).
dist(id2,id0,1,205).
dist(id1,id2,1,236).
dist(id2,id1,1,236).
}).



#pos(p_21654@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,174).
dist(id1,id0,1,174).
dist(id0,id2,1,204).
dist(id2,id0,1,204).
dist(id1,id2,1,235).
dist(id2,id1,1,235).
}).



#pos(p_21655@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,169).
dist(id1,id0,1,169).
dist(id0,id2,1,204).
dist(id2,id0,1,204).
dist(id1,id2,1,232).
dist(id2,id1,1,232).
}).



#pos(p_21656@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,168).
dist(id1,id0,1,168).
dist(id0,id2,1,205).
dist(id2,id0,1,205).
dist(id1,id2,1,232).
dist(id2,id1,1,232).
}).



#pos(p_21657@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,170).
dist(id1,id0,1,170).
dist(id0,id2,1,206).
dist(id2,id0,1,206).
dist(id1,id2,1,231).
dist(id2,id1,1,231).
}).



#pos(p_21658@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,171).
dist(id1,id0,1,171).
dist(id0,id2,1,205).
dist(id2,id0,1,205).
dist(id1,id2,1,228).
dist(id2,id1,1,228).
}).



#pos(p_21659@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,171).
dist(id1,id0,1,171).
dist(id0,id2,1,205).
dist(id2,id0,1,205).
dist(id1,id2,1,227).
dist(id2,id1,1,227).
}).



#pos(p_21660@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,171).
dist(id1,id0,1,171).
dist(id0,id2,1,205).
dist(id2,id0,1,205).
dist(id1,id2,1,225).
dist(id2,id1,1,225).
}).



#pos(p_21661@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,172).
dist(id1,id0,1,172).
dist(id0,id2,1,202).
dist(id2,id0,1,202).
dist(id1,id2,1,222).
dist(id2,id1,1,222).
}).



#pos(p_21662@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,172).
dist(id1,id0,1,172).
dist(id0,id2,1,199).
dist(id2,id0,1,199).
dist(id1,id2,1,219).
dist(id2,id1,1,219).
}).



#pos(p_21663@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,171).
dist(id1,id0,1,171).
dist(id0,id2,1,197).
dist(id2,id0,1,197).
dist(id1,id2,1,216).
dist(id2,id1,1,216).
}).



#pos(p_21664@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,169).
dist(id1,id0,1,169).
dist(id0,id2,1,195).
dist(id2,id0,1,195).
dist(id1,id2,1,212).
dist(id2,id1,1,212).
}).



#pos(p_21665@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,168).
dist(id1,id0,1,168).
dist(id0,id2,1,193).
dist(id2,id0,1,193).
dist(id1,id2,1,209).
dist(id2,id1,1,209).
}).



#pos(p_21666@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,168).
dist(id1,id0,1,168).
dist(id0,id2,1,192).
dist(id2,id0,1,192).
dist(id1,id2,1,205).
dist(id2,id1,1,205).
}).



#pos(p_21667@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,168).
dist(id1,id0,1,168).
dist(id0,id2,1,190).
dist(id2,id0,1,190).
dist(id1,id2,1,202).
dist(id2,id1,1,202).
}).



#pos(p_21668@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,167).
dist(id1,id0,1,167).
dist(id0,id2,1,190).
dist(id2,id0,1,190).
dist(id1,id2,1,199).
dist(id2,id1,1,199).
}).



#pos(p_21669@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,166).
dist(id1,id0,1,166).
dist(id0,id2,1,190).
dist(id2,id0,1,190).
dist(id1,id2,1,199).
dist(id2,id1,1,199).
}).



#pos(p_20293@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,96).
dist(id1,id0,1,96).
}).



#pos(p_20294@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,98).
dist(id1,id0,1,98).
}).



#pos(p_20295@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,99).
dist(id1,id0,1,99).
}).



#pos(p_20296@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,101).
dist(id1,id0,1,101).
}).



#pos(p_20297@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,102).
dist(id1,id0,1,102).
}).



#pos(p_20298@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,101).
dist(id1,id0,1,101).
}).



#pos(p_20299@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,103).
dist(id1,id0,1,103).
}).



#pos(p_20300@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,104).
dist(id1,id0,1,104).
}).



#pos(p_20301@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,106).
dist(id1,id0,1,106).
}).



#pos(p_20302@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,111).
dist(id1,id0,1,111).
}).



#pos(p_20303@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,115).
dist(id1,id0,1,115).
}).



#pos(p_20304@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,119).
dist(id1,id0,1,119).
}).



#pos(p_20305@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,120).
dist(id1,id0,1,120).
}).



#pos(p_20306@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,123).
dist(id1,id0,1,123).
}).



#pos(p_20307@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,126).
dist(id1,id0,1,126).
}).



#pos(p_20308@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,127).
dist(id1,id0,1,127).
}).



#pos(p_20309@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,128).
dist(id1,id0,1,128).
}).



#pos(p_20310@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,129).
dist(id1,id0,1,129).
}).



#pos(p_20311@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,130).
dist(id1,id0,1,130).
}).



#pos(p_20312@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,131).
dist(id1,id0,1,131).
}).



#pos(p_20313@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,131).
dist(id1,id0,1,131).
}).



#pos(p_20314@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,133).
dist(id1,id0,1,133).
}).



#pos(p_20315@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,135).
dist(id1,id0,1,135).
}).



#pos(p_20316@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,140).
dist(id1,id0,1,140).
}).



#pos(p_20317@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,143).
dist(id1,id0,1,143).
}).



#pos(p_1649@1, {}, {}, {
person(id0).

happensAt(appear(id0),1).
happensAt(walking(id0),1).

}).



#pos(p_1650@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1651@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1652@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1653@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1654@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1655@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1656@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1657@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1658@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1659@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1660@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7125@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7126@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7127@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7128@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7129@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7130@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7131@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7132@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7133@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7134@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7135@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7136@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7137@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7138@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7139@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7140@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7141@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7142@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7143@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7144@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7145@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7146@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7147@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7148@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7149@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16651@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16652@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16653@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16654@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16655@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16656@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16657@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16658@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16659@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16660@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16661@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16662@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16663@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16664@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16665@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16666@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16667@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16668@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16669@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16670@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16671@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16672@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16673@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16674@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16675@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2057@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2058@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2059@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2060@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2061@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2062@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2063@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2064@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2065@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2066@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2067@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2068@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2069@1, {}, {}, {
person(id0).
person(id1).

happensAt(appear(id1),1).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,342).
dist(id1,id0,1,342).
}).



#pos(p_2070@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,342).
dist(id1,id0,1,342).
}).



#pos(p_2071@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,343).
dist(id1,id0,1,343).
}).



#pos(p_2072@1, {}, {}, {
person(id0).
person(id1).

happensAt(disappear(id0),1).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,345).
dist(id1,id0,1,345).
}).



#pos(p_2073@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2074@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2075@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2076@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2077@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2078@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2079@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2080@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2081@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17717@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,18).
dist(id1,id0,1,18).
}).



#pos(p_17718@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,17).
dist(id1,id0,1,17).
}).



#pos(p_17719@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,16).
dist(id1,id0,1,16).
}).



#pos(p_17720@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,18).
dist(id1,id0,1,18).
}).



#pos(p_17721@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,18).
dist(id1,id0,1,18).
}).



#pos(p_17722@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,18).
dist(id1,id0,1,18).
}).



#pos(p_17723@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,17).
dist(id1,id0,1,17).
}).



#pos(p_17724@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,17).
dist(id1,id0,1,17).
}).



#pos(p_17725@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,17).
dist(id1,id0,1,17).
}).



#pos(p_17726@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_17727@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_17728@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_17729@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_17730@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_17731@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_17732@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_17733@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_17734@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_17735@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_17736@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_17737@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_17738@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_17739@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_17740@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_17741@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_14216@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,72).
dist(id1,id0,1,72).
}).



#pos(p_14217@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,72).
dist(id1,id0,1,72).
}).



#pos(p_14218@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,70).
dist(id1,id0,1,70).
}).



#pos(p_14219@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,68).
dist(id1,id0,1,68).
}).



#pos(p_14220@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,67).
dist(id1,id0,1,67).
}).



#pos(p_14221@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,66).
dist(id1,id0,1,66).
}).



#pos(p_14222@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,64).
dist(id1,id0,1,64).
}).



#pos(p_14223@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,63).
dist(id1,id0,1,63).
}).



#pos(p_14224@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,61).
dist(id1,id0,1,61).
}).



#pos(p_14225@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,60).
dist(id1,id0,1,60).
}).



#pos(p_14226@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,58).
dist(id1,id0,1,58).
}).



#pos(p_14227@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,57).
dist(id1,id0,1,57).
}).



#pos(p_14228@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,55).
dist(id1,id0,1,55).
}).



#pos(p_14229@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,55).
dist(id1,id0,1,55).
}).



#pos(p_14230@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,53).
dist(id1,id0,1,53).
}).



#pos(p_14231@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,52).
dist(id1,id0,1,52).
}).



#pos(p_14232@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,51).
dist(id1,id0,1,51).
}).



#pos(p_14233@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,49).
dist(id1,id0,1,49).
}).



#pos(p_14234@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,48).
dist(id1,id0,1,48).
}).



#pos(p_14235@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,47).
dist(id1,id0,1,47).
}).



#pos(p_14236@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,47).
dist(id1,id0,1,47).
}).



#pos(p_14237@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,45).
dist(id1,id0,1,45).
}).



#pos(p_14238@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,45).
dist(id1,id0,1,45).
}).



#pos(p_14239@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,44).
dist(id1,id0,1,44).
}).



#pos(p_14240@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,42).
dist(id1,id0,1,42).
}).




#pos(p_23784@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,205).
dist(id1,id0,1,205).
dist(id0,id2,1,9).
dist(id2,id0,1,9).
dist(id1,id2,1,209).
dist(id2,id1,1,209).
dist(id0,id3,1,91).
dist(id3,id0,1,91).
dist(id1,id3,1,145).
dist(id3,id1,1,145).
dist(id2,id3,1,89).
dist(id3,id2,1,89).
}).



#pos(p_23785@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,205).
dist(id1,id0,1,205).
dist(id0,id2,1,9).
dist(id2,id0,1,9).
dist(id1,id2,1,209).
dist(id2,id1,1,209).
dist(id0,id3,1,92).
dist(id3,id0,1,92).
dist(id1,id3,1,145).
dist(id3,id1,1,145).
dist(id2,id3,1,90).
dist(id3,id2,1,90).
}).



#pos(p_23786@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,204).
dist(id1,id0,1,204).
dist(id0,id2,1,12).
dist(id2,id0,1,12).
dist(id1,id2,1,208).
dist(id2,id1,1,208).
dist(id0,id3,1,93).
dist(id3,id0,1,93).
dist(id1,id3,1,144).
dist(id3,id1,1,144).
dist(id2,id3,1,89).
dist(id3,id2,1,89).
}).



#pos(p_23787@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,204).
dist(id1,id0,1,204).
dist(id0,id2,1,12).
dist(id2,id0,1,12).
dist(id1,id2,1,208).
dist(id2,id1,1,208).
dist(id0,id3,1,94).
dist(id3,id0,1,94).
dist(id1,id3,1,144).
dist(id3,id1,1,144).
dist(id2,id3,1,90).
dist(id3,id2,1,90).
}).



#pos(p_23788@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,203).
dist(id1,id0,1,203).
dist(id0,id2,1,12).
dist(id2,id0,1,12).
dist(id1,id2,1,207).
dist(id2,id1,1,207).
dist(id0,id3,1,95).
dist(id3,id0,1,95).
dist(id1,id3,1,144).
dist(id3,id1,1,144).
dist(id2,id3,1,91).
dist(id3,id2,1,91).
}).



#pos(p_23789@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,203).
dist(id1,id0,1,203).
dist(id0,id2,1,12).
dist(id2,id0,1,12).
dist(id1,id2,1,207).
dist(id2,id1,1,207).
dist(id0,id3,1,95).
dist(id3,id0,1,95).
dist(id1,id3,1,144).
dist(id3,id1,1,144).
dist(id2,id3,1,91).
dist(id3,id2,1,91).
}).



#pos(p_23790@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,203).
dist(id1,id0,1,203).
dist(id0,id2,1,12).
dist(id2,id0,1,12).
dist(id1,id2,1,207).
dist(id2,id1,1,207).
dist(id0,id3,1,95).
dist(id3,id0,1,95).
dist(id1,id3,1,144).
dist(id3,id1,1,144).
dist(id2,id3,1,91).
dist(id3,id2,1,91).
}).



#pos(p_23791@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,203).
dist(id1,id0,1,203).
dist(id0,id2,1,12).
dist(id2,id0,1,12).
dist(id1,id2,1,207).
dist(id2,id1,1,207).
dist(id0,id3,1,96).
dist(id3,id0,1,96).
dist(id1,id3,1,144).
dist(id3,id1,1,144).
dist(id2,id3,1,92).
dist(id3,id2,1,92).
}).



#pos(p_23792@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,203).
dist(id1,id0,1,203).
dist(id0,id2,1,12).
dist(id2,id0,1,12).
dist(id1,id2,1,207).
dist(id2,id1,1,207).
dist(id0,id3,1,97).
dist(id3,id0,1,97).
dist(id1,id3,1,145).
dist(id3,id1,1,145).
dist(id2,id3,1,92).
dist(id3,id2,1,92).
}).



#pos(p_23793@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(disappear(id2),1).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,203).
dist(id1,id0,1,203).
dist(id0,id2,1,12).
dist(id2,id0,1,12).
dist(id1,id2,1,207).
dist(id2,id1,1,207).
dist(id0,id3,1,98).
dist(id3,id0,1,98).
dist(id1,id3,1,146).
dist(id3,id1,1,146).
dist(id2,id3,1,94).
dist(id3,id2,1,94).
}).



#pos(p_23794@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,203).
dist(id1,id0,1,203).
dist(id0,id2,1,100).
dist(id2,id0,1,100).
dist(id1,id2,1,145).
dist(id2,id1,1,145).
}).



#pos(p_23795@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,203).
dist(id1,id0,1,203).
dist(id0,id2,1,100).
dist(id2,id0,1,100).
dist(id1,id2,1,145).
dist(id2,id1,1,145).
}).



#pos(p_23796@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,199).
dist(id1,id0,1,199).
dist(id0,id2,1,105).
dist(id2,id0,1,105).
dist(id1,id2,1,142).
dist(id2,id1,1,142).
}).



#pos(p_23797@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,198).
dist(id1,id0,1,198).
dist(id0,id2,1,106).
dist(id2,id0,1,106).
dist(id1,id2,1,142).
dist(id2,id1,1,142).
}).



#pos(p_23798@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,198).
dist(id1,id0,1,198).
dist(id0,id2,1,106).
dist(id2,id0,1,106).
dist(id1,id2,1,141).
dist(id2,id1,1,141).
}).



#pos(p_23799@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,196).
dist(id1,id0,1,196).
dist(id0,id2,1,109).
dist(id2,id0,1,109).
dist(id1,id2,1,139).
dist(id2,id1,1,139).
}).



#pos(p_23800@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,197).
dist(id1,id0,1,197).
dist(id0,id2,1,111).
dist(id2,id0,1,111).
dist(id1,id2,1,138).
dist(id2,id1,1,138).
}).



#pos(p_23801@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,197).
dist(id1,id0,1,197).
dist(id0,id2,1,114).
dist(id2,id0,1,114).
dist(id1,id2,1,141).
dist(id2,id1,1,141).
}).



#pos(p_23802@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,196).
dist(id1,id0,1,196).
dist(id0,id2,1,115).
dist(id2,id0,1,115).
dist(id1,id2,1,141).
dist(id2,id1,1,141).
}).



#pos(p_23803@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
dist(id0,id2,1,116).
dist(id2,id0,1,116).
dist(id1,id2,1,140).
dist(id2,id1,1,140).
}).



#pos(p_23804@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
dist(id0,id2,1,117).
dist(id2,id0,1,117).
dist(id1,id2,1,139).
dist(id2,id1,1,139).
}).



#pos(p_23805@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
dist(id0,id2,1,117).
dist(id2,id0,1,117).
dist(id1,id2,1,141).
dist(id2,id1,1,141).
}).



#pos(p_23806@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
dist(id0,id2,1,118).
dist(id2,id0,1,118).
dist(id1,id2,1,141).
dist(id2,id1,1,141).
}).



#pos(p_23807@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
dist(id0,id2,1,118).
dist(id2,id0,1,118).
dist(id1,id2,1,140).
dist(id2,id1,1,140).
}).



#pos(p_23808@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,194).
dist(id1,id0,1,194).
dist(id0,id2,1,119).
dist(id2,id0,1,119).
dist(id1,id2,1,139).
dist(id2,id1,1,139).
}).



#pos(p_19592@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,178).
dist(id1,id0,1,178).
}).



#pos(p_19593@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
}).



#pos(p_19594@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,181).
dist(id1,id0,1,181).
}).



#pos(p_19595@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,181).
dist(id1,id0,1,181).
}).



#pos(p_19596@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
}).



#pos(p_19597@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,181).
dist(id1,id0,1,181).
}).



#pos(p_19598@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,183).
dist(id1,id0,1,183).
}).



#pos(p_19599@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,184).
dist(id1,id0,1,184).
}).



#pos(p_19600@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,185).
dist(id1,id0,1,185).
}).



#pos(p_19601@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,186).
dist(id1,id0,1,186).
}).



#pos(p_19602@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,186).
dist(id1,id0,1,186).
}).



#pos(p_19603@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,186).
dist(id1,id0,1,186).
}).



#pos(p_19604@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,186).
dist(id1,id0,1,186).
}).



#pos(p_19605@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,188).
dist(id1,id0,1,188).
}).



#pos(p_19606@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,187).
dist(id1,id0,1,187).
}).



#pos(p_19607@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,187).
dist(id1,id0,1,187).
}).



#pos(p_19608@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,189).
dist(id1,id0,1,189).
}).



#pos(p_19609@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,190).
dist(id1,id0,1,190).
}).



#pos(p_19610@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,191).
dist(id1,id0,1,191).
}).



#pos(p_19611@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,192).
dist(id1,id0,1,192).
}).



#pos(p_19612@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,193).
dist(id1,id0,1,193).
}).



#pos(p_19613@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(disappear(id0),1).
dist(id0,id1,1,192).
dist(id1,id0,1,192).
}).



#pos(p_19614@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19615@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19616@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11503@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11504@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11505@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11506@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11507@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11508@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11509@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11510@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11511@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11512@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11513@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11514@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11515@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11516@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11517@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11518@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11519@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11520@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11521@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11522@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11523@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11524@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11525@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11526@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11527@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_2434@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2435@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2436@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2437@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2438@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2439@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2440@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2441@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2442@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2443@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2444@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2445@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2446@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2447@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2448@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2449@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2450@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2451@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2452@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2453@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2454@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2455@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2456@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2457@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2458@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).




#pos(p_14066@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14067@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14068@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14069@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14070@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14071@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14072@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14073@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14074@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14075@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14076@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14077@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14078@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14079@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14080@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14081@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14082@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14083@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14084@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14085@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14086@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14087@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14088@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14089@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14090@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5884@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5885@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5886@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5887@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5888@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5889@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5890@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5891@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5892@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5893@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5894@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5895@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5896@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5897@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5898@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5899@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5900@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5901@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5902@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5903@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5904@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5905@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5906@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5907@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5908@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10047@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,69).
dist(id1,id0,1,69).
}).



#pos(p_10048@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,68).
dist(id1,id0,1,68).
}).



#pos(p_10049@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,68).
dist(id1,id0,1,68).
}).



#pos(p_10050@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,66).
dist(id1,id0,1,66).
}).



#pos(p_10051@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,66).
dist(id1,id0,1,66).
}).



#pos(p_10052@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,65).
dist(id1,id0,1,65).
}).



#pos(p_10053@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,65).
dist(id1,id0,1,65).
}).



#pos(p_10054@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,67).
dist(id1,id0,1,67).
}).



#pos(p_10055@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,65).
dist(id1,id0,1,65).
}).



#pos(p_10056@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,66).
dist(id1,id0,1,66).
}).



#pos(p_10057@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,65).
dist(id1,id0,1,65).
}).



#pos(p_10058@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,64).
dist(id1,id0,1,64).
}).



#pos(p_10059@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,63).
dist(id1,id0,1,63).
}).



#pos(p_10060@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,62).
dist(id1,id0,1,62).
}).



#pos(p_10061@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,62).
dist(id1,id0,1,62).
}).



#pos(p_10062@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,62).
dist(id1,id0,1,62).
}).



#pos(p_10063@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,62).
dist(id1,id0,1,62).
}).



#pos(p_10064@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,61).
dist(id1,id0,1,61).
}).



#pos(p_10065@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,60).
dist(id1,id0,1,60).
}).



#pos(p_10066@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,59).
dist(id1,id0,1,59).
}).



#pos(p_10067@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,59).
dist(id1,id0,1,59).
}).



#pos(p_10068@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,59).
dist(id1,id0,1,59).
}).



#pos(p_10069@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,59).
dist(id1,id0,1,59).
}).



#pos(p_10070@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,57).
dist(id1,id0,1,57).
}).



#pos(p_10071@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,56).
dist(id1,id0,1,56).
}).




#pos(p_4034@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4035@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4036@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4037@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4038@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4039@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4040@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4041@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4042@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4043@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4044@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4045@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4046@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4047@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4048@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4049@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4050@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4051@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4052@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4053@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4054@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4055@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4056@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4057@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4058@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).




#pos(p_10472@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,295).
dist(id1,id0,1,295).
}).



#pos(p_10473@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,295).
dist(id1,id0,1,295).
}).



#pos(p_10474@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,294).
dist(id1,id0,1,294).
}).



#pos(p_10475@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,295).
dist(id1,id0,1,295).
}).



#pos(p_10476@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,296).
dist(id1,id0,1,296).
}).



#pos(p_10477@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,296).
dist(id1,id0,1,296).
}).



#pos(p_10478@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,295).
dist(id1,id0,1,295).
}).



#pos(p_10479@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,295).
dist(id1,id0,1,295).
}).



#pos(p_10480@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,296).
dist(id1,id0,1,296).
}).



#pos(p_10481@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,295).
dist(id1,id0,1,295).
}).



#pos(p_10482@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,295).
dist(id1,id0,1,295).
}).



#pos(p_10483@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,295).
dist(id1,id0,1,295).
}).



#pos(p_10484@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,295).
dist(id1,id0,1,295).
}).



#pos(p_10485@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,295).
dist(id1,id0,1,295).
}).



#pos(p_10486@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,295).
dist(id1,id0,1,295).
}).



#pos(p_10487@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,295).
dist(id1,id0,1,295).
}).



#pos(p_10488@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,295).
dist(id1,id0,1,295).
}).



#pos(p_10489@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,295).
dist(id1,id0,1,295).
}).



#pos(p_10490@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,295).
dist(id1,id0,1,295).
}).



#pos(p_10491@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,295).
dist(id1,id0,1,295).
}).



#pos(p_10492@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,294).
dist(id1,id0,1,294).
}).



#pos(p_10493@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,294).
dist(id1,id0,1,294).
}).



#pos(p_10494@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,294).
dist(id1,id0,1,294).
}).



#pos(p_10495@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,294).
dist(id1,id0,1,294).
}).



#pos(p_10496@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,294).
dist(id1,id0,1,294).
}).




#pos(p_15016@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15017@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15018@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15019@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15020@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15021@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15022@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15023@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15024@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15025@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15026@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15027@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15028@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15029@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15030@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15031@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15032@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15033@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15034@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15035@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15036@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15037@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15038@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15039@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15040@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4234@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4235@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4236@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4237@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4238@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4239@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4240@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4241@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4242@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4243@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4244@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4245@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4246@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4247@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4248@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4249@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4250@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4251@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4252@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4253@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4254@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4255@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4256@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4257@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4258@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_19317@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,115).
dist(id1,id0,1,115).
}).



#pos(p_19318@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,115).
dist(id1,id0,1,115).
}).



#pos(p_19319@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,116).
dist(id1,id0,1,116).
}).



#pos(p_19320@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,119).
dist(id1,id0,1,119).
}).



#pos(p_19321@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,120).
dist(id1,id0,1,120).
}).



#pos(p_19322@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,121).
dist(id1,id0,1,121).
}).



#pos(p_19323@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,123).
dist(id1,id0,1,123).
}).



#pos(p_19324@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,123).
dist(id1,id0,1,123).
}).



#pos(p_19325@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,123).
dist(id1,id0,1,123).
}).



#pos(p_19326@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,124).
dist(id1,id0,1,124).
}).



#pos(p_19327@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,124).
dist(id1,id0,1,124).
}).



#pos(p_19328@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,124).
dist(id1,id0,1,124).
}).



#pos(p_19329@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,124).
dist(id1,id0,1,124).
}).



#pos(p_19330@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,126).
dist(id1,id0,1,126).
}).



#pos(p_19331@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,125).
dist(id1,id0,1,125).
}).



#pos(p_19332@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,126).
dist(id1,id0,1,126).
}).



#pos(p_19333@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,126).
dist(id1,id0,1,126).
}).



#pos(p_19334@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,128).
dist(id1,id0,1,128).
}).



#pos(p_19335@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,128).
dist(id1,id0,1,128).
}).



#pos(p_19336@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,128).
dist(id1,id0,1,128).
}).



#pos(p_19337@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,129).
dist(id1,id0,1,129).
}).



#pos(p_19338@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(disappear(id1),1).
dist(id0,id1,1,129).
dist(id1,id0,1,129).
}).



#pos(p_19339@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19340@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19341@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24084@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24085@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24086@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24087@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24088@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24089@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24090@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24091@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24092@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24093@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24094@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24095@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24096@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24097@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24098@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_24099@1, {}, {}, {
person(id0).

happensAt(disappear(id0),1).
happensAt(walking(id0),1).

}).



#pos(p_24100@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(appear(id0),1).
happensAt(appear(id1),1).
happensAt(appear(id2),1).
happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,49).
dist(id1,id0,1,49).
dist(id0,id2,1,94).
dist(id2,id0,1,94).
dist(id1,id2,1,52).
dist(id2,id1,1,52).
}).



#pos(p_24101@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,50).
dist(id1,id0,1,50).
dist(id0,id2,1,95).
dist(id2,id0,1,95).
dist(id1,id2,1,52).
dist(id2,id1,1,52).
}).



#pos(p_24102@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,53).
dist(id1,id0,1,53).
dist(id0,id2,1,97).
dist(id2,id0,1,97).
dist(id1,id2,1,52).
dist(id2,id1,1,52).
}).



#pos(p_24103@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,55).
dist(id1,id0,1,55).
dist(id0,id2,1,99).
dist(id2,id0,1,99).
dist(id1,id2,1,52).
dist(id2,id1,1,52).
}).



#pos(p_24104@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,57).
dist(id1,id0,1,57).
dist(id0,id2,1,100).
dist(id2,id0,1,100).
dist(id1,id2,1,52).
dist(id2,id1,1,52).
}).



#pos(p_24105@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,58).
dist(id1,id0,1,58).
dist(id0,id2,1,101).
dist(id2,id0,1,101).
dist(id1,id2,1,52).
dist(id2,id1,1,52).
}).



#pos(p_24106@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,60).
dist(id1,id0,1,60).
dist(id0,id2,1,103).
dist(id2,id0,1,103).
dist(id1,id2,1,52).
dist(id2,id1,1,52).
}).



#pos(p_24107@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,62).
dist(id1,id0,1,62).
dist(id0,id2,1,104).
dist(id2,id0,1,104).
dist(id1,id2,1,52).
dist(id2,id1,1,52).
}).



#pos(p_24108@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,62).
dist(id1,id0,1,62).
dist(id0,id2,1,105).
dist(id2,id0,1,105).
dist(id1,id2,1,52).
dist(id2,id1,1,52).
}).



#pos(p_20520@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20521@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20522@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20523@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20524@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20525@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20526@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20527@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20528@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20529@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20530@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20531@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20532@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20533@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20534@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20535@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20536@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20537@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20538@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20539@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20540@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20541@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20542@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20543@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20544@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_19417@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,208).
dist(id1,id0,1,208).
}).



#pos(p_19418@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,209).
dist(id1,id0,1,209).
}).



#pos(p_19419@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,210).
dist(id1,id0,1,210).
}).



#pos(p_19420@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,211).
dist(id1,id0,1,211).
}).



#pos(p_19421@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,213).
dist(id1,id0,1,213).
}).



#pos(p_19422@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,214).
dist(id1,id0,1,214).
}).



#pos(p_19423@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,215).
dist(id1,id0,1,215).
}).



#pos(p_19424@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,217).
dist(id1,id0,1,217).
}).



#pos(p_19425@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,219).
dist(id1,id0,1,219).
}).



#pos(p_19426@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,220).
dist(id1,id0,1,220).
}).



#pos(p_19427@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,221).
dist(id1,id0,1,221).
}).



#pos(p_19428@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,224).
dist(id1,id0,1,224).
}).



#pos(p_19429@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,227).
dist(id1,id0,1,227).
}).



#pos(p_19430@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,227).
dist(id1,id0,1,227).
}).



#pos(p_19431@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,228).
dist(id1,id0,1,228).
}).



#pos(p_19432@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,229).
dist(id1,id0,1,229).
}).



#pos(p_19433@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,231).
dist(id1,id0,1,231).
}).



#pos(p_19434@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,233).
dist(id1,id0,1,233).
}).



#pos(p_19435@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,235).
dist(id1,id0,1,235).
}).



#pos(p_19436@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,236).
dist(id1,id0,1,236).
}).



#pos(p_19437@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,239).
dist(id1,id0,1,239).
}).



#pos(p_19438@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,241).
dist(id1,id0,1,241).
}).



#pos(p_19439@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,244).
dist(id1,id0,1,244).
}).



#pos(p_19440@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,247).
dist(id1,id0,1,247).
}).



#pos(p_19441@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,251).
dist(id1,id0,1,251).
}).



#pos(p_22170@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,222).
dist(id1,id0,1,222).
}).



#pos(p_22171@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,224).
dist(id1,id0,1,224).
}).



#pos(p_22172@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,224).
dist(id1,id0,1,224).
}).



#pos(p_22173@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,226).
dist(id1,id0,1,226).
}).



#pos(p_22174@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,225).
dist(id1,id0,1,225).
}).



#pos(p_22175@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,225).
dist(id1,id0,1,225).
}).



#pos(p_22176@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,226).
dist(id1,id0,1,226).
}).



#pos(p_22177@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,228).
dist(id1,id0,1,228).
}).



#pos(p_22178@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,229).
dist(id1,id0,1,229).
}).



#pos(p_22179@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,230).
dist(id1,id0,1,230).
}).



#pos(p_22180@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,231).
dist(id1,id0,1,231).
}).



#pos(p_22181@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,232).
dist(id1,id0,1,232).
}).



#pos(p_22182@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,234).
dist(id1,id0,1,234).
}).



#pos(p_22183@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,234).
dist(id1,id0,1,234).
}).



#pos(p_22184@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,234).
dist(id1,id0,1,234).
}).



#pos(p_22185@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,233).
dist(id1,id0,1,233).
}).



#pos(p_22186@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,232).
dist(id1,id0,1,232).
}).



#pos(p_22187@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,234).
dist(id1,id0,1,234).
}).



#pos(p_22188@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,233).
dist(id1,id0,1,233).
}).



#pos(p_22189@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,233).
dist(id1,id0,1,233).
}).



#pos(p_22190@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,234).
dist(id1,id0,1,234).
}).



#pos(p_22191@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,234).
dist(id1,id0,1,234).
}).



#pos(p_22192@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,235).
dist(id1,id0,1,235).
}).



#pos(p_22193@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,237).
dist(id1,id0,1,237).
}).



#pos(p_22194@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,237).
dist(id1,id0,1,237).
}).



#pos(p_12003@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_12004@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_12005@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_12006@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_12007@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_12008@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_12009@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_12010@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_12011@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_12012@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_12013@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_12014@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_12015@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_12016@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_12017@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_12018@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_12019@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_12020@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_12021@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_12022@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_12023@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_12024@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_12025@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_12026@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_12027@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_16776@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16777@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16778@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16779@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16780@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16781@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16782@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16783@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16784@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16785@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16786@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_16787@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_16788@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_16789@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_16790@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_16791@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_16792@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_16793@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_16794@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_16795@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_16796@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_16797@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_16798@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_16799@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_16800@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_3359@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,237).
dist(id1,id0,1,237).
}).



#pos(p_3360@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,237).
dist(id1,id0,1,237).
}).



#pos(p_3361@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,237).
dist(id1,id0,1,237).
}).



#pos(p_3362@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,237).
dist(id1,id0,1,237).
}).



#pos(p_3363@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,237).
dist(id1,id0,1,237).
}).



#pos(p_3364@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,237).
dist(id1,id0,1,237).
}).



#pos(p_3365@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,238).
dist(id1,id0,1,238).
}).



#pos(p_3366@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,238).
dist(id1,id0,1,238).
}).



#pos(p_3367@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,238).
dist(id1,id0,1,238).
}).



#pos(p_3368@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,238).
dist(id1,id0,1,238).
}).



#pos(p_3369@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,240).
dist(id1,id0,1,240).
}).



#pos(p_3370@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,240).
dist(id1,id0,1,240).
}).



#pos(p_3371@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,241).
dist(id1,id0,1,241).
}).



#pos(p_3372@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,241).
dist(id1,id0,1,241).
}).



#pos(p_3373@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,241).
dist(id1,id0,1,241).
}).



#pos(p_3374@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,241).
dist(id1,id0,1,241).
}).



#pos(p_3375@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,241).
dist(id1,id0,1,241).
}).



#pos(p_3376@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,241).
dist(id1,id0,1,241).
}).



#pos(p_3377@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,241).
dist(id1,id0,1,241).
}).



#pos(p_3378@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,241).
dist(id1,id0,1,241).
}).



#pos(p_3379@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,240).
dist(id1,id0,1,240).
}).



#pos(p_3380@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,240).
dist(id1,id0,1,240).
}).



#pos(p_3381@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,240).
dist(id1,id0,1,240).
}).



#pos(p_3382@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,240).
dist(id1,id0,1,240).
}).



#pos(p_3383@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,240).
dist(id1,id0,1,240).
}).



#pos(p_17176@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,95).
dist(id1,id0,1,95).
}).



#pos(p_17177@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,95).
dist(id1,id0,1,95).
}).



#pos(p_17178@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,95).
dist(id1,id0,1,95).
}).



#pos(p_17179@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,95).
dist(id1,id0,1,95).
}).



#pos(p_17180@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,95).
dist(id1,id0,1,95).
}).



#pos(p_17181@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,96).
dist(id1,id0,1,96).
}).



#pos(p_17182@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,97).
dist(id1,id0,1,97).
}).



#pos(p_17183@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,96).
dist(id1,id0,1,96).
}).



#pos(p_17184@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,96).
dist(id1,id0,1,96).
}).



#pos(p_17185@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,96).
dist(id1,id0,1,96).
}).



#pos(p_17186@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,97).
dist(id1,id0,1,97).
}).



#pos(p_17187@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,97).
dist(id1,id0,1,97).
}).



#pos(p_17188@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,97).
dist(id1,id0,1,97).
}).



#pos(p_17189@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,98).
dist(id1,id0,1,98).
}).



#pos(p_17190@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,98).
dist(id1,id0,1,98).
}).



#pos(p_17191@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,98).
dist(id1,id0,1,98).
}).



#pos(p_17192@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,99).
dist(id1,id0,1,99).
}).



#pos(p_17193@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,98).
dist(id1,id0,1,98).
}).



#pos(p_17194@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,99).
dist(id1,id0,1,99).
}).



#pos(p_17195@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,99).
dist(id1,id0,1,99).
}).



#pos(p_17196@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,99).
dist(id1,id0,1,99).
}).



#pos(p_17197@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,99).
dist(id1,id0,1,99).
}).



#pos(p_17198@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,99).
dist(id1,id0,1,99).
}).



#pos(p_17199@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,99).
dist(id1,id0,1,99).
}).



#pos(p_17200@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,98).
dist(id1,id0,1,98).
}).



#pos(p_15666@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,91).
dist(id1,id0,1,91).
}).



#pos(p_15667@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,93).
dist(id1,id0,1,93).
}).



#pos(p_15668@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,94).
dist(id1,id0,1,94).
}).



#pos(p_15669@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,95).
dist(id1,id0,1,95).
}).



#pos(p_15670@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,96).
dist(id1,id0,1,96).
}).



#pos(p_15671@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,97).
dist(id1,id0,1,97).
}).



#pos(p_15672@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,99).
dist(id1,id0,1,99).
}).



#pos(p_15673@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,100).
dist(id1,id0,1,100).
}).



#pos(p_15674@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,101).
dist(id1,id0,1,101).
}).



#pos(p_15675@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,103).
dist(id1,id0,1,103).
}).



#pos(p_15676@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,105).
dist(id1,id0,1,105).
}).



#pos(p_15677@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,105).
dist(id1,id0,1,105).
}).



#pos(p_15678@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,106).
dist(id1,id0,1,106).
}).



#pos(p_15679@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,107).
dist(id1,id0,1,107).
}).



#pos(p_15680@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,107).
dist(id1,id0,1,107).
}).



#pos(p_15681@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,108).
dist(id1,id0,1,108).
}).



#pos(p_15682@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,110).
dist(id1,id0,1,110).
}).



#pos(p_15683@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,113).
dist(id1,id0,1,113).
}).



#pos(p_15684@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,114).
dist(id1,id0,1,114).
}).



#pos(p_15685@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_15686@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,120).
dist(id1,id0,1,120).
}).



#pos(p_15687@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,123).
dist(id1,id0,1,123).
}).



#pos(p_15688@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,124).
dist(id1,id0,1,124).
}).



#pos(p_15689@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,127).
dist(id1,id0,1,127).
}).



#pos(p_15690@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,129).
dist(id1,id0,1,129).
}).



#pos(p_21370@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_21371@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_21372@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
}).



#pos(p_21373@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,25).
dist(id1,id0,1,25).
}).



#pos(p_21374@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,27).
dist(id1,id0,1,27).
}).



#pos(p_21375@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,29).
dist(id1,id0,1,29).
}).



#pos(p_21376@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_21377@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
}).



#pos(p_21378@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,34).
dist(id1,id0,1,34).
}).



#pos(p_21379@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,37).
dist(id1,id0,1,37).
}).



#pos(p_21380@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
}).



#pos(p_21381@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,39).
dist(id1,id0,1,39).
}).



#pos(p_21382@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,42).
dist(id1,id0,1,42).
}).



#pos(p_21383@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,44).
dist(id1,id0,1,44).
}).



#pos(p_21384@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,47).
dist(id1,id0,1,47).
}).



#pos(p_21385@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,49).
dist(id1,id0,1,49).
}).



#pos(p_21386@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,51).
dist(id1,id0,1,51).
}).



#pos(p_21387@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,53).
dist(id1,id0,1,53).
}).



#pos(p_21388@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,54).
dist(id1,id0,1,54).
}).



#pos(p_21389@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,55).
dist(id1,id0,1,55).
}).



#pos(p_21390@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,57).
dist(id1,id0,1,57).
}).



#pos(p_21391@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,60).
dist(id1,id0,1,60).
}).



#pos(p_21392@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,60).
dist(id1,id0,1,60).
}).



#pos(p_21393@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,60).
dist(id1,id0,1,60).
}).



#pos(p_21394@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,62).
dist(id1,id0,1,62).
}).



#pos(p_15591@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15592@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15593@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15594@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15595@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15596@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15597@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15598@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15599@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15600@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15601@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15602@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15603@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15604@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15605@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15606@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15607@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15608@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15609@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15610@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15611@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15612@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15613@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15614@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15615@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15316@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15317@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15318@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15319@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15320@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15321@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15322@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15323@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15324@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(appear(id1),1).
dist(id0,id1,1,44).
dist(id1,id0,1,44).
}).



#pos(p_15325@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,45).
dist(id1,id0,1,45).
}).



#pos(p_15326@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,45).
dist(id1,id0,1,45).
}).



#pos(p_15327@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
}).



#pos(p_15328@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(running(id2),1).
happensAt(appear(id2),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
dist(id0,id2,1,158).
dist(id2,id0,1,158).
dist(id1,id2,1,184).
dist(id2,id1,1,184).
}).



#pos(p_15329@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(running(id2),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
dist(id0,id2,1,159).
dist(id2,id0,1,159).
dist(id1,id2,1,184).
dist(id2,id1,1,184).
}).



#pos(p_15330@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(running(id2),1).
dist(id0,id1,1,47).
dist(id1,id0,1,47).
dist(id0,id2,1,159).
dist(id2,id0,1,159).
dist(id1,id2,1,183).
dist(id2,id1,1,183).
}).



#pos(p_15331@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(running(id2),1).
dist(id0,id1,1,48).
dist(id1,id0,1,48).
dist(id0,id2,1,158).
dist(id2,id0,1,158).
dist(id1,id2,1,182).
dist(id2,id1,1,182).
}).



#pos(p_15332@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(running(id2),1).
dist(id0,id1,1,50).
dist(id1,id0,1,50).
dist(id0,id2,1,156).
dist(id2,id0,1,156).
dist(id1,id2,1,180).
dist(id2,id1,1,180).
}).



#pos(p_15333@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(running(id2),1).
dist(id0,id1,1,50).
dist(id1,id0,1,50).
dist(id0,id2,1,158).
dist(id2,id0,1,158).
dist(id1,id2,1,180).
dist(id2,id1,1,180).
}).



#pos(p_15334@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(running(id2),1).
dist(id0,id1,1,51).
dist(id1,id0,1,51).
dist(id0,id2,1,158).
dist(id2,id0,1,158).
dist(id1,id2,1,179).
dist(id2,id1,1,179).
}).



#pos(p_15335@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(running(id2),1).
dist(id0,id1,1,53).
dist(id1,id0,1,53).
dist(id0,id2,1,158).
dist(id2,id0,1,158).
dist(id1,id2,1,178).
dist(id2,id1,1,178).
}).



#pos(p_15336@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(running(id2),1).
dist(id0,id1,1,53).
dist(id1,id0,1,53).
dist(id0,id2,1,156).
dist(id2,id0,1,156).
dist(id1,id2,1,178).
dist(id2,id1,1,178).
}).



#pos(p_15337@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(running(id2),1).
dist(id0,id1,1,53).
dist(id1,id0,1,53).
dist(id0,id2,1,155).
dist(id2,id0,1,155).
dist(id1,id2,1,176).
dist(id2,id1,1,176).
}).



#pos(p_15338@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(running(id2),1).
dist(id0,id1,1,53).
dist(id1,id0,1,53).
dist(id0,id2,1,155).
dist(id2,id0,1,155).
dist(id1,id2,1,175).
dist(id2,id1,1,175).
}).



#pos(p_15339@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(running(id2),1).
dist(id0,id1,1,54).
dist(id1,id0,1,54).
dist(id0,id2,1,156).
dist(id2,id0,1,156).
dist(id1,id2,1,174).
dist(id2,id1,1,174).
}).



#pos(p_15340@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(running(id2),1).
dist(id0,id1,1,55).
dist(id1,id0,1,55).
dist(id0,id2,1,156).
dist(id2,id0,1,156).
dist(id1,id2,1,173).
dist(id2,id1,1,173).
}).



#pos(p_13891@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_13892@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,21).
dist(id1,id0,1,21).
}).



#pos(p_13893@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,21).
dist(id1,id0,1,21).
}).



#pos(p_13894@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_13895@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_13896@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
}).



#pos(p_13897@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
}).



#pos(p_13898@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,25).
dist(id1,id0,1,25).
}).



#pos(p_13899@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,26).
dist(id1,id0,1,26).
}).



#pos(p_13900@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,26).
dist(id1,id0,1,26).
}).



#pos(p_13901@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,27).
dist(id1,id0,1,27).
}).



#pos(p_13902@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,29).
dist(id1,id0,1,29).
}).



#pos(p_13903@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_13904@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_13905@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
}).



#pos(p_13906@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,34).
dist(id1,id0,1,34).
}).



#pos(p_13907@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_13908@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_13909@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,37).
dist(id1,id0,1,37).
}).



#pos(p_13910@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
}).



#pos(p_13911@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,39).
dist(id1,id0,1,39).
}).



#pos(p_13912@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,40).
dist(id1,id0,1,40).
}).



#pos(p_13913@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,41).
dist(id1,id0,1,41).
}).



#pos(p_13914@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,42).
dist(id1,id0,1,42).
}).



#pos(p_13915@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,43).
dist(id1,id0,1,43).
}).



#pos(p_11978@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11979@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11980@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11981@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11982@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11983@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11984@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11985@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11986@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11987@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11988@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11989@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11990@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11991@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11992@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11993@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11994@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11995@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11996@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11997@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11998@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11999@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_12000@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_12001@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_12002@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_6445@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,98).
dist(id1,id0,1,98).
}).



#pos(p_6446@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,98).
dist(id1,id0,1,98).
}).



#pos(p_6447@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,97).
dist(id1,id0,1,97).
}).



#pos(p_6448@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,97).
dist(id1,id0,1,97).
}).



#pos(p_6449@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,96).
dist(id1,id0,1,96).
}).



#pos(p_6450@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,96).
dist(id1,id0,1,96).
}).



#pos(p_6451@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,96).
dist(id1,id0,1,96).
}).



#pos(p_6452@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,95).
dist(id1,id0,1,95).
}).



#pos(p_6453@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,94).
dist(id1,id0,1,94).
}).



#pos(p_6454@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,94).
dist(id1,id0,1,94).
}).



#pos(p_6455@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,93).
dist(id1,id0,1,93).
}).



#pos(p_6456@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,92).
dist(id1,id0,1,92).
}).



#pos(p_6457@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,93).
dist(id1,id0,1,93).
}).



#pos(p_6458@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,93).
dist(id1,id0,1,93).
}).



#pos(p_6459@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,93).
dist(id1,id0,1,93).
}).



#pos(p_6460@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,93).
dist(id1,id0,1,93).
}).



#pos(p_6461@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,94).
dist(id1,id0,1,94).
}).



#pos(p_6462@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,95).
dist(id1,id0,1,95).
}).



#pos(p_6463@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,95).
dist(id1,id0,1,95).
}).



#pos(p_6464@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,96).
dist(id1,id0,1,96).
}).



#pos(p_6465@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,97).
dist(id1,id0,1,97).
}).



#pos(p_6466@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,96).
dist(id1,id0,1,96).
}).



#pos(p_6467@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,97).
dist(id1,id0,1,97).
}).



#pos(p_6468@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,98).
dist(id1,id0,1,98).
}).



#pos(p_6469@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,99).
dist(id1,id0,1,99).
}).



#pos(p_15916@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15917@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15918@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15919@1, {}, {}, {
person(id0).
person(id1).

happensAt(appear(id1),1).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,205).
dist(id1,id0,1,205).
}).



#pos(p_15920@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,208).
dist(id1,id0,1,208).
}).



#pos(p_15921@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,212).
dist(id1,id0,1,212).
}).



#pos(p_15922@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,215).
dist(id1,id0,1,215).
}).



#pos(p_15923@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,217).
dist(id1,id0,1,217).
}).



#pos(p_15924@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,222).
dist(id1,id0,1,222).
}).



#pos(p_15925@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,223).
dist(id1,id0,1,223).
}).



#pos(p_15926@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,225).
dist(id1,id0,1,225).
}).



#pos(p_15927@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,229).
dist(id1,id0,1,229).
}).



#pos(p_15928@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,233).
dist(id1,id0,1,233).
}).



#pos(p_15929@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,237).
dist(id1,id0,1,237).
}).



#pos(p_15930@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,238).
dist(id1,id0,1,238).
}).



#pos(p_15931@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,240).
dist(id1,id0,1,240).
}).



#pos(p_15932@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,242).
dist(id1,id0,1,242).
}).



#pos(p_15933@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,244).
dist(id1,id0,1,244).
}).



#pos(p_15934@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,249).
dist(id1,id0,1,249).
}).



#pos(p_15935@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,253).
dist(id1,id0,1,253).
}).



#pos(p_15936@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,258).
dist(id1,id0,1,258).
}).



#pos(p_15937@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,261).
dist(id1,id0,1,261).
}).



#pos(p_15938@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,263).
dist(id1,id0,1,263).
}).



#pos(p_15939@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,265).
dist(id1,id0,1,265).
}).



#pos(p_15940@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,266).
dist(id1,id0,1,266).
}).



#pos(p_14366@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,134).
dist(id1,id0,1,134).
}).



#pos(p_14367@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,133).
dist(id1,id0,1,133).
}).



#pos(p_14368@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,133).
dist(id1,id0,1,133).
}).



#pos(p_14369@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,132).
dist(id1,id0,1,132).
}).



#pos(p_14370@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,132).
dist(id1,id0,1,132).
}).



#pos(p_14371@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,132).
dist(id1,id0,1,132).
}).



#pos(p_14372@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,131).
dist(id1,id0,1,131).
}).



#pos(p_14373@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,131).
dist(id1,id0,1,131).
}).



#pos(p_14374@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,130).
dist(id1,id0,1,130).
}).



#pos(p_14375@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,130).
dist(id1,id0,1,130).
}).



#pos(p_14376@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,130).
dist(id1,id0,1,130).
}).



#pos(p_14377@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,130).
dist(id1,id0,1,130).
}).



#pos(p_14378@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,130).
dist(id1,id0,1,130).
}).



#pos(p_14379@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,130).
dist(id1,id0,1,130).
}).



#pos(p_14380@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,130).
dist(id1,id0,1,130).
}).



#pos(p_14381@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,129).
dist(id1,id0,1,129).
}).



#pos(p_14382@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,129).
dist(id1,id0,1,129).
}).



#pos(p_14383@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,129).
dist(id1,id0,1,129).
}).



#pos(p_14384@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,129).
dist(id1,id0,1,129).
}).



#pos(p_14385@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,129).
dist(id1,id0,1,129).
}).



#pos(p_14386@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,129).
dist(id1,id0,1,129).
}).



#pos(p_14387@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,128).
dist(id1,id0,1,128).
}).



#pos(p_14388@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,129).
dist(id1,id0,1,129).
}).



#pos(p_14389@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,129).
dist(id1,id0,1,129).
}).



#pos(p_14390@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,129).
dist(id1,id0,1,129).
}).



#pos(p_22120@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,191).
dist(id1,id0,1,191).
}).



#pos(p_22121@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,190).
dist(id1,id0,1,190).
}).



#pos(p_22122@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,190).
dist(id1,id0,1,190).
}).



#pos(p_22123@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,190).
dist(id1,id0,1,190).
}).



#pos(p_22124@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,191).
dist(id1,id0,1,191).
}).



#pos(p_22125@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,191).
dist(id1,id0,1,191).
}).



#pos(p_22126@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,190).
dist(id1,id0,1,190).
}).



#pos(p_22127@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,189).
dist(id1,id0,1,189).
}).



#pos(p_22128@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,189).
dist(id1,id0,1,189).
}).



#pos(p_22129@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,189).
dist(id1,id0,1,189).
}).



#pos(p_22130@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,188).
dist(id1,id0,1,188).
}).



#pos(p_22131@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,189).
dist(id1,id0,1,189).
}).



#pos(p_22132@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,191).
dist(id1,id0,1,191).
}).



#pos(p_22133@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,190).
dist(id1,id0,1,190).
}).



#pos(p_22134@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,192).
dist(id1,id0,1,192).
}).



#pos(p_22135@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_22136@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,197).
dist(id1,id0,1,197).
}).



#pos(p_22137@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,199).
dist(id1,id0,1,199).
}).



#pos(p_22138@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,198).
dist(id1,id0,1,198).
}).



#pos(p_22139@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,199).
dist(id1,id0,1,199).
}).



#pos(p_22140@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,199).
dist(id1,id0,1,199).
}).



#pos(p_22141@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,200).
dist(id1,id0,1,200).
}).



#pos(p_22142@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,199).
dist(id1,id0,1,199).
}).



#pos(p_22143@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,199).
dist(id1,id0,1,199).
}).



#pos(p_22144@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,201).
dist(id1,id0,1,201).
}).



#pos(p_18350@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,29).
dist(id1,id0,1,29).
}).



#pos(p_18351@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,29).
dist(id1,id0,1,29).
}).



#pos(p_18352@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,29).
dist(id1,id0,1,29).
}).



#pos(p_18353@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,29).
dist(id1,id0,1,29).
}).



#pos(p_18354@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,29).
dist(id1,id0,1,29).
}).



#pos(p_18355@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
}).



#pos(p_18356@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
}).



#pos(p_18357@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
}).



#pos(p_18358@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
}).



#pos(p_18359@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
}).



#pos(p_18360@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
}).



#pos(p_18361@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
}).



#pos(p_18362@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_18363@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_18364@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_18365@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_18366@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_18367@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_18368@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_18369@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
}).



#pos(p_18370@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
}).



#pos(p_18371@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_18372@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
}).



#pos(p_18373@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,29).
dist(id1,id0,1,29).
}).



#pos(p_18374@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,28).
dist(id1,id0,1,28).
}).



#pos(p_7050@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7051@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7052@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7053@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7054@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7055@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7056@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7057@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7058@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7059@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7060@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7061@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7062@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7063@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7064@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7065@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7066@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7067@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7068@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7069@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7070@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7071@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7072@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7073@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7074@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11828@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11829@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11830@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11831@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11832@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11833@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11834@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11835@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11836@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11837@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11838@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11839@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11840@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11841@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11842@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11843@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11844@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11845@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11846@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11847@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11848@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11849@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11850@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11851@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11852@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_19092@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,17).
dist(id1,id0,1,17).
dist(id0,id2,1,74).
dist(id2,id0,1,74).
dist(id1,id2,1,62).
dist(id2,id1,1,62).
}).



#pos(p_19093@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,16).
dist(id1,id0,1,16).
dist(id0,id2,1,72).
dist(id2,id0,1,72).
dist(id1,id2,1,60).
dist(id2,id1,1,60).
}).



#pos(p_19094@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,16).
dist(id1,id0,1,16).
dist(id0,id2,1,72).
dist(id2,id0,1,72).
dist(id1,id2,1,59).
dist(id2,id1,1,59).
}).



#pos(p_19095@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,16).
dist(id1,id0,1,16).
dist(id0,id2,1,71).
dist(id2,id0,1,71).
dist(id1,id2,1,57).
dist(id2,id1,1,57).
}).



#pos(p_19096@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,17).
dist(id1,id0,1,17).
dist(id0,id2,1,70).
dist(id2,id0,1,70).
dist(id1,id2,1,55).
dist(id2,id1,1,55).
}).



#pos(p_19097@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,17).
dist(id1,id0,1,17).
dist(id0,id2,1,67).
dist(id2,id0,1,67).
dist(id1,id2,1,51).
dist(id2,id1,1,51).
}).



#pos(p_19098@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,18).
dist(id1,id0,1,18).
dist(id0,id2,1,66).
dist(id2,id0,1,66).
dist(id1,id2,1,49).
dist(id2,id1,1,49).
}).



#pos(p_19099@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,17).
dist(id1,id0,1,17).
dist(id0,id2,1,64).
dist(id2,id0,1,64).
dist(id1,id2,1,47).
dist(id2,id1,1,47).
}).



#pos(p_19100@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,17).
dist(id1,id0,1,17).
dist(id0,id2,1,64).
dist(id2,id0,1,64).
dist(id1,id2,1,47).
dist(id2,id1,1,47).
}).



#pos(p_19101@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,17).
dist(id1,id0,1,17).
dist(id0,id2,1,61).
dist(id2,id0,1,61).
dist(id1,id2,1,45).
dist(id2,id1,1,45).
}).



#pos(p_19102@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,17).
dist(id1,id0,1,17).
dist(id0,id2,1,61).
dist(id2,id0,1,61).
dist(id1,id2,1,45).
dist(id2,id1,1,45).
}).



#pos(p_19103@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,18).
dist(id1,id0,1,18).
dist(id0,id2,1,62).
dist(id2,id0,1,62).
dist(id1,id2,1,45).
dist(id2,id1,1,45).
}).



#pos(p_19104@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,18).
dist(id1,id0,1,18).
dist(id0,id2,1,62).
dist(id2,id0,1,62).
dist(id1,id2,1,44).
dist(id2,id1,1,44).
}).



#pos(p_19105@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
dist(id0,id2,1,62).
dist(id2,id0,1,62).
dist(id1,id2,1,43).
dist(id2,id1,1,43).
}).



#pos(p_19106@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
dist(id0,id2,1,62).
dist(id2,id0,1,62).
dist(id1,id2,1,42).
dist(id2,id1,1,42).
}).



#pos(p_19107@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
dist(id0,id2,1,62).
dist(id2,id0,1,62).
dist(id1,id2,1,42).
dist(id2,id1,1,42).
}).



#pos(p_19108@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
dist(id0,id2,1,61).
dist(id2,id0,1,61).
dist(id1,id2,1,41).
dist(id2,id1,1,41).
}).



#pos(p_19109@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
dist(id0,id2,1,61).
dist(id2,id0,1,61).
dist(id1,id2,1,41).
dist(id2,id1,1,41).
}).



#pos(p_19110@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,21).
dist(id1,id0,1,21).
dist(id0,id2,1,61).
dist(id2,id0,1,61).
dist(id1,id2,1,41).
dist(id2,id1,1,41).
}).



#pos(p_19111@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,21).
dist(id1,id0,1,21).
dist(id0,id2,1,61).
dist(id2,id0,1,61).
dist(id1,id2,1,41).
dist(id2,id1,1,41).
}).



#pos(p_19112@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,21).
dist(id1,id0,1,21).
dist(id0,id2,1,58).
dist(id2,id0,1,58).
dist(id1,id2,1,38).
dist(id2,id1,1,38).
}).



#pos(p_19113@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
dist(id0,id2,1,58).
dist(id2,id0,1,58).
dist(id1,id2,1,38).
dist(id2,id1,1,38).
}).



#pos(p_19114@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
dist(id0,id2,1,57).
dist(id2,id0,1,57).
dist(id1,id2,1,38).
dist(id2,id1,1,38).
}).



#pos(p_19115@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
dist(id0,id2,1,56).
dist(id2,id0,1,56).
dist(id1,id2,1,36).
dist(id2,id1,1,36).
}).



#pos(p_19116@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
dist(id0,id2,1,56).
dist(id2,id0,1,56).
dist(id1,id2,1,37).
dist(id2,id1,1,37).
}).



#pos(p_10272@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10273@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10274@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10275@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10276@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10277@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10278@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10279@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10280@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10281@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_10282@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_10283@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_10284@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_10285@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_10286@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_10287@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_10288@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_10289@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_10290@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_10291@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10292@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10293@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10294@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_10295@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_10296@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11453@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11454@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11455@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11456@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11457@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11458@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11459@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11460@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11461@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11462@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11463@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11464@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11465@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11466@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11467@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11468@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11469@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11470@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11471@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11472@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11473@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11474@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11475@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11476@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11477@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_9604@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9605@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9606@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9607@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9608@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9609@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9610@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9611@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9612@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9613@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9614@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9615@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9616@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9617@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9618@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9619@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9620@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9621@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9622@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9623@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9624@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9625@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9626@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9627@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9628@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_8225@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,208).
dist(id1,id0,1,208).
dist(id0,id2,1,208).
dist(id2,id0,1,208).
dist(id1,id2,1,7).
dist(id2,id1,1,7).
}).



#pos(p_8226@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,211).
dist(id1,id0,1,211).
dist(id0,id2,1,211).
dist(id2,id0,1,211).
dist(id1,id2,1,6).
dist(id2,id1,1,6).
}).



#pos(p_8227@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,215).
dist(id1,id0,1,215).
dist(id0,id2,1,215).
dist(id2,id0,1,215).
dist(id1,id2,1,6).
dist(id2,id1,1,6).
}).



#pos(p_8228@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,217).
dist(id1,id0,1,217).
dist(id0,id2,1,218).
dist(id2,id0,1,218).
dist(id1,id2,1,7).
dist(id2,id1,1,7).
}).



#pos(p_8229@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,218).
dist(id1,id0,1,218).
dist(id0,id2,1,219).
dist(id2,id0,1,219).
dist(id1,id2,1,6).
dist(id2,id1,1,6).
}).



#pos(p_8230@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,220).
dist(id1,id0,1,220).
dist(id0,id2,1,221).
dist(id2,id0,1,221).
dist(id1,id2,1,6).
dist(id2,id1,1,6).
}).



#pos(p_8231@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,221).
dist(id1,id0,1,221).
dist(id0,id2,1,221).
dist(id2,id0,1,221).
dist(id1,id2,1,6).
dist(id2,id1,1,6).
}).



#pos(p_8232@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,223).
dist(id1,id0,1,223).
dist(id0,id2,1,222).
dist(id2,id0,1,222).
dist(id1,id2,1,5).
dist(id2,id1,1,5).
}).



#pos(p_8233@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,225).
dist(id1,id0,1,225).
dist(id0,id2,1,224).
dist(id2,id0,1,224).
dist(id1,id2,1,4).
dist(id2,id1,1,4).
}).



#pos(p_8234@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,226).
dist(id1,id0,1,226).
dist(id0,id2,1,225).
dist(id2,id0,1,225).
dist(id1,id2,1,3).
dist(id2,id1,1,3).
}).



#pos(p_8235@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,228).
dist(id1,id0,1,228).
dist(id0,id2,1,227).
dist(id2,id0,1,227).
dist(id1,id2,1,3).
dist(id2,id1,1,3).
}).



#pos(p_8236@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,230).
dist(id1,id0,1,230).
dist(id0,id2,1,229).
dist(id2,id0,1,229).
dist(id1,id2,1,3).
dist(id2,id1,1,3).
}).



#pos(p_8237@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,235).
dist(id1,id0,1,235).
dist(id0,id2,1,235).
dist(id2,id0,1,235).
dist(id1,id2,1,2).
dist(id2,id1,1,2).
}).



#pos(p_8238@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,239).
dist(id1,id0,1,239).
dist(id0,id2,1,239).
dist(id2,id0,1,239).
dist(id1,id2,1,2).
dist(id2,id1,1,2).
}).



#pos(p_8239@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(disappear(id2),1).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,243).
dist(id1,id0,1,243).
dist(id0,id2,1,242).
dist(id2,id0,1,242).
dist(id1,id2,1,2).
dist(id2,id1,1,2).
}).



#pos(p_8240@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,246).
dist(id1,id0,1,246).
}).



#pos(p_8241@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,248).
dist(id1,id0,1,248).
}).



#pos(p_8242@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,249).
dist(id1,id0,1,249).
}).



#pos(p_8243@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,250).
dist(id1,id0,1,250).
}).



#pos(p_8244@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,251).
dist(id1,id0,1,251).
}).



#pos(p_8245@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,253).
dist(id1,id0,1,253).
}).



#pos(p_8246@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,256).
dist(id1,id0,1,256).
}).



#pos(p_8247@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,259).
dist(id1,id0,1,259).
}).



#pos(p_8248@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,263).
dist(id1,id0,1,263).
}).



#pos(p_8249@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,268).
dist(id1,id0,1,268).
}).



#pos(p_20495@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,268).
dist(id1,id0,1,268).
}).



#pos(p_20496@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,270).
dist(id1,id0,1,270).
}).



#pos(p_20497@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,273).
dist(id1,id0,1,273).
}).



#pos(p_20498@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,274).
dist(id1,id0,1,274).
}).



#pos(p_20499@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,276).
dist(id1,id0,1,276).
}).



#pos(p_20500@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,279).
dist(id1,id0,1,279).
}).



#pos(p_20501@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,280).
dist(id1,id0,1,280).
}).



#pos(p_20502@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,282).
dist(id1,id0,1,282).
}).



#pos(p_20503@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,284).
dist(id1,id0,1,284).
}).



#pos(p_20504@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,288).
dist(id1,id0,1,288).
}).



#pos(p_20505@1, {}, {}, {
person(id0).
person(id1).

happensAt(disappear(id0),1).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,291).
dist(id1,id0,1,291).
}).



#pos(p_20506@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20507@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20508@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20509@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20510@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20511@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20512@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20513@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20514@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20515@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20516@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20517@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20518@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20519@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5159@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,185).
dist(id1,id0,1,185).
}).



#pos(p_5160@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,185).
dist(id1,id0,1,185).
}).



#pos(p_5161@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,184).
dist(id1,id0,1,184).
}).



#pos(p_5162@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,182).
dist(id1,id0,1,182).
}).



#pos(p_5163@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,182).
dist(id1,id0,1,182).
}).



#pos(p_5164@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,182).
dist(id1,id0,1,182).
}).



#pos(p_5165@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,182).
dist(id1,id0,1,182).
}).



#pos(p_5166@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,182).
dist(id1,id0,1,182).
}).



#pos(p_5167@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,182).
dist(id1,id0,1,182).
}).



#pos(p_5168@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,181).
dist(id1,id0,1,181).
}).



#pos(p_5169@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,181).
dist(id1,id0,1,181).
}).



#pos(p_5170@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
}).



#pos(p_5171@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
}).



#pos(p_5172@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(appear(id2),1).
happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
dist(id0,id2,1,186).
dist(id2,id0,1,186).
dist(id1,id2,1,17).
dist(id2,id1,1,17).
}).



#pos(p_5173@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
dist(id0,id2,1,186).
dist(id2,id0,1,186).
dist(id1,id2,1,17).
dist(id2,id1,1,17).
}).



#pos(p_5174@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
dist(id0,id2,1,185).
dist(id2,id0,1,185).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_5175@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
dist(id0,id2,1,185).
dist(id2,id0,1,185).
dist(id1,id2,1,15).
dist(id2,id1,1,15).
}).



#pos(p_5176@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,179).
dist(id1,id0,1,179).
dist(id0,id2,1,185).
dist(id2,id0,1,185).
dist(id1,id2,1,17).
dist(id2,id1,1,17).
}).



#pos(p_5177@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,178).
dist(id1,id0,1,178).
dist(id0,id2,1,185).
dist(id2,id0,1,185).
dist(id1,id2,1,17).
dist(id2,id1,1,17).
}).



#pos(p_5178@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,178).
dist(id1,id0,1,178).
dist(id0,id2,1,185).
dist(id2,id0,1,185).
dist(id1,id2,1,17).
dist(id2,id1,1,17).
}).



#pos(p_5179@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,178).
dist(id1,id0,1,178).
dist(id0,id2,1,185).
dist(id2,id0,1,185).
dist(id1,id2,1,18).
dist(id2,id1,1,18).
}).



#pos(p_5180@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,178).
dist(id1,id0,1,178).
dist(id0,id2,1,185).
dist(id2,id0,1,185).
dist(id1,id2,1,19).
dist(id2,id1,1,19).
}).



#pos(p_5181@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,178).
dist(id1,id0,1,178).
dist(id0,id2,1,185).
dist(id2,id0,1,185).
dist(id1,id2,1,21).
dist(id2,id1,1,21).
}).



#pos(p_5182@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,179).
dist(id1,id0,1,179).
dist(id0,id2,1,186).
dist(id2,id0,1,186).
dist(id1,id2,1,21).
dist(id2,id1,1,21).
}).



#pos(p_5183@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,178).
dist(id1,id0,1,178).
dist(id0,id2,1,186).
dist(id2,id0,1,186).
dist(id1,id2,1,21).
dist(id2,id1,1,21).
}).



#pos(p_14916@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14917@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14918@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14919@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14920@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14921@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14922@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14923@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14924@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14925@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14926@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14927@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14928@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14929@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14930@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14931@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14932@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14933@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14934@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14935@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14936@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14937@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14938@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14939@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14940@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20545@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20546@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20547@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20548@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20549@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20550@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20551@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20552@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20553@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20554@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20555@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20556@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20557@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20558@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20559@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20560@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_20561@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20562@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20563@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20564@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20565@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20566@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20567@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20568@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_20569@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19986@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_19987@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_19988@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_19989@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_19990@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_19991@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_19992@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_19993@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_19994@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_19995@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_19996@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_19997@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_19998@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_19999@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_20000@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_20001@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_20002@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_20003@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_20004@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_20005@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_20006@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_20007@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_20008@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_20009@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_20010@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_9972@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9973@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9974@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9975@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(appear(id1),1).
dist(id0,id1,1,39).
dist(id1,id0,1,39).
}).



#pos(p_9976@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,41).
dist(id1,id0,1,41).
}).



#pos(p_9977@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,41).
dist(id1,id0,1,41).
}).



#pos(p_9978@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,41).
dist(id1,id0,1,41).
}).



#pos(p_9979@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,41).
dist(id1,id0,1,41).
}).



#pos(p_9980@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,41).
dist(id1,id0,1,41).
}).



#pos(p_9981@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,42).
dist(id1,id0,1,42).
}).



#pos(p_9982@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,43).
dist(id1,id0,1,43).
}).



#pos(p_9983@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,41).
dist(id1,id0,1,41).
}).



#pos(p_9984@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,41).
dist(id1,id0,1,41).
}).



#pos(p_9985@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,43).
dist(id1,id0,1,43).
}).



#pos(p_9986@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,47).
dist(id1,id0,1,47).
}).



#pos(p_9987@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,51).
dist(id1,id0,1,51).
}).



#pos(p_9988@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,54).
dist(id1,id0,1,54).
}).



#pos(p_9989@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,55).
dist(id1,id0,1,55).
}).



#pos(p_9990@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,55).
dist(id1,id0,1,55).
}).



#pos(p_9991@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,56).
dist(id1,id0,1,56).
}).



#pos(p_9992@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,57).
dist(id1,id0,1,57).
}).



#pos(p_9993@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,56).
dist(id1,id0,1,56).
}).



#pos(p_9994@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,57).
dist(id1,id0,1,57).
}).



#pos(p_9995@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,58).
dist(id1,id0,1,58).
}).



#pos(p_9996@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,60).
dist(id1,id0,1,60).
}).



#pos(p_16291@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,54).
dist(id1,id0,1,54).
}).



#pos(p_16292@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,55).
dist(id1,id0,1,55).
}).



#pos(p_16293@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,55).
dist(id1,id0,1,55).
}).



#pos(p_16294@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,55).
dist(id1,id0,1,55).
}).



#pos(p_16295@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,55).
dist(id1,id0,1,55).
}).



#pos(p_16296@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,57).
dist(id1,id0,1,57).
}).



#pos(p_16297@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,57).
dist(id1,id0,1,57).
}).



#pos(p_16298@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,59).
dist(id1,id0,1,59).
}).



#pos(p_16299@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,60).
dist(id1,id0,1,60).
}).



#pos(p_16300@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,60).
dist(id1,id0,1,60).
}).



#pos(p_16301@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,61).
dist(id1,id0,1,61).
}).



#pos(p_16302@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,63).
dist(id1,id0,1,63).
}).



#pos(p_16303@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,63).
dist(id1,id0,1,63).
}).



#pos(p_16304@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,63).
dist(id1,id0,1,63).
}).



#pos(p_16305@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,64).
dist(id1,id0,1,64).
}).



#pos(p_16306@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,64).
dist(id1,id0,1,64).
}).



#pos(p_16307@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,64).
dist(id1,id0,1,64).
}).



#pos(p_16308@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,65).
dist(id1,id0,1,65).
}).



#pos(p_16309@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,65).
dist(id1,id0,1,65).
}).



#pos(p_16310@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,68).
dist(id1,id0,1,68).
}).



#pos(p_16311@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,69).
dist(id1,id0,1,69).
}).



#pos(p_16312@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,69).
dist(id1,id0,1,69).
}).



#pos(p_16313@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,69).
dist(id1,id0,1,69).
}).



#pos(p_16314@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,70).
dist(id1,id0,1,70).
}).



#pos(p_16315@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,70).
dist(id1,id0,1,70).
}).



#pos(p_6395@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,134).
dist(id1,id0,1,134).
}).



#pos(p_6396@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,134).
dist(id1,id0,1,134).
}).



#pos(p_6397@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,130).
dist(id1,id0,1,130).
}).



#pos(p_6398@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,130).
dist(id1,id0,1,130).
}).



#pos(p_6399@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,129).
dist(id1,id0,1,129).
}).



#pos(p_6400@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,127).
dist(id1,id0,1,127).
}).



#pos(p_6401@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,126).
dist(id1,id0,1,126).
}).



#pos(p_6402@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,124).
dist(id1,id0,1,124).
}).



#pos(p_6403@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,123).
dist(id1,id0,1,123).
}).



#pos(p_6404@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,122).
dist(id1,id0,1,122).
}).



#pos(p_6405@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,121).
dist(id1,id0,1,121).
}).



#pos(p_6406@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,120).
dist(id1,id0,1,120).
}).



#pos(p_6407@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_6408@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_6409@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_6410@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,117).
dist(id1,id0,1,117).
}).



#pos(p_6411@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,117).
dist(id1,id0,1,117).
}).



#pos(p_6412@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,116).
dist(id1,id0,1,116).
}).



#pos(p_6413@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,115).
dist(id1,id0,1,115).
}).



#pos(p_6414@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,114).
dist(id1,id0,1,114).
}).



#pos(p_6415@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,113).
dist(id1,id0,1,113).
}).



#pos(p_6416@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,113).
dist(id1,id0,1,113).
}).



#pos(p_6417@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,112).
dist(id1,id0,1,112).
}).



#pos(p_6418@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,111).
dist(id1,id0,1,111).
}).



#pos(p_6419@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,108).
dist(id1,id0,1,108).
}).



#pos(p_9454@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9455@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9456@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9457@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9458@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9459@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9460@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9461@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9462@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9463@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9464@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9465@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9466@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9467@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9468@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9469@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9470@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9471@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9472@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9473@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9474@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9475@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9476@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9477@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9478@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_3184@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,92).
dist(id1,id0,1,92).
}).



#pos(p_3185@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,93).
dist(id1,id0,1,93).
}).



#pos(p_3186@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,94).
dist(id1,id0,1,94).
}).



#pos(p_3187@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,95).
dist(id1,id0,1,95).
}).



#pos(p_3188@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,95).
dist(id1,id0,1,95).
}).



#pos(p_3189@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,96).
dist(id1,id0,1,96).
}).



#pos(p_3190@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,97).
dist(id1,id0,1,97).
}).



#pos(p_3191@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,100).
dist(id1,id0,1,100).
}).



#pos(p_3192@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,102).
dist(id1,id0,1,102).
}).



#pos(p_3193@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,104).
dist(id1,id0,1,104).
}).



#pos(p_3194@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,105).
dist(id1,id0,1,105).
}).



#pos(p_3195@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,107).
dist(id1,id0,1,107).
}).



#pos(p_3196@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,108).
dist(id1,id0,1,108).
}).



#pos(p_3197@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,110).
dist(id1,id0,1,110).
}).



#pos(p_3198@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,110).
dist(id1,id0,1,110).
}).



#pos(p_3199@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,110).
dist(id1,id0,1,110).
}).



#pos(p_3200@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,112).
dist(id1,id0,1,112).
}).



#pos(p_3201@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,112).
dist(id1,id0,1,112).
}).



#pos(p_3202@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,113).
dist(id1,id0,1,113).
}).



#pos(p_3203@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,114).
dist(id1,id0,1,114).
}).



#pos(p_3204@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,116).
dist(id1,id0,1,116).
}).



#pos(p_3205@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_3206@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,119).
dist(id1,id0,1,119).
}).



#pos(p_3207@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,122).
dist(id1,id0,1,122).
}).



#pos(p_3208@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,123).
dist(id1,id0,1,123).
}).



#pos(p_23559@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,185).
dist(id1,id0,1,185).
dist(id0,id2,1,161).
dist(id2,id0,1,161).
dist(id1,id2,1,34).
dist(id2,id1,1,34).
}).



#pos(p_23560@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,183).
dist(id1,id0,1,183).
dist(id0,id2,1,168).
dist(id2,id0,1,168).
dist(id1,id2,1,31).
dist(id2,id1,1,31).
}).



#pos(p_23561@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,183).
dist(id1,id0,1,183).
dist(id0,id2,1,172).
dist(id2,id0,1,172).
dist(id1,id2,1,29).
dist(id2,id1,1,29).
}).



#pos(p_23562@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,183).
dist(id1,id0,1,183).
dist(id0,id2,1,174).
dist(id2,id0,1,174).
dist(id1,id2,1,27).
dist(id2,id1,1,27).
}).



#pos(p_23563@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,183).
dist(id1,id0,1,183).
dist(id0,id2,1,174).
dist(id2,id0,1,174).
dist(id1,id2,1,27).
dist(id2,id1,1,27).
}).



#pos(p_23564@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,181).
dist(id1,id0,1,181).
dist(id0,id2,1,178).
dist(id2,id0,1,178).
dist(id1,id2,1,26).
dist(id2,id1,1,26).
}).



#pos(p_23565@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,181).
dist(id1,id0,1,181).
dist(id0,id2,1,178).
dist(id2,id0,1,178).
dist(id1,id2,1,26).
dist(id2,id1,1,26).
}).



#pos(p_23566@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,183).
dist(id1,id0,1,183).
dist(id0,id2,1,179).
dist(id2,id0,1,179).
dist(id1,id2,1,27).
dist(id2,id1,1,27).
}).



#pos(p_23567@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,182).
dist(id1,id0,1,182).
dist(id0,id2,1,179).
dist(id2,id0,1,179).
dist(id1,id2,1,31).
dist(id2,id1,1,31).
}).



#pos(p_23568@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,182).
dist(id1,id0,1,182).
dist(id0,id2,1,179).
dist(id2,id0,1,179).
dist(id1,id2,1,31).
dist(id2,id1,1,31).
}).



#pos(p_23569@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,182).
dist(id1,id0,1,182).
dist(id0,id2,1,179).
dist(id2,id0,1,179).
dist(id1,id2,1,31).
dist(id2,id1,1,31).
}).



#pos(p_23570@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,185).
dist(id1,id0,1,185).
dist(id0,id2,1,182).
dist(id2,id0,1,182).
dist(id1,id2,1,31).
dist(id2,id1,1,31).
}).



#pos(p_23571@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,186).
dist(id1,id0,1,186).
dist(id0,id2,1,182).
dist(id2,id0,1,182).
dist(id1,id2,1,30).
dist(id2,id1,1,30).
}).



#pos(p_23572@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,186).
dist(id1,id0,1,186).
dist(id0,id2,1,182).
dist(id2,id0,1,182).
dist(id1,id2,1,31).
dist(id2,id1,1,31).
}).



#pos(p_23573@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,185).
dist(id1,id0,1,185).
dist(id0,id2,1,182).
dist(id2,id0,1,182).
dist(id1,id2,1,33).
dist(id2,id1,1,33).
}).



#pos(p_23574@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,187).
dist(id1,id0,1,187).
dist(id0,id2,1,184).
dist(id2,id0,1,184).
dist(id1,id2,1,35).
dist(id2,id1,1,35).
}).



#pos(p_23575@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,185).
dist(id1,id0,1,185).
dist(id0,id2,1,183).
dist(id2,id0,1,183).
dist(id1,id2,1,31).
dist(id2,id1,1,31).
}).



#pos(p_23576@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,185).
dist(id1,id0,1,185).
dist(id0,id2,1,178).
dist(id2,id0,1,178).
dist(id1,id2,1,30).
dist(id2,id1,1,30).
}).



#pos(p_23577@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,185).
dist(id1,id0,1,185).
dist(id0,id2,1,178).
dist(id2,id0,1,178).
dist(id1,id2,1,30).
dist(id2,id1,1,30).
}).



#pos(p_23578@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,183).
dist(id1,id0,1,183).
dist(id0,id2,1,177).
dist(id2,id0,1,177).
dist(id1,id2,1,29).
dist(id2,id1,1,29).
}).



#pos(p_23579@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,178).
dist(id1,id0,1,178).
dist(id0,id2,1,177).
dist(id2,id0,1,177).
dist(id1,id2,1,26).
dist(id2,id1,1,26).
}).



#pos(p_23580@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,178).
dist(id1,id0,1,178).
dist(id0,id2,1,184).
dist(id2,id0,1,184).
dist(id1,id2,1,37).
dist(id2,id1,1,37).
}).



#pos(p_23581@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,175).
dist(id1,id0,1,175).
dist(id0,id2,1,175).
dist(id2,id0,1,175).
dist(id1,id2,1,29).
dist(id2,id1,1,29).
}).



#pos(p_23582@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,175).
dist(id1,id0,1,175).
dist(id0,id2,1,173).
dist(id2,id0,1,173).
dist(id1,id2,1,25).
dist(id2,id1,1,25).
}).



#pos(p_23583@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(abrupt(id2),1).
dist(id0,id1,1,175).
dist(id1,id0,1,175).
dist(id0,id2,1,173).
dist(id2,id0,1,173).
dist(id1,id2,1,24).
dist(id2,id1,1,24).
}).



#pos(p_13666@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13667@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13668@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13669@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13670@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13671@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13672@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13673@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13674@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13675@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13676@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13677@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13678@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13679@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13680@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13681@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13682@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13683@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13684@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13685@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13686@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13687@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13688@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13689@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13690@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7825@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7826@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7827@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7828@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7829@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7830@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7831@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7832@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7833@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7834@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7835@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7836@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7837@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7838@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7839@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7840@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7841@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7842@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7843@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7844@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7845@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7846@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7847@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7848@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7849@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_18159@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,159).
dist(id1,id0,1,159).
}).



#pos(p_18160@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,157).
dist(id1,id0,1,157).
}).



#pos(p_18161@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,157).
dist(id1,id0,1,157).
}).



#pos(p_18162@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,156).
dist(id1,id0,1,156).
}).



#pos(p_18163@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,155).
dist(id1,id0,1,155).
}).



#pos(p_18164@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,152).
dist(id1,id0,1,152).
}).



#pos(p_18165@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,148).
dist(id1,id0,1,148).
}).



#pos(p_18166@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,145).
dist(id1,id0,1,145).
}).



#pos(p_18167@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,141).
dist(id1,id0,1,141).
}).



#pos(p_18168@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,141).
dist(id1,id0,1,141).
}).



#pos(p_18169@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,135).
dist(id1,id0,1,135).
}).



#pos(p_18170@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,135).
dist(id1,id0,1,135).
}).



#pos(p_18171@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,133).
dist(id1,id0,1,133).
}).



#pos(p_18172@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,130).
dist(id1,id0,1,130).
}).



#pos(p_18173@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,129).
dist(id1,id0,1,129).
}).



#pos(p_18174@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,127).
dist(id1,id0,1,127).
}).



#pos(p_18175@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,126).
dist(id1,id0,1,126).
}).



#pos(p_18176@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,123).
dist(id1,id0,1,123).
}).



#pos(p_18177@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,121).
dist(id1,id0,1,121).
}).



#pos(p_18178@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_18179@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,113).
dist(id1,id0,1,113).
}).



#pos(p_18180@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,110).
dist(id1,id0,1,110).
}).



#pos(p_18181@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,107).
dist(id1,id0,1,107).
}).



#pos(p_18182@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,105).
dist(id1,id0,1,105).
}).



#pos(p_18183@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,104).
dist(id1,id0,1,104).
}).



#pos(p_11122@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11123@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11124@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11125@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11126@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11127@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11128@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11129@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11130@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11131@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11132@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11133@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11134@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11135@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11136@1, {}, {}, {
person(id0).

happensAt(active(id0),1).
happensAt(disappear(id0),1).

}).



#pos(p_11137@100, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
happensAt(appear(id0),1).
happensAt(appear(id1),1).
dist(id0,id1,1,48).
dist(id1,id0,1,48).
}).



#pos(p_21320@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_21321@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_21322@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_21323@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_21324@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_21325@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_21326@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_21327@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_21328@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,13).
dist(id1,id0,1,13).
}).



#pos(p_21329@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_21330@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_21331@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_21332@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_21333@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_21334@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,5).
dist(id1,id0,1,5).
}).



#pos(p_21335@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,5).
dist(id1,id0,1,5).
}).



#pos(p_21336@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,5).
dist(id1,id0,1,5).
}).



#pos(p_21337@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,5).
dist(id1,id0,1,5).
}).



#pos(p_21338@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_21339@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_21340@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,5).
dist(id1,id0,1,5).
}).



#pos(p_21341@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_21342@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,6).
dist(id1,id0,1,6).
}).



#pos(p_21343@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,5).
dist(id1,id0,1,5).
}).



#pos(p_21344@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
dist(id0,id1,1,5).
dist(id1,id0,1,5).
}).



#pos(p_17301@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,28).
dist(id1,id0,1,28).
}).



#pos(p_17302@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,28).
dist(id1,id0,1,28).
}).



#pos(p_17303@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,26).
dist(id1,id0,1,26).
}).



#pos(p_17304@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
}).



#pos(p_17305@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
}).



#pos(p_17306@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
}).



#pos(p_17307@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,21).
dist(id1,id0,1,21).
}).



#pos(p_17308@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,21).
dist(id1,id0,1,21).
}).



#pos(p_17309@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_17310@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_17311@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,19).
dist(id1,id0,1,19).
}).



#pos(p_17312@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,17).
dist(id1,id0,1,17).
}).



#pos(p_17313@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,17).
dist(id1,id0,1,17).
}).



#pos(p_17314@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,17).
dist(id1,id0,1,17).
}).



#pos(p_17315@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,16).
dist(id1,id0,1,16).
}).



#pos(p_17316@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,16).
dist(id1,id0,1,16).
}).



#pos(p_17317@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_17318@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_17319@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_17320@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_17321@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_17322@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_17323@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_17324@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_17325@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,15).
dist(id1,id0,1,15).
}).



#pos(p_19836@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
dist(id0,id2,1,35).
dist(id2,id0,1,35).
dist(id1,id2,1,58).
dist(id2,id1,1,58).
dist(id0,id3,1,45).
dist(id3,id0,1,45).
dist(id1,id3,1,45).
dist(id3,id1,1,45).
dist(id2,id3,1,61).
dist(id3,id2,1,61).
}).



#pos(p_19837@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
dist(id0,id2,1,34).
dist(id2,id0,1,34).
dist(id1,id2,1,57).
dist(id2,id1,1,57).
dist(id0,id3,1,46).
dist(id3,id0,1,46).
dist(id1,id3,1,46).
dist(id3,id1,1,46).
dist(id2,id3,1,62).
dist(id3,id2,1,62).
}).



#pos(p_19838@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
dist(id0,id2,1,33).
dist(id2,id0,1,33).
dist(id1,id2,1,56).
dist(id2,id1,1,56).
dist(id0,id3,1,48).
dist(id3,id0,1,48).
dist(id1,id3,1,48).
dist(id3,id1,1,48).
dist(id2,id3,1,62).
dist(id3,id2,1,62).
}).



#pos(p_19839@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
dist(id0,id2,1,33).
dist(id2,id0,1,33).
dist(id1,id2,1,56).
dist(id2,id1,1,56).
dist(id0,id3,1,49).
dist(id3,id0,1,49).
dist(id1,id3,1,50).
dist(id3,id1,1,50).
dist(id2,id3,1,62).
dist(id3,id2,1,62).
}).



#pos(p_19840@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
dist(id0,id2,1,33).
dist(id2,id0,1,33).
dist(id1,id2,1,56).
dist(id2,id1,1,56).
dist(id0,id3,1,49).
dist(id3,id0,1,49).
dist(id1,id3,1,50).
dist(id3,id1,1,50).
dist(id2,id3,1,62).
dist(id3,id2,1,62).
}).



#pos(p_19841@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
dist(id0,id2,1,34).
dist(id2,id0,1,34).
dist(id1,id2,1,57).
dist(id2,id1,1,57).
dist(id0,id3,1,49).
dist(id3,id0,1,49).
dist(id1,id3,1,50).
dist(id3,id1,1,50).
dist(id2,id3,1,62).
dist(id3,id2,1,62).
}).



#pos(p_19842@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
dist(id0,id2,1,34).
dist(id2,id0,1,34).
dist(id1,id2,1,58).
dist(id2,id1,1,58).
dist(id0,id3,1,49).
dist(id3,id0,1,49).
dist(id1,id3,1,52).
dist(id3,id1,1,52).
dist(id2,id3,1,62).
dist(id3,id2,1,62).
}).



#pos(p_19843@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
dist(id0,id2,1,34).
dist(id2,id0,1,34).
dist(id1,id2,1,57).
dist(id2,id1,1,57).
dist(id0,id3,1,49).
dist(id3,id0,1,49).
dist(id1,id3,1,51).
dist(id3,id1,1,51).
dist(id2,id3,1,62).
dist(id3,id2,1,62).
}).



#pos(p_19844@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
dist(id0,id2,1,34).
dist(id2,id0,1,34).
dist(id1,id2,1,58).
dist(id2,id1,1,58).
dist(id0,id3,1,48).
dist(id3,id0,1,48).
dist(id1,id3,1,50).
dist(id3,id1,1,50).
dist(id2,id3,1,62).
dist(id3,id2,1,62).
}).



#pos(p_19845@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
dist(id0,id2,1,34).
dist(id2,id0,1,34).
dist(id1,id2,1,58).
dist(id2,id1,1,58).
dist(id0,id3,1,48).
dist(id3,id0,1,48).
dist(id1,id3,1,49).
dist(id3,id1,1,49).
dist(id2,id3,1,62).
dist(id3,id2,1,62).
}).



#pos(p_19846@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
dist(id0,id2,1,33).
dist(id2,id0,1,33).
dist(id1,id2,1,57).
dist(id2,id1,1,57).
dist(id0,id3,1,48).
dist(id3,id0,1,48).
dist(id1,id3,1,48).
dist(id3,id1,1,48).
dist(id2,id3,1,64).
dist(id3,id2,1,64).
}).



#pos(p_19847@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
dist(id0,id2,1,34).
dist(id2,id0,1,34).
dist(id1,id2,1,58).
dist(id2,id1,1,58).
dist(id0,id3,1,50).
dist(id3,id0,1,50).
dist(id1,id3,1,47).
dist(id3,id1,1,47).
dist(id2,id3,1,65).
dist(id3,id2,1,65).
}).



#pos(p_19848@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,25).
dist(id1,id0,1,25).
dist(id0,id2,1,35).
dist(id2,id0,1,35).
dist(id1,id2,1,59).
dist(id2,id1,1,59).
dist(id0,id3,1,54).
dist(id3,id0,1,54).
dist(id1,id3,1,48).
dist(id3,id1,1,48).
dist(id2,id3,1,66).
dist(id3,id2,1,66).
}).



#pos(p_19849@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,27).
dist(id1,id0,1,27).
dist(id0,id2,1,35).
dist(id2,id0,1,35).
dist(id1,id2,1,60).
dist(id2,id1,1,60).
dist(id0,id3,1,56).
dist(id3,id0,1,56).
dist(id1,id3,1,48).
dist(id3,id1,1,48).
dist(id2,id3,1,67).
dist(id3,id2,1,67).
}).



#pos(p_19850@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,29).
dist(id1,id0,1,29).
dist(id0,id2,1,36).
dist(id2,id0,1,36).
dist(id1,id2,1,63).
dist(id2,id1,1,63).
dist(id0,id3,1,57).
dist(id3,id0,1,57).
dist(id1,id3,1,48).
dist(id3,id1,1,48).
dist(id2,id3,1,67).
dist(id3,id2,1,67).
}).



#pos(p_19851@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,29).
dist(id1,id0,1,29).
dist(id0,id2,1,36).
dist(id2,id0,1,36).
dist(id1,id2,1,63).
dist(id2,id1,1,63).
dist(id0,id3,1,58).
dist(id3,id0,1,58).
dist(id1,id3,1,52).
dist(id3,id1,1,52).
dist(id2,id3,1,67).
dist(id3,id2,1,67).
}).



#pos(p_19852@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
dist(id0,id2,1,37).
dist(id2,id0,1,37).
dist(id1,id2,1,66).
dist(id2,id1,1,66).
dist(id0,id3,1,59).
dist(id3,id0,1,59).
dist(id1,id3,1,54).
dist(id3,id1,1,54).
dist(id2,id3,1,69).
dist(id3,id2,1,69).
}).



#pos(p_19853@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
dist(id0,id2,1,38).
dist(id2,id0,1,38).
dist(id1,id2,1,66).
dist(id2,id1,1,66).
dist(id0,id3,1,60).
dist(id3,id0,1,60).
dist(id1,id3,1,57).
dist(id3,id1,1,57).
dist(id2,id3,1,67).
dist(id3,id2,1,67).
}).



#pos(p_19854@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
dist(id0,id2,1,37).
dist(id2,id0,1,37).
dist(id1,id2,1,66).
dist(id2,id1,1,66).
dist(id0,id3,1,61).
dist(id3,id0,1,61).
dist(id1,id3,1,58).
dist(id3,id1,1,58).
dist(id2,id3,1,68).
dist(id3,id2,1,68).
}).



#pos(p_19855@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
dist(id0,id2,1,37).
dist(id2,id0,1,37).
dist(id1,id2,1,68).
dist(id2,id1,1,68).
dist(id0,id3,1,61).
dist(id3,id0,1,61).
dist(id1,id3,1,60).
dist(id3,id1,1,60).
dist(id2,id3,1,68).
dist(id3,id2,1,68).
}).



#pos(p_19856@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
dist(id0,id2,1,36).
dist(id2,id0,1,36).
dist(id1,id2,1,67).
dist(id2,id1,1,67).
dist(id0,id3,1,62).
dist(id3,id0,1,62).
dist(id1,id3,1,61).
dist(id3,id1,1,61).
dist(id2,id3,1,69).
dist(id3,id2,1,69).
}).



#pos(p_19857@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,34).
dist(id1,id0,1,34).
dist(id0,id2,1,36).
dist(id2,id0,1,36).
dist(id1,id2,1,69).
dist(id2,id1,1,69).
dist(id0,id3,1,63).
dist(id3,id0,1,63).
dist(id1,id3,1,61).
dist(id3,id1,1,61).
dist(id2,id3,1,72).
dist(id3,id2,1,72).
}).



#pos(p_19858@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
dist(id0,id2,1,36).
dist(id2,id0,1,36).
dist(id1,id2,1,68).
dist(id2,id1,1,68).
dist(id0,id3,1,64).
dist(id3,id0,1,64).
dist(id1,id3,1,60).
dist(id3,id1,1,60).
dist(id2,id3,1,73).
dist(id3,id2,1,73).
}).



#pos(p_19859@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
dist(id0,id2,1,36).
dist(id2,id0,1,36).
dist(id1,id2,1,67).
dist(id2,id1,1,67).
dist(id0,id3,1,66).
dist(id3,id0,1,66).
dist(id1,id3,1,61).
dist(id3,id1,1,61).
dist(id2,id3,1,74).
dist(id3,id2,1,74).
}).



#pos(p_19860@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
dist(id0,id2,1,34).
dist(id2,id0,1,34).
dist(id1,id2,1,66).
dist(id2,id1,1,66).
dist(id0,id3,1,65).
dist(id3,id0,1,65).
dist(id1,id3,1,60).
dist(id3,id1,1,60).
dist(id2,id3,1,75).
dist(id3,id2,1,75).
}).



#pos(p_11853@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11854@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11855@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11856@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11857@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11858@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11859@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11860@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11861@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11862@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11863@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11864@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11865@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11866@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11867@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11868@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11869@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11870@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11871@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11872@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11873@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11874@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11875@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11876@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11877@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_21770@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,156).
dist(id1,id0,1,156).
dist(id0,id2,1,187).
dist(id2,id0,1,187).
dist(id1,id2,1,34).
dist(id2,id1,1,34).
}).



#pos(p_21771@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,158).
dist(id1,id0,1,158).
dist(id0,id2,1,187).
dist(id2,id0,1,187).
dist(id1,id2,1,34).
dist(id2,id1,1,34).
}).



#pos(p_21772@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,160).
dist(id1,id0,1,160).
dist(id0,id2,1,188).
dist(id2,id0,1,188).
dist(id1,id2,1,35).
dist(id2,id1,1,35).
}).



#pos(p_21773@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,162).
dist(id1,id0,1,162).
dist(id0,id2,1,187).
dist(id2,id0,1,187).
dist(id1,id2,1,34).
dist(id2,id1,1,34).
}).



#pos(p_21774@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,164).
dist(id1,id0,1,164).
dist(id0,id2,1,188).
dist(id2,id0,1,188).
dist(id1,id2,1,33).
dist(id2,id1,1,33).
}).



#pos(p_21775@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,164).
dist(id1,id0,1,164).
dist(id0,id2,1,187).
dist(id2,id0,1,187).
dist(id1,id2,1,32).
dist(id2,id1,1,32).
}).



#pos(p_21776@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,167).
dist(id1,id0,1,167).
dist(id0,id2,1,187).
dist(id2,id0,1,187).
dist(id1,id2,1,31).
dist(id2,id1,1,31).
}).



#pos(p_21777@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,173).
dist(id1,id0,1,173).
dist(id0,id2,1,186).
dist(id2,id0,1,186).
dist(id1,id2,1,29).
dist(id2,id1,1,29).
}).



#pos(p_21778@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,176).
dist(id1,id0,1,176).
dist(id0,id2,1,186).
dist(id2,id0,1,186).
dist(id1,id2,1,27).
dist(id2,id1,1,27).
}).



#pos(p_21779@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,178).
dist(id1,id0,1,178).
dist(id0,id2,1,184).
dist(id2,id0,1,184).
dist(id1,id2,1,24).
dist(id2,id1,1,24).
}).



#pos(p_21780@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,179).
dist(id1,id0,1,179).
dist(id0,id2,1,184).
dist(id2,id0,1,184).
dist(id1,id2,1,28).
dist(id2,id1,1,28).
}).



#pos(p_21781@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
dist(id0,id2,1,184).
dist(id2,id0,1,184).
dist(id1,id2,1,29).
dist(id2,id1,1,29).
}).



#pos(p_21782@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,182).
dist(id1,id0,1,182).
dist(id0,id2,1,185).
dist(id2,id0,1,185).
dist(id1,id2,1,28).
dist(id2,id1,1,28).
}).



#pos(p_21783@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,182).
dist(id1,id0,1,182).
dist(id0,id2,1,185).
dist(id2,id0,1,185).
dist(id1,id2,1,30).
dist(id2,id1,1,30).
}).



#pos(p_21784@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,183).
dist(id1,id0,1,183).
dist(id0,id2,1,185).
dist(id2,id0,1,185).
dist(id1,id2,1,31).
dist(id2,id1,1,31).
}).



#pos(p_21785@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,183).
dist(id1,id0,1,183).
dist(id0,id2,1,185).
dist(id2,id0,1,185).
dist(id1,id2,1,33).
dist(id2,id1,1,33).
}).



#pos(p_21786@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,182).
dist(id1,id0,1,182).
dist(id0,id2,1,185).
dist(id2,id0,1,185).
dist(id1,id2,1,32).
dist(id2,id1,1,32).
}).



#pos(p_21787@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,181).
dist(id1,id0,1,181).
dist(id0,id2,1,186).
dist(id2,id0,1,186).
dist(id1,id2,1,30).
dist(id2,id1,1,30).
}).



#pos(p_21788@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,179).
dist(id1,id0,1,179).
dist(id0,id2,1,188).
dist(id2,id0,1,188).
dist(id1,id2,1,32).
dist(id2,id1,1,32).
}).



#pos(p_21789@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,179).
dist(id1,id0,1,179).
dist(id0,id2,1,188).
dist(id2,id0,1,188).
dist(id1,id2,1,32).
dist(id2,id1,1,32).
}).



#pos(p_21790@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,181).
dist(id1,id0,1,181).
dist(id0,id2,1,187).
dist(id2,id0,1,187).
dist(id1,id2,1,35).
dist(id2,id1,1,35).
}).



#pos(p_21791@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
dist(id0,id2,1,186).
dist(id2,id0,1,186).
dist(id1,id2,1,34).
dist(id2,id1,1,34).
}).



#pos(p_21792@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
dist(id0,id2,1,188).
dist(id2,id0,1,188).
dist(id1,id2,1,34).
dist(id2,id1,1,34).
}).



#pos(p_21793@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
dist(id0,id2,1,188).
dist(id2,id0,1,188).
dist(id1,id2,1,31).
dist(id2,id1,1,31).
}).



#pos(p_21794@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,179).
dist(id1,id0,1,179).
dist(id0,id2,1,187).
dist(id2,id0,1,187).
dist(id1,id2,1,30).
dist(id2,id1,1,30).
}).



#pos(p_20920@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_20921@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_20922@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_20923@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_20924@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,119).
dist(id1,id0,1,119).
}).



#pos(p_20925@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,119).
dist(id1,id0,1,119).
}).



#pos(p_20926@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,119).
dist(id1,id0,1,119).
}).



#pos(p_20927@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,119).
dist(id1,id0,1,119).
}).



#pos(p_20928@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,119).
dist(id1,id0,1,119).
}).



#pos(p_20929@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,119).
dist(id1,id0,1,119).
}).



#pos(p_20930@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,119).
dist(id1,id0,1,119).
}).



#pos(p_20931@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,119).
dist(id1,id0,1,119).
}).



#pos(p_20932@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_20933@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_20934@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_20935@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_20936@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_20937@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_20938@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_20939@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_20940@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_20941@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_20942@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_20943@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_20944@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_5234@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,194).
dist(id1,id0,1,194).
}).



#pos(p_5235@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,194).
dist(id1,id0,1,194).
}).



#pos(p_5236@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_5237@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_5238@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_5239@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,191).
dist(id1,id0,1,191).
}).



#pos(p_5240@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,191).
dist(id1,id0,1,191).
}).



#pos(p_5241@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,192).
dist(id1,id0,1,192).
}).



#pos(p_5242@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,193).
dist(id1,id0,1,193).
}).



#pos(p_5243@1, {}, {}, {
person(id0).
person(id1).

happensAt(disappear(id1),1).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_5244@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5245@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5246@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5247@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5248@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5249@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5250@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5251@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5252@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5253@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5254@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5255@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5256@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5257@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5258@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14491@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14492@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14493@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14494@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14495@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14496@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14497@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14498@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14499@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14500@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14501@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14502@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14503@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14504@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14505@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14506@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14507@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).
happensAt(disappear(id0),1).

}).



#pos(p_14508@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).
happensAt(appear(id0),1).

}).



#pos(p_14509@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14510@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14511@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14512@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14513@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14514@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14515@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).




#pos(p_9654@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9655@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9656@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9657@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9658@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9659@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9660@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9661@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9662@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9663@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9664@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9665@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9666@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9667@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9668@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9669@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9670@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9671@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9672@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9673@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9674@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9675@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9676@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9677@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9678@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11378@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11379@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11380@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11381@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11382@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11383@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11384@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11385@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11386@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11387@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11388@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11389@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11390@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11391@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11392@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11393@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11394@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11395@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11396@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11397@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11398@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11399@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11400@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11401@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11402@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18650@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18651@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18652@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_18653@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_18654@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_18655@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_18656@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_18657@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_18658@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18659@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,5).
dist(id1,id0,1,5).
}).



#pos(p_18660@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,5).
dist(id1,id0,1,5).
}).



#pos(p_18661@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_18662@100, {}, {}, {
person(id0).
person(id1).
goal(holdsAt(meeting(id0,id1),2)).
goal(holdsAt(meeting(id1,id0),2)).
happensAt(active(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,7).
dist(id1,id0,1,7).
}).



#pos(p_4309@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4310@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4311@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4312@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4313@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4314@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4315@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4316@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4317@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4318@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4319@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4320@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4321@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4322@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4323@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4324@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4325@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4326@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4327@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4328@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4329@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4330@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4331@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4332@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4333@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11953@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11954@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11955@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11956@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11957@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11958@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11959@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11960@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11961@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11962@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11963@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11964@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11965@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11966@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11967@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11968@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11969@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11970@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11971@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11972@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11973@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11974@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11975@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11976@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11977@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7475@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7476@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7477@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7478@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7479@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7480@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7481@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7482@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7483@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7484@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7485@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7486@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7487@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7488@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7489@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7490@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7491@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7492@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7493@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7494@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7495@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7496@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7497@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7498@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7499@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_23759@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,3).
dist(id2,id0,1,3).
dist(id1,id2,1,213).
dist(id2,id1,1,213).
dist(id0,id3,1,66).
dist(id3,id0,1,66).
dist(id1,id3,1,166).
dist(id3,id1,1,166).
dist(id2,id3,1,63).
dist(id3,id2,1,63).
}).



#pos(p_23760@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,3).
dist(id2,id0,1,3).
dist(id1,id2,1,213).
dist(id2,id1,1,213).
dist(id0,id3,1,66).
dist(id3,id0,1,66).
dist(id1,id3,1,166).
dist(id3,id1,1,166).
dist(id2,id3,1,63).
dist(id3,id2,1,63).
}).



#pos(p_23761@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,3).
dist(id2,id0,1,3).
dist(id1,id2,1,213).
dist(id2,id1,1,213).
dist(id0,id3,1,66).
dist(id3,id0,1,66).
dist(id1,id3,1,166).
dist(id3,id1,1,166).
dist(id2,id3,1,63).
dist(id3,id2,1,63).
}).



#pos(p_23762@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,3).
dist(id2,id0,1,3).
dist(id1,id2,1,213).
dist(id2,id1,1,213).
dist(id0,id3,1,66).
dist(id3,id0,1,66).
dist(id1,id3,1,166).
dist(id3,id1,1,166).
dist(id2,id3,1,63).
dist(id3,id2,1,63).
}).



#pos(p_23763@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,3).
dist(id2,id0,1,3).
dist(id1,id2,1,213).
dist(id2,id1,1,213).
dist(id0,id3,1,67).
dist(id3,id0,1,67).
dist(id1,id3,1,167).
dist(id3,id1,1,167).
dist(id2,id3,1,64).
dist(id3,id2,1,64).
}).



#pos(p_23764@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,3).
dist(id2,id0,1,3).
dist(id1,id2,1,213).
dist(id2,id1,1,213).
dist(id0,id3,1,70).
dist(id3,id0,1,70).
dist(id1,id3,1,165).
dist(id3,id1,1,165).
dist(id2,id3,1,67).
dist(id3,id2,1,67).
}).



#pos(p_23765@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,3).
dist(id2,id0,1,3).
dist(id1,id2,1,213).
dist(id2,id1,1,213).
dist(id0,id3,1,71).
dist(id3,id0,1,71).
dist(id1,id3,1,165).
dist(id3,id1,1,165).
dist(id2,id3,1,68).
dist(id3,id2,1,68).
}).



#pos(p_23766@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,3).
dist(id2,id0,1,3).
dist(id1,id2,1,213).
dist(id2,id1,1,213).
dist(id0,id3,1,74).
dist(id3,id0,1,74).
dist(id1,id3,1,165).
dist(id3,id1,1,165).
dist(id2,id3,1,71).
dist(id3,id2,1,71).
}).



#pos(p_23767@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,3).
dist(id2,id0,1,3).
dist(id1,id2,1,213).
dist(id2,id1,1,213).
dist(id0,id3,1,75).
dist(id3,id0,1,75).
dist(id1,id3,1,164).
dist(id3,id1,1,164).
dist(id2,id3,1,72).
dist(id3,id2,1,72).
}).



#pos(p_23768@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,3).
dist(id2,id0,1,3).
dist(id1,id2,1,213).
dist(id2,id1,1,213).
dist(id0,id3,1,75).
dist(id3,id0,1,75).
dist(id1,id3,1,164).
dist(id3,id1,1,164).
dist(id2,id3,1,72).
dist(id3,id2,1,72).
}).



#pos(p_23769@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,3).
dist(id2,id0,1,3).
dist(id1,id2,1,213).
dist(id2,id1,1,213).
dist(id0,id3,1,77).
dist(id3,id0,1,77).
dist(id1,id3,1,163).
dist(id3,id1,1,163).
dist(id2,id3,1,74).
dist(id3,id2,1,74).
}).



#pos(p_23770@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,204).
dist(id1,id0,1,204).
dist(id0,id2,1,3).
dist(id2,id0,1,3).
dist(id1,id2,1,201).
dist(id2,id1,1,201).
dist(id0,id3,1,79).
dist(id3,id0,1,79).
dist(id1,id3,1,149).
dist(id3,id1,1,149).
dist(id2,id3,1,76).
dist(id3,id2,1,76).
}).



#pos(p_23771@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,203).
dist(id1,id0,1,203).
dist(id0,id2,1,3).
dist(id2,id0,1,3).
dist(id1,id2,1,200).
dist(id2,id1,1,200).
dist(id0,id3,1,80).
dist(id3,id0,1,80).
dist(id1,id3,1,147).
dist(id3,id1,1,147).
dist(id2,id3,1,77).
dist(id3,id2,1,77).
}).



#pos(p_23772@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,204).
dist(id1,id0,1,204).
dist(id0,id2,1,3).
dist(id2,id0,1,3).
dist(id1,id2,1,201).
dist(id2,id1,1,201).
dist(id0,id3,1,80).
dist(id3,id0,1,80).
dist(id1,id3,1,148).
dist(id3,id1,1,148).
dist(id2,id3,1,77).
dist(id3,id2,1,77).
}).



#pos(p_23773@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,204).
dist(id1,id0,1,204).
dist(id0,id2,1,3).
dist(id2,id0,1,3).
dist(id1,id2,1,201).
dist(id2,id1,1,201).
dist(id0,id3,1,81).
dist(id3,id0,1,81).
dist(id1,id3,1,149).
dist(id3,id1,1,149).
dist(id2,id3,1,78).
dist(id3,id2,1,78).
}).



#pos(p_23774@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,204).
dist(id1,id0,1,204).
dist(id0,id2,1,3).
dist(id2,id0,1,3).
dist(id1,id2,1,201).
dist(id2,id1,1,201).
dist(id0,id3,1,81).
dist(id3,id0,1,81).
dist(id1,id3,1,149).
dist(id3,id1,1,149).
dist(id2,id3,1,78).
dist(id3,id2,1,78).
}).



#pos(p_23775@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,204).
dist(id1,id0,1,204).
dist(id0,id2,1,3).
dist(id2,id0,1,3).
dist(id1,id2,1,201).
dist(id2,id1,1,201).
dist(id0,id3,1,81).
dist(id3,id0,1,81).
dist(id1,id3,1,149).
dist(id3,id1,1,149).
dist(id2,id3,1,78).
dist(id3,id2,1,78).
}).



#pos(p_23776@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,204).
dist(id1,id0,1,204).
dist(id0,id2,1,3).
dist(id2,id0,1,3).
dist(id1,id2,1,201).
dist(id2,id1,1,201).
dist(id0,id3,1,81).
dist(id3,id0,1,81).
dist(id1,id3,1,149).
dist(id3,id1,1,149).
dist(id2,id3,1,78).
dist(id3,id2,1,78).
}).



#pos(p_23777@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,203).
dist(id1,id0,1,203).
dist(id0,id2,1,3).
dist(id2,id0,1,3).
dist(id1,id2,1,200).
dist(id2,id1,1,200).
dist(id0,id3,1,81).
dist(id3,id0,1,81).
dist(id1,id3,1,149).
dist(id3,id1,1,149).
dist(id2,id3,1,78).
dist(id3,id2,1,78).
}).



#pos(p_23778@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,204).
dist(id1,id0,1,204).
dist(id0,id2,1,3).
dist(id2,id0,1,3).
dist(id1,id2,1,201).
dist(id2,id1,1,201).
dist(id0,id3,1,81).
dist(id3,id0,1,81).
dist(id1,id3,1,150).
dist(id3,id1,1,150).
dist(id2,id3,1,78).
dist(id3,id2,1,78).
}).



#pos(p_23779@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,204).
dist(id1,id0,1,204).
dist(id0,id2,1,3).
dist(id2,id0,1,3).
dist(id1,id2,1,201).
dist(id2,id1,1,201).
dist(id0,id3,1,84).
dist(id3,id0,1,84).
dist(id1,id3,1,147).
dist(id3,id1,1,147).
dist(id2,id3,1,81).
dist(id3,id2,1,81).
}).



#pos(p_23780@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,204).
dist(id1,id0,1,204).
dist(id0,id2,1,3).
dist(id2,id0,1,3).
dist(id1,id2,1,201).
dist(id2,id1,1,201).
dist(id0,id3,1,84).
dist(id3,id0,1,84).
dist(id1,id3,1,147).
dist(id3,id1,1,147).
dist(id2,id3,1,81).
dist(id3,id2,1,81).
}).



#pos(p_23781@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,204).
dist(id1,id0,1,204).
dist(id0,id2,1,7).
dist(id2,id0,1,7).
dist(id1,id2,1,208).
dist(id2,id1,1,208).
dist(id0,id3,1,88).
dist(id3,id0,1,88).
dist(id1,id3,1,145).
dist(id3,id1,1,145).
dist(id2,id3,1,88).
dist(id3,id2,1,88).
}).



#pos(p_23782@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,204).
dist(id1,id0,1,204).
dist(id0,id2,1,7).
dist(id2,id0,1,7).
dist(id1,id2,1,208).
dist(id2,id1,1,208).
dist(id0,id3,1,89).
dist(id3,id0,1,89).
dist(id1,id3,1,146).
dist(id3,id1,1,146).
dist(id2,id3,1,88).
dist(id3,id2,1,88).
}).



#pos(p_23783@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,205).
dist(id1,id0,1,205).
dist(id0,id2,1,9).
dist(id2,id0,1,9).
dist(id1,id2,1,209).
dist(id2,id1,1,209).
dist(id0,id3,1,89).
dist(id3,id0,1,89).
dist(id1,id3,1,145).
dist(id3,id1,1,145).
dist(id2,id3,1,87).
dist(id3,id2,1,87).
}).



#pos(p_1546@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,27).
dist(id1,id0,1,27).
dist(id0,id2,1,68).
dist(id2,id0,1,68).
dist(id1,id2,1,41).
dist(id2,id1,1,41).
}).



#pos(p_1547@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,28).
dist(id1,id0,1,28).
dist(id0,id2,1,68).
dist(id2,id0,1,68).
dist(id1,id2,1,41).
dist(id2,id1,1,41).
}).



#pos(p_1548@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,28).
dist(id1,id0,1,28).
dist(id0,id2,1,67).
dist(id2,id0,1,67).
dist(id1,id2,1,40).
dist(id2,id1,1,40).
}).



#pos(p_1549@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,29).
dist(id1,id0,1,29).
dist(id0,id2,1,68).
dist(id2,id0,1,68).
dist(id1,id2,1,40).
dist(id2,id1,1,40).
}).



#pos(p_1550@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
dist(id0,id2,1,68).
dist(id2,id0,1,68).
dist(id1,id2,1,40).
dist(id2,id1,1,40).
}).



#pos(p_1551@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
dist(id0,id2,1,68).
dist(id2,id0,1,68).
dist(id1,id2,1,40).
dist(id2,id1,1,40).
}).



#pos(p_1552@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
dist(id0,id2,1,69).
dist(id2,id0,1,69).
dist(id1,id2,1,40).
dist(id2,id1,1,40).
}).



#pos(p_1553@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
dist(id0,id2,1,69).
dist(id2,id0,1,69).
dist(id1,id2,1,40).
dist(id2,id1,1,40).
}).



#pos(p_1554@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
dist(id0,id2,1,70).
dist(id2,id0,1,70).
dist(id1,id2,1,40).
dist(id2,id1,1,40).
}).



#pos(p_1555@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
dist(id0,id2,1,71).
dist(id2,id0,1,71).
dist(id1,id2,1,41).
dist(id2,id1,1,41).
}).



#pos(p_1556@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
dist(id0,id2,1,72).
dist(id2,id0,1,72).
dist(id1,id2,1,42).
dist(id2,id1,1,42).
}).



#pos(p_1557@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
dist(id0,id2,1,73).
dist(id2,id0,1,73).
dist(id1,id2,1,43).
dist(id2,id1,1,43).
}).



#pos(p_1558@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
dist(id0,id2,1,72).
dist(id2,id0,1,72).
dist(id1,id2,1,42).
dist(id2,id1,1,42).
}).



#pos(p_1559@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
dist(id0,id2,1,73).
dist(id2,id0,1,73).
dist(id1,id2,1,43).
dist(id2,id1,1,43).
}).



#pos(p_1560@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
dist(id0,id2,1,74).
dist(id2,id0,1,74).
dist(id1,id2,1,43).
dist(id2,id1,1,43).
}).



#pos(p_1561@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
dist(id0,id2,1,74).
dist(id2,id0,1,74).
dist(id1,id2,1,43).
dist(id2,id1,1,43).
}).



#pos(p_1562@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
dist(id0,id2,1,73).
dist(id2,id0,1,73).
dist(id1,id2,1,42).
dist(id2,id1,1,42).
}).



#pos(p_1563@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
dist(id0,id2,1,73).
dist(id2,id0,1,73).
dist(id1,id2,1,42).
dist(id2,id1,1,42).
}).



#pos(p_1564@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,37).
dist(id1,id0,1,37).
dist(id0,id2,1,75).
dist(id2,id0,1,75).
dist(id1,id2,1,43).
dist(id2,id1,1,43).
}).



#pos(p_1565@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,37).
dist(id1,id0,1,37).
dist(id0,id2,1,75).
dist(id2,id0,1,75).
dist(id1,id2,1,43).
dist(id2,id1,1,43).
}).



#pos(p_1566@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,37).
dist(id1,id0,1,37).
dist(id0,id2,1,75).
dist(id2,id0,1,75).
dist(id1,id2,1,43).
dist(id2,id1,1,43).
}).



#pos(p_1567@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,37).
dist(id1,id0,1,37).
dist(id0,id2,1,75).
dist(id2,id0,1,75).
dist(id1,id2,1,43).
dist(id2,id1,1,43).
}).



#pos(p_1568@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
dist(id0,id2,1,75).
dist(id2,id0,1,75).
dist(id1,id2,1,42).
dist(id2,id1,1,42).
}).



#pos(p_1569@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
dist(id0,id2,1,75).
dist(id2,id0,1,75).
dist(id1,id2,1,43).
dist(id2,id1,1,43).
}).



#pos(p_1570@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
dist(id0,id2,1,75).
dist(id2,id0,1,75).
dist(id1,id2,1,43).
dist(id2,id1,1,43).
}).



#pos(p_3284@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,237).
dist(id1,id0,1,237).
}).



#pos(p_3285@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,238).
dist(id1,id0,1,238).
}).



#pos(p_3286@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,238).
dist(id1,id0,1,238).
}).



#pos(p_3287@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,239).
dist(id1,id0,1,239).
}).



#pos(p_3288@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,240).
dist(id1,id0,1,240).
}).



#pos(p_3289@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,240).
dist(id1,id0,1,240).
}).



#pos(p_3290@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,240).
dist(id1,id0,1,240).
}).



#pos(p_3291@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,241).
dist(id1,id0,1,241).
}).



#pos(p_3292@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,241).
dist(id1,id0,1,241).
}).



#pos(p_3293@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,241).
dist(id1,id0,1,241).
}).



#pos(p_3294@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,241).
dist(id1,id0,1,241).
}).



#pos(p_3295@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,241).
dist(id1,id0,1,241).
}).



#pos(p_3296@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,241).
dist(id1,id0,1,241).
}).



#pos(p_3297@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,242).
dist(id1,id0,1,242).
}).



#pos(p_3298@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,242).
dist(id1,id0,1,242).
}).



#pos(p_3299@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,242).
dist(id1,id0,1,242).
}).



#pos(p_3300@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,242).
dist(id1,id0,1,242).
}).



#pos(p_3301@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,244).
dist(id1,id0,1,244).
}).



#pos(p_3302@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,244).
dist(id1,id0,1,244).
}).



#pos(p_3303@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,243).
dist(id1,id0,1,243).
}).



#pos(p_3304@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,244).
dist(id1,id0,1,244).
}).



#pos(p_3305@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,243).
dist(id1,id0,1,243).
}).



#pos(p_3306@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,243).
dist(id1,id0,1,243).
}).



#pos(p_3307@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,243).
dist(id1,id0,1,243).
}).



#pos(p_3308@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,243).
dist(id1,id0,1,243).
}).



#pos(p_21595@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,165).
dist(id1,id0,1,165).
}).



#pos(p_21596@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,164).
dist(id1,id0,1,164).
}).



#pos(p_21597@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,164).
dist(id1,id0,1,164).
}).



#pos(p_21598@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,166).
dist(id1,id0,1,166).
}).



#pos(p_21599@1, {}, {}, {
person(id0).
person(id1).

happensAt(disappear(id1),1).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,164).
dist(id1,id0,1,164).
}).



#pos(p_21600@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_21601@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_21602@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_21603@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_21604@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_21605@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_21606@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_21607@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_21608@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_21609@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_21610@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_21611@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_21612@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_21613@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_21614@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_21615@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_21616@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_21617@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_21618@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_21619@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15616@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15617@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15618@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15619@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15620@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15621@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15622@1, {}, {}, {
person(id0).
person(id1).

happensAt(appear(id1),1).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,91).
dist(id1,id0,1,91).
}).



#pos(p_15623@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,90).
dist(id1,id0,1,90).
}).



#pos(p_15624@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,90).
dist(id1,id0,1,90).
}).



#pos(p_15625@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,88).
dist(id1,id0,1,88).
}).



#pos(p_15626@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,90).
dist(id1,id0,1,90).
}).



#pos(p_15627@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,87).
dist(id1,id0,1,87).
}).



#pos(p_15628@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,87).
dist(id1,id0,1,87).
}).



#pos(p_15629@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,86).
dist(id1,id0,1,86).
}).



#pos(p_15630@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
}).



#pos(p_15631@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
}).



#pos(p_15632@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,83).
dist(id1,id0,1,83).
}).



#pos(p_15633@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,83).
dist(id1,id0,1,83).
}).



#pos(p_15634@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,83).
dist(id1,id0,1,83).
}).



#pos(p_15635@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
}).



#pos(p_15636@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
}).



#pos(p_15637@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
}).



#pos(p_15638@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
}).



#pos(p_15639@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
}).



#pos(p_15640@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
}).



#pos(p_7500@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7501@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7502@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7503@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7504@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7505@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7506@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7507@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7508@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7509@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7510@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7511@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7512@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7513@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7514@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7515@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7516@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7517@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7518@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7519@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7520@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7521@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7522@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7523@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7524@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).




#pos(p_10572@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10573@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10574@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10575@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10576@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10577@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10578@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10579@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10580@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10581@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10582@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10583@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10584@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10585@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10586@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10587@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10588@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10589@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10590@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10591@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10592@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10593@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10594@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10595@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10596@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1621@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,47).
dist(id1,id0,1,47).
dist(id0,id2,1,87).
dist(id2,id0,1,87).
dist(id1,id2,1,70).
dist(id2,id1,1,70).
}).



#pos(p_1622@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
dist(id0,id2,1,89).
dist(id2,id0,1,89).
dist(id1,id2,1,72).
dist(id2,id1,1,72).
}).



#pos(p_1623@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
dist(id0,id2,1,89).
dist(id2,id0,1,89).
dist(id1,id2,1,73).
dist(id2,id1,1,73).
}).



#pos(p_1624@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
dist(id0,id2,1,90).
dist(id2,id0,1,90).
dist(id1,id2,1,74).
dist(id2,id1,1,74).
}).



#pos(p_1625@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
dist(id0,id2,1,90).
dist(id2,id0,1,90).
dist(id1,id2,1,74).
dist(id2,id1,1,74).
}).



#pos(p_1626@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,48).
dist(id1,id0,1,48).
dist(id0,id2,1,91).
dist(id2,id0,1,91).
dist(id1,id2,1,74).
dist(id2,id1,1,74).
}).



#pos(p_1627@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,49).
dist(id1,id0,1,49).
dist(id0,id2,1,92).
dist(id2,id0,1,92).
dist(id1,id2,1,75).
dist(id2,id1,1,75).
}).



#pos(p_1628@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,49).
dist(id1,id0,1,49).
dist(id0,id2,1,93).
dist(id2,id0,1,93).
dist(id1,id2,1,76).
dist(id2,id1,1,76).
}).



#pos(p_1629@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,49).
dist(id1,id0,1,49).
dist(id0,id2,1,95).
dist(id2,id0,1,95).
dist(id1,id2,1,78).
dist(id2,id1,1,78).
}).



#pos(p_1630@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,49).
dist(id1,id0,1,49).
dist(id0,id2,1,96).
dist(id2,id0,1,96).
dist(id1,id2,1,79).
dist(id2,id1,1,79).
}).



#pos(p_1631@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,49).
dist(id1,id0,1,49).
dist(id0,id2,1,98).
dist(id2,id0,1,98).
dist(id1,id2,1,81).
dist(id2,id1,1,81).
}).



#pos(p_1632@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,50).
dist(id1,id0,1,50).
dist(id0,id2,1,99).
dist(id2,id0,1,99).
dist(id1,id2,1,85).
dist(id2,id1,1,85).
}).



#pos(p_1633@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,50).
dist(id1,id0,1,50).
dist(id0,id2,1,101).
dist(id2,id0,1,101).
dist(id1,id2,1,87).
dist(id2,id1,1,87).
}).



#pos(p_1634@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,50).
dist(id1,id0,1,50).
dist(id0,id2,1,102).
dist(id2,id0,1,102).
dist(id1,id2,1,88).
dist(id2,id1,1,88).
}).



#pos(p_1635@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,51).
dist(id1,id0,1,51).
dist(id0,id2,1,103).
dist(id2,id0,1,103).
dist(id1,id2,1,89).
dist(id2,id1,1,89).
}).



#pos(p_1636@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,51).
dist(id1,id0,1,51).
dist(id0,id2,1,104).
dist(id2,id0,1,104).
dist(id1,id2,1,90).
dist(id2,id1,1,90).
}).



#pos(p_1637@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,53).
dist(id1,id0,1,53).
dist(id0,id2,1,106).
dist(id2,id0,1,106).
dist(id1,id2,1,90).
dist(id2,id1,1,90).
}).



#pos(p_1638@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,54).
dist(id1,id0,1,54).
dist(id0,id2,1,107).
dist(id2,id0,1,107).
dist(id1,id2,1,91).
dist(id2,id1,1,91).
}).



#pos(p_1639@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,54).
dist(id1,id0,1,54).
dist(id0,id2,1,107).
dist(id2,id0,1,107).
dist(id1,id2,1,91).
dist(id2,id1,1,91).
}).



#pos(p_1640@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,54).
dist(id1,id0,1,54).
dist(id0,id2,1,108).
dist(id2,id0,1,108).
dist(id1,id2,1,92).
dist(id2,id1,1,92).
}).



#pos(p_1641@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,54).
dist(id1,id0,1,54).
dist(id0,id2,1,108).
dist(id2,id0,1,108).
dist(id1,id2,1,93).
dist(id2,id1,1,93).
}).



#pos(p_1642@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,54).
dist(id1,id0,1,54).
dist(id0,id2,1,109).
dist(id2,id0,1,109).
dist(id1,id2,1,95).
dist(id2,id1,1,95).
}).



#pos(p_1643@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,56).
dist(id1,id0,1,56).
dist(id0,id2,1,110).
dist(id2,id0,1,110).
dist(id1,id2,1,96).
dist(id2,id1,1,96).
}).



#pos(p_1644@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,56).
dist(id1,id0,1,56).
dist(id0,id2,1,112).
dist(id2,id0,1,112).
dist(id1,id2,1,99).
dist(id2,id1,1,99).
}).



#pos(p_1645@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(active(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,56).
dist(id1,id0,1,56).
dist(id0,id2,1,114).
dist(id2,id0,1,114).
dist(id1,id2,1,102).
dist(id2,id1,1,102).
}).



#pos(p_9329@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,306).
dist(id1,id0,1,306).
}).



#pos(p_9330@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,305).
dist(id1,id0,1,305).
}).



#pos(p_9331@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,305).
dist(id1,id0,1,305).
}).



#pos(p_9332@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,305).
dist(id1,id0,1,305).
}).



#pos(p_9333@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,305).
dist(id1,id0,1,305).
}).



#pos(p_9334@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,305).
dist(id1,id0,1,305).
}).



#pos(p_9335@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,305).
dist(id1,id0,1,305).
}).



#pos(p_9336@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,305).
dist(id1,id0,1,305).
}).



#pos(p_9337@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,305).
dist(id1,id0,1,305).
}).



#pos(p_9338@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,305).
dist(id1,id0,1,305).
}).



#pos(p_9339@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,305).
dist(id1,id0,1,305).
}).



#pos(p_9340@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,306).
dist(id1,id0,1,306).
}).



#pos(p_9341@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,306).
dist(id1,id0,1,306).
}).



#pos(p_9342@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,306).
dist(id1,id0,1,306).
}).



#pos(p_9343@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,306).
dist(id1,id0,1,306).
}).



#pos(p_9344@1, {}, {}, {
person(id0).
person(id1).

happensAt(disappear(id0),1).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,306).
dist(id1,id0,1,306).
}).



#pos(p_9345@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9346@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9347@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9348@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9349@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9350@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9351@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9352@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9353@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19342@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19343@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19344@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19345@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19346@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19347@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19348@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19349@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19350@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19351@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19352@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19353@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19354@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19355@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19356@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19357@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19358@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19359@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19360@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19361@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19362@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19363@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19364@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19365@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_19366@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17401@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17402@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17403@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17404@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17405@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17406@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17407@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17408@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17409@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17410@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17411@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17412@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17413@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17414@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17415@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17416@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17417@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17418@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17419@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17420@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17421@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17422@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17423@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17424@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17425@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8579@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8580@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8581@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8582@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8583@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8584@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8585@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8586@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8587@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8588@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8589@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8590@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8591@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8592@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8593@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8594@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8595@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8596@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8597@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8598@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8599@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8600@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8601@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8602@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_8603@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_3584@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,230).
dist(id1,id0,1,230).
}).



#pos(p_3585@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,230).
dist(id1,id0,1,230).
}).



#pos(p_3586@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,232).
dist(id1,id0,1,232).
}).



#pos(p_3587@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,232).
dist(id1,id0,1,232).
}).



#pos(p_3588@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,233).
dist(id1,id0,1,233).
}).



#pos(p_3589@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,235).
dist(id1,id0,1,235).
}).



#pos(p_3590@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,236).
dist(id1,id0,1,236).
}).



#pos(p_3591@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,236).
dist(id1,id0,1,236).
}).



#pos(p_3592@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,236).
dist(id1,id0,1,236).
}).



#pos(p_3593@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,235).
dist(id1,id0,1,235).
}).



#pos(p_3594@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,236).
dist(id1,id0,1,236).
}).



#pos(p_3595@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,237).
dist(id1,id0,1,237).
}).



#pos(p_3596@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,237).
dist(id1,id0,1,237).
}).



#pos(p_3597@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,238).
dist(id1,id0,1,238).
}).



#pos(p_3598@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,238).
dist(id1,id0,1,238).
}).



#pos(p_3599@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,238).
dist(id1,id0,1,238).
}).



#pos(p_3600@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,239).
dist(id1,id0,1,239).
}).



#pos(p_3601@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,240).
dist(id1,id0,1,240).
}).



#pos(p_3602@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,241).
dist(id1,id0,1,241).
}).



#pos(p_3603@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,241).
dist(id1,id0,1,241).
}).



#pos(p_3604@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,241).
dist(id1,id0,1,241).
}).



#pos(p_3605@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,241).
dist(id1,id0,1,241).
}).



#pos(p_3606@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,240).
dist(id1,id0,1,240).
}).



#pos(p_3607@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,240).
dist(id1,id0,1,240).
}).



#pos(p_3608@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,239).
dist(id1,id0,1,239).
}).



#pos(p_14591@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14592@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14593@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14594@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14595@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14596@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14597@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14598@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14599@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14600@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14601@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14602@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14603@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14604@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14605@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14606@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14607@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14608@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14609@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14610@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14611@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14612@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14613@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14614@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14615@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17639@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,92).
dist(id1,id0,1,92).
}).



#pos(p_17640@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,90).
dist(id1,id0,1,90).
}).



#pos(p_17641@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,88).
dist(id1,id0,1,88).
}).



#pos(p_17642@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
}).



#pos(p_17643@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
}).



#pos(p_17644@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,79).
dist(id1,id0,1,79).
}).



#pos(p_17645@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,76).
dist(id1,id0,1,76).
}).



#pos(p_17646@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,75).
dist(id1,id0,1,75).
}).



#pos(p_17647@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,72).
dist(id1,id0,1,72).
}).



#pos(p_17648@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,72).
dist(id1,id0,1,72).
}).



#pos(p_17649@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,66).
dist(id1,id0,1,66).
}).



#pos(p_17650@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,63).
dist(id1,id0,1,63).
}).



#pos(p_17651@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,62).
dist(id1,id0,1,62).
}).



#pos(p_17652@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,60).
dist(id1,id0,1,60).
}).



#pos(p_17653@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,54).
dist(id1,id0,1,54).
}).



#pos(p_17654@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,51).
dist(id1,id0,1,51).
}).



#pos(p_17655@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,46).
dist(id1,id0,1,46).
}).



#pos(p_17656@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,44).
dist(id1,id0,1,44).
}).



#pos(p_17657@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,41).
dist(id1,id0,1,41).
}).



#pos(p_17658@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,39).
dist(id1,id0,1,39).
}).



#pos(p_17659@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,39).
dist(id1,id0,1,39).
}).



#pos(p_17660@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_17661@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,35).
dist(id1,id0,1,35).
}).



#pos(p_17662@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
}).



#pos(p_17663@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
}).



#pos(p_23634@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,209).
dist(id1,id0,1,209).
dist(id0,id2,1,158).
dist(id2,id0,1,158).
dist(id1,id2,1,59).
dist(id2,id1,1,59).
}).



#pos(p_23635@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(appear(id3),1).
happensAt(inactive(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,209).
dist(id1,id0,1,209).
dist(id0,id2,1,158).
dist(id2,id0,1,158).
dist(id1,id2,1,58).
dist(id2,id1,1,58).
dist(id0,id3,1,43).
dist(id3,id0,1,43).
dist(id1,id3,1,180).
dist(id3,id1,1,180).
dist(id2,id3,1,135).
dist(id3,id2,1,135).
}).



#pos(p_23636@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,209).
dist(id1,id0,1,209).
dist(id0,id2,1,158).
dist(id2,id0,1,158).
dist(id1,id2,1,58).
dist(id2,id1,1,58).
dist(id0,id3,1,43).
dist(id3,id0,1,43).
dist(id1,id3,1,180).
dist(id3,id1,1,180).
dist(id2,id3,1,135).
dist(id3,id2,1,135).
}).



#pos(p_23637@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,209).
dist(id1,id0,1,209).
dist(id0,id2,1,160).
dist(id2,id0,1,160).
dist(id1,id2,1,56).
dist(id2,id1,1,56).
dist(id0,id3,1,43).
dist(id3,id0,1,43).
dist(id1,id3,1,180).
dist(id3,id1,1,180).
dist(id2,id3,1,137).
dist(id3,id2,1,137).
}).



#pos(p_23638@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,209).
dist(id1,id0,1,209).
dist(id0,id2,1,160).
dist(id2,id0,1,160).
dist(id1,id2,1,56).
dist(id2,id1,1,56).
dist(id0,id3,1,43).
dist(id3,id0,1,43).
dist(id1,id3,1,180).
dist(id3,id1,1,180).
dist(id2,id3,1,137).
dist(id3,id2,1,137).
}).



#pos(p_23639@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,220).
dist(id1,id0,1,220).
dist(id0,id2,1,163).
dist(id2,id0,1,163).
dist(id1,id2,1,63).
dist(id2,id1,1,63).
dist(id0,id3,1,43).
dist(id3,id0,1,43).
dist(id1,id3,1,192).
dist(id3,id1,1,192).
dist(id2,id3,1,141).
dist(id3,id2,1,141).
}).



#pos(p_23640@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,220).
dist(id1,id0,1,220).
dist(id0,id2,1,163).
dist(id2,id0,1,163).
dist(id1,id2,1,63).
dist(id2,id1,1,63).
dist(id0,id3,1,43).
dist(id3,id0,1,43).
dist(id1,id3,1,192).
dist(id3,id1,1,192).
dist(id2,id3,1,141).
dist(id3,id2,1,141).
}).



#pos(p_23641@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,220).
dist(id1,id0,1,220).
dist(id0,id2,1,163).
dist(id2,id0,1,163).
dist(id1,id2,1,63).
dist(id2,id1,1,63).
dist(id0,id3,1,43).
dist(id3,id0,1,43).
dist(id1,id3,1,192).
dist(id3,id1,1,192).
dist(id2,id3,1,141).
dist(id3,id2,1,141).
}).



#pos(p_23642@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,220).
dist(id1,id0,1,220).
dist(id0,id2,1,163).
dist(id2,id0,1,163).
dist(id1,id2,1,62).
dist(id2,id1,1,62).
dist(id0,id3,1,43).
dist(id3,id0,1,43).
dist(id1,id3,1,192).
dist(id3,id1,1,192).
dist(id2,id3,1,140).
dist(id3,id2,1,140).
}).



#pos(p_23643@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,220).
dist(id1,id0,1,220).
dist(id0,id2,1,160).
dist(id2,id0,1,160).
dist(id1,id2,1,65).
dist(id2,id1,1,65).
dist(id0,id3,1,41).
dist(id3,id0,1,41).
dist(id1,id3,1,193).
dist(id3,id1,1,193).
dist(id2,id3,1,138).
dist(id3,id2,1,138).
}).



#pos(p_23644@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,219).
dist(id1,id0,1,219).
dist(id0,id2,1,158).
dist(id2,id0,1,158).
dist(id1,id2,1,66).
dist(id2,id1,1,66).
dist(id0,id3,1,41).
dist(id3,id0,1,41).
dist(id1,id3,1,192).
dist(id3,id1,1,192).
dist(id2,id3,1,136).
dist(id3,id2,1,136).
}).



#pos(p_23645@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,219).
dist(id1,id0,1,219).
dist(id0,id2,1,153).
dist(id2,id0,1,153).
dist(id1,id2,1,70).
dist(id2,id1,1,70).
dist(id0,id3,1,39).
dist(id3,id0,1,39).
dist(id1,id3,1,194).
dist(id3,id1,1,194).
dist(id2,id3,1,133).
dist(id3,id2,1,133).
}).



#pos(p_23646@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,219).
dist(id1,id0,1,219).
dist(id0,id2,1,151).
dist(id2,id0,1,151).
dist(id1,id2,1,72).
dist(id2,id1,1,72).
dist(id0,id3,1,38).
dist(id3,id0,1,38).
dist(id1,id3,1,195).
dist(id3,id1,1,195).
dist(id2,id3,1,132).
dist(id3,id2,1,132).
}).



#pos(p_23647@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,217).
dist(id1,id0,1,217).
dist(id0,id2,1,146).
dist(id2,id0,1,146).
dist(id1,id2,1,74).
dist(id2,id1,1,74).
dist(id0,id3,1,37).
dist(id3,id0,1,37).
dist(id1,id3,1,193).
dist(id3,id1,1,193).
dist(id2,id3,1,126).
dist(id3,id2,1,126).
}).



#pos(p_23648@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,217).
dist(id1,id0,1,217).
dist(id0,id2,1,145).
dist(id2,id0,1,145).
dist(id1,id2,1,75).
dist(id2,id1,1,75).
dist(id0,id3,1,37).
dist(id3,id0,1,37).
dist(id1,id3,1,193).
dist(id3,id1,1,193).
dist(id2,id3,1,124).
dist(id3,id2,1,124).
}).



#pos(p_23649@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,142).
dist(id2,id0,1,142).
dist(id1,id2,1,76).
dist(id2,id1,1,76).
dist(id0,id3,1,37).
dist(id3,id0,1,37).
dist(id1,id3,1,192).
dist(id3,id1,1,192).
dist(id2,id3,1,121).
dist(id3,id2,1,121).
}).



#pos(p_23650@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,139).
dist(id2,id0,1,139).
dist(id1,id2,1,79).
dist(id2,id1,1,79).
dist(id0,id3,1,34).
dist(id3,id0,1,34).
dist(id1,id3,1,192).
dist(id3,id1,1,192).
dist(id2,id3,1,117).
dist(id3,id2,1,117).
}).



#pos(p_23651@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,214).
dist(id1,id0,1,214).
dist(id0,id2,1,139).
dist(id2,id0,1,139).
dist(id1,id2,1,77).
dist(id2,id1,1,77).
dist(id0,id3,1,34).
dist(id3,id0,1,34).
dist(id1,id3,1,190).
dist(id3,id1,1,190).
dist(id2,id3,1,117).
dist(id3,id2,1,117).
}).



#pos(p_23652@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,213).
dist(id1,id0,1,213).
dist(id0,id2,1,139).
dist(id2,id0,1,139).
dist(id1,id2,1,74).
dist(id2,id1,1,74).
dist(id0,id3,1,34).
dist(id3,id0,1,34).
dist(id1,id3,1,189).
dist(id3,id1,1,189).
dist(id2,id3,1,116).
dist(id3,id2,1,116).
}).



#pos(p_23653@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,211).
dist(id1,id0,1,211).
dist(id0,id2,1,132).
dist(id2,id0,1,132).
dist(id1,id2,1,79).
dist(id2,id1,1,79).
dist(id0,id3,1,33).
dist(id3,id0,1,33).
dist(id1,id3,1,187).
dist(id3,id1,1,187).
dist(id2,id3,1,108).
dist(id3,id2,1,108).
}).



#pos(p_23654@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,210).
dist(id1,id0,1,210).
dist(id0,id2,1,130).
dist(id2,id0,1,130).
dist(id1,id2,1,80).
dist(id2,id1,1,80).
dist(id0,id3,1,33).
dist(id3,id0,1,33).
dist(id1,id3,1,186).
dist(id3,id1,1,186).
dist(id2,id3,1,106).
dist(id3,id2,1,106).
}).



#pos(p_23655@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,210).
dist(id1,id0,1,210).
dist(id0,id2,1,128).
dist(id2,id0,1,128).
dist(id1,id2,1,82).
dist(id2,id1,1,82).
dist(id0,id3,1,33).
dist(id3,id0,1,33).
dist(id1,id3,1,186).
dist(id3,id1,1,186).
dist(id2,id3,1,104).
dist(id3,id2,1,104).
}).



#pos(p_23656@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,218).
dist(id1,id0,1,218).
dist(id0,id2,1,135).
dist(id2,id0,1,135).
dist(id1,id2,1,83).
dist(id2,id1,1,83).
dist(id0,id3,1,41).
dist(id3,id0,1,41).
dist(id1,id3,1,186).
dist(id3,id1,1,186).
dist(id2,id3,1,103).
dist(id3,id2,1,103).
}).



#pos(p_23657@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,132).
dist(id2,id0,1,132).
dist(id1,id2,1,84).
dist(id2,id1,1,84).
dist(id0,id3,1,41).
dist(id3,id0,1,41).
dist(id1,id3,1,184).
dist(id3,id1,1,184).
dist(id2,id3,1,101).
dist(id3,id2,1,101).
}).



#pos(p_23658@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,130).
dist(id2,id0,1,130).
dist(id1,id2,1,86).
dist(id2,id1,1,86).
dist(id0,id3,1,41).
dist(id3,id0,1,41).
dist(id1,id3,1,184).
dist(id3,id1,1,184).
dist(id2,id3,1,99).
dist(id3,id2,1,99).
}).



#pos(p_7400@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7401@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7402@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7403@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7404@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7405@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7406@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7407@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7408@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7409@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7410@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7411@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7412@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7413@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7414@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7415@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7416@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7417@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7418@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7419@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7420@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7421@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7422@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7423@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7424@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1882@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1883@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1884@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1885@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1886@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1887@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1888@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1889@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1890@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1891@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1892@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1893@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1894@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1895@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1896@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1897@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1898@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1899@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1900@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1901@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1902@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1903@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1904@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1905@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1906@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14966@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14967@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14968@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14969@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14970@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14971@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14972@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14973@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14974@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14975@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14976@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14977@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14978@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14979@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14980@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14981@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14982@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14983@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14984@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14985@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14986@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14987@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14988@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14989@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14990@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).




#pos(p_16851@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,28).
dist(id1,id0,1,28).
}).



#pos(p_16852@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,28).
dist(id1,id0,1,28).
}).



#pos(p_16853@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,28).
dist(id1,id0,1,28).
}).



#pos(p_16854@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,29).
dist(id1,id0,1,29).
}).



#pos(p_16855@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,30).
dist(id1,id0,1,30).
}).



#pos(p_16856@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_16857@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_16858@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
}).



#pos(p_16859@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,34).
dist(id1,id0,1,34).
}).



#pos(p_16860@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,34).
dist(id1,id0,1,34).
}).



#pos(p_16861@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,36).
dist(id1,id0,1,36).
}).



#pos(p_16862@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
}).



#pos(p_16863@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
}).



#pos(p_16864@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
}).



#pos(p_16865@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
}).



#pos(p_16866@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,38).
dist(id1,id0,1,38).
}).



#pos(p_16867@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,39).
dist(id1,id0,1,39).
}).



#pos(p_16868@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,39).
dist(id1,id0,1,39).
}).



#pos(p_16869@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,39).
dist(id1,id0,1,39).
}).



#pos(p_16870@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,39).
dist(id1,id0,1,39).
}).



#pos(p_16871@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,39).
dist(id1,id0,1,39).
}).



#pos(p_16872@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,40).
dist(id1,id0,1,40).
}).



#pos(p_16873@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,40).
dist(id1,id0,1,40).
}).



#pos(p_16874@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,40).
dist(id1,id0,1,40).
}).



#pos(p_16875@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,41).
dist(id1,id0,1,41).
}).



#pos(p_23709@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(running(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,28).
dist(id2,id0,1,28).
dist(id1,id2,1,195).
dist(id2,id1,1,195).
dist(id0,id3,1,35).
dist(id3,id0,1,35).
dist(id1,id3,1,182).
dist(id3,id1,1,182).
dist(id2,id3,1,30).
dist(id3,id2,1,30).
}).



#pos(p_23710@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(running(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,27).
dist(id2,id0,1,27).
dist(id1,id2,1,196).
dist(id2,id1,1,196).
dist(id0,id3,1,35).
dist(id3,id0,1,35).
dist(id1,id3,1,182).
dist(id3,id1,1,182).
dist(id2,id3,1,32).
dist(id3,id2,1,32).
}).



#pos(p_23711@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(running(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,26).
dist(id2,id0,1,26).
dist(id1,id2,1,198).
dist(id2,id1,1,198).
dist(id0,id3,1,35).
dist(id3,id0,1,35).
dist(id1,id3,1,182).
dist(id3,id1,1,182).
dist(id2,id3,1,34).
dist(id3,id2,1,34).
}).



#pos(p_23712@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(running(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,24).
dist(id2,id0,1,24).
dist(id1,id2,1,199).
dist(id2,id1,1,199).
dist(id0,id3,1,36).
dist(id3,id0,1,36).
dist(id1,id3,1,182).
dist(id3,id1,1,182).
dist(id2,id3,1,35).
dist(id3,id2,1,35).
}).



#pos(p_23713@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(running(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,24).
dist(id2,id0,1,24).
dist(id1,id2,1,200).
dist(id2,id1,1,200).
dist(id0,id3,1,36).
dist(id3,id0,1,36).
dist(id1,id3,1,183).
dist(id3,id1,1,183).
dist(id2,id3,1,36).
dist(id3,id2,1,36).
}).



#pos(p_23714@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(running(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,24).
dist(id2,id0,1,24).
dist(id1,id2,1,200).
dist(id2,id1,1,200).
dist(id0,id3,1,36).
dist(id3,id0,1,36).
dist(id1,id3,1,183).
dist(id3,id1,1,183).
dist(id2,id3,1,36).
dist(id3,id2,1,36).
}).



#pos(p_23715@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(running(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,22).
dist(id2,id0,1,22).
dist(id1,id2,1,202).
dist(id2,id1,1,202).
dist(id0,id3,1,36).
dist(id3,id0,1,36).
dist(id1,id3,1,183).
dist(id3,id1,1,183).
dist(id2,id3,1,36).
dist(id3,id2,1,36).
}).



#pos(p_23716@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(running(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,19).
dist(id2,id0,1,19).
dist(id1,id2,1,202).
dist(id2,id1,1,202).
dist(id0,id3,1,36).
dist(id3,id0,1,36).
dist(id1,id3,1,183).
dist(id3,id1,1,183).
dist(id2,id3,1,34).
dist(id3,id2,1,34).
}).



#pos(p_23717@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(running(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,19).
dist(id2,id0,1,19).
dist(id1,id2,1,202).
dist(id2,id1,1,202).
dist(id0,id3,1,36).
dist(id3,id0,1,36).
dist(id1,id3,1,183).
dist(id3,id1,1,183).
dist(id2,id3,1,34).
dist(id3,id2,1,34).
}).



#pos(p_23718@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,19).
dist(id2,id0,1,19).
dist(id1,id2,1,202).
dist(id2,id1,1,202).
dist(id0,id3,1,36).
dist(id3,id0,1,36).
dist(id1,id3,1,183).
dist(id3,id1,1,183).
dist(id2,id3,1,33).
dist(id3,id2,1,33).
}).



#pos(p_23719@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,18).
dist(id2,id0,1,18).
dist(id1,id2,1,203).
dist(id2,id1,1,203).
dist(id0,id3,1,37).
dist(id3,id0,1,37).
dist(id1,id3,1,182).
dist(id3,id1,1,182).
dist(id2,id3,1,34).
dist(id3,id2,1,34).
}).



#pos(p_23720@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,17).
dist(id2,id0,1,17).
dist(id1,id2,1,204).
dist(id2,id1,1,204).
dist(id0,id3,1,39).
dist(id3,id0,1,39).
dist(id1,id3,1,181).
dist(id3,id1,1,181).
dist(id2,id3,1,36).
dist(id3,id2,1,36).
}).



#pos(p_23721@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,14).
dist(id2,id0,1,14).
dist(id1,id2,1,208).
dist(id2,id1,1,208).
dist(id0,id3,1,39).
dist(id3,id0,1,39).
dist(id1,id3,1,181).
dist(id3,id1,1,181).
dist(id2,id3,1,38).
dist(id3,id2,1,38).
}).



#pos(p_23722@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,13).
dist(id2,id0,1,13).
dist(id1,id2,1,209).
dist(id2,id1,1,209).
dist(id0,id3,1,41).
dist(id3,id0,1,41).
dist(id1,id3,1,179).
dist(id3,id1,1,179).
dist(id2,id3,1,41).
dist(id3,id2,1,41).
}).



#pos(p_23723@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,13).
dist(id2,id0,1,13).
dist(id1,id2,1,209).
dist(id2,id1,1,209).
dist(id0,id3,1,42).
dist(id3,id0,1,42).
dist(id1,id3,1,179).
dist(id3,id1,1,179).
dist(id2,id3,1,43).
dist(id3,id2,1,43).
}).



#pos(p_23724@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,12).
dist(id2,id0,1,12).
dist(id1,id2,1,211).
dist(id2,id1,1,211).
dist(id0,id3,1,42).
dist(id3,id0,1,42).
dist(id1,id3,1,179).
dist(id3,id1,1,179).
dist(id2,id3,1,45).
dist(id3,id2,1,45).
}).



#pos(p_23725@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,11).
dist(id2,id0,1,11).
dist(id1,id2,1,211).
dist(id2,id1,1,211).
dist(id0,id3,1,44).
dist(id3,id0,1,44).
dist(id1,id3,1,179).
dist(id3,id1,1,179).
dist(id2,id3,1,46).
dist(id3,id2,1,46).
}).



#pos(p_23726@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,10).
dist(id2,id0,1,10).
dist(id1,id2,1,211).
dist(id2,id1,1,211).
dist(id0,id3,1,44).
dist(id3,id0,1,44).
dist(id1,id3,1,179).
dist(id3,id1,1,179).
dist(id2,id3,1,46).
dist(id3,id2,1,46).
}).



#pos(p_23727@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,10).
dist(id2,id0,1,10).
dist(id1,id2,1,211).
dist(id2,id1,1,211).
dist(id0,id3,1,45).
dist(id3,id0,1,45).
dist(id1,id3,1,178).
dist(id3,id1,1,178).
dist(id2,id3,1,46).
dist(id3,id2,1,46).
}).



#pos(p_23728@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,9).
dist(id2,id0,1,9).
dist(id1,id2,1,212).
dist(id2,id1,1,212).
dist(id0,id3,1,45).
dist(id3,id0,1,45).
dist(id1,id3,1,178).
dist(id3,id1,1,178).
dist(id2,id3,1,47).
dist(id3,id2,1,47).
}).



#pos(p_23729@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,9).
dist(id2,id0,1,9).
dist(id1,id2,1,213).
dist(id2,id1,1,213).
dist(id0,id3,1,46).
dist(id3,id0,1,46).
dist(id1,id3,1,178).
dist(id3,id1,1,178).
dist(id2,id3,1,48).
dist(id3,id2,1,48).
}).



#pos(p_23730@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,8).
dist(id2,id0,1,8).
dist(id1,id2,1,213).
dist(id2,id1,1,213).
dist(id0,id3,1,46).
dist(id3,id0,1,46).
dist(id1,id3,1,178).
dist(id3,id1,1,178).
dist(id2,id3,1,48).
dist(id3,id2,1,48).
}).



#pos(p_23731@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,8).
dist(id2,id0,1,8).
dist(id1,id2,1,213).
dist(id2,id1,1,213).
dist(id0,id3,1,46).
dist(id3,id0,1,46).
dist(id1,id3,1,178).
dist(id3,id1,1,178).
dist(id2,id3,1,48).
dist(id3,id2,1,48).
}).



#pos(p_23732@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,8).
dist(id2,id0,1,8).
dist(id1,id2,1,213).
dist(id2,id1,1,213).
dist(id0,id3,1,46).
dist(id3,id0,1,46).
dist(id1,id3,1,178).
dist(id3,id1,1,178).
dist(id2,id3,1,48).
dist(id3,id2,1,48).
}).



#pos(p_23733@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,216).
dist(id1,id0,1,216).
dist(id0,id2,1,7).
dist(id2,id0,1,7).
dist(id1,id2,1,213).
dist(id2,id1,1,213).
dist(id0,id3,1,46).
dist(id3,id0,1,46).
dist(id1,id3,1,178).
dist(id3,id1,1,178).
dist(id2,id3,1,48).
dist(id3,id2,1,48).
}).



#pos(p_4909@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4910@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4911@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4912@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4913@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4914@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4915@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4916@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4917@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4918@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4919@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4920@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4921@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4922@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4923@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4924@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4925@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4926@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4927@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4928@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4929@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4930@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4931@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4932@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4933@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18035@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18036@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18037@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18038@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18039@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18040@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18041@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18042@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18043@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18044@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18045@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18046@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18047@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18048@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18049@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18050@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18051@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18052@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18053@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18054@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18055@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18056@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18057@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18058@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).
happensAt(disappear(id0),1).

}).



#pos(p_75@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,179).
dist(id1,id0,1,179).
dist(id0,id2,1,186).
dist(id2,id0,1,186).
dist(id1,id2,1,7).
dist(id2,id1,1,7).
}).



#pos(p_76@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,179).
dist(id1,id0,1,179).
dist(id0,id2,1,186).
dist(id2,id0,1,186).
dist(id1,id2,1,7).
dist(id2,id1,1,7).
}).



#pos(p_77@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,179).
dist(id1,id0,1,179).
dist(id0,id2,1,186).
dist(id2,id0,1,186).
dist(id1,id2,1,7).
dist(id2,id1,1,7).
}).



#pos(p_78@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
dist(id0,id2,1,186).
dist(id2,id0,1,186).
dist(id1,id2,1,7).
dist(id2,id1,1,7).
}).



#pos(p_79@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
dist(id0,id2,1,185).
dist(id2,id0,1,185).
dist(id1,id2,1,7).
dist(id2,id1,1,7).
}).



#pos(p_80@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,178).
dist(id1,id0,1,178).
dist(id0,id2,1,183).
dist(id2,id0,1,183).
dist(id1,id2,1,7).
dist(id2,id1,1,7).
}).



#pos(p_81@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,178).
dist(id1,id0,1,178).
dist(id0,id2,1,182).
dist(id2,id0,1,182).
dist(id1,id2,1,7).
dist(id2,id1,1,7).
}).



#pos(p_82@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,177).
dist(id1,id0,1,177).
dist(id0,id2,1,181).
dist(id2,id0,1,181).
dist(id1,id2,1,7).
dist(id2,id1,1,7).
}).



#pos(p_83@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,177).
dist(id1,id0,1,177).
dist(id0,id2,1,180).
dist(id2,id0,1,180).
dist(id1,id2,1,7).
dist(id2,id1,1,7).
}).



#pos(p_84@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,174).
dist(id1,id0,1,174).
dist(id0,id2,1,178).
dist(id2,id0,1,178).
dist(id1,id2,1,7).
dist(id2,id1,1,7).
}).



#pos(p_85@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,172).
dist(id1,id0,1,172).
dist(id0,id2,1,177).
dist(id2,id0,1,177).
dist(id1,id2,1,8).
dist(id2,id1,1,8).
}).



#pos(p_86@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,172).
dist(id1,id0,1,172).
dist(id0,id2,1,176).
dist(id2,id0,1,176).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_87@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,172).
dist(id1,id0,1,172).
dist(id0,id2,1,176).
dist(id2,id0,1,176).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_88@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,172).
dist(id1,id0,1,172).
dist(id0,id2,1,176).
dist(id2,id0,1,176).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_89@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,172).
dist(id1,id0,1,172).
dist(id0,id2,1,176).
dist(id2,id0,1,176).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_90@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,172).
dist(id1,id0,1,172).
dist(id0,id2,1,175).
dist(id2,id0,1,175).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_91@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,171).
dist(id1,id0,1,171).
dist(id0,id2,1,174).
dist(id2,id0,1,174).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_92@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,171).
dist(id1,id0,1,171).
dist(id0,id2,1,173).
dist(id2,id0,1,173).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_93@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,171).
dist(id1,id0,1,171).
dist(id0,id2,1,173).
dist(id2,id0,1,173).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_94@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,171).
dist(id1,id0,1,171).
dist(id0,id2,1,173).
dist(id2,id0,1,173).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_95@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,171).
dist(id1,id0,1,171).
dist(id0,id2,1,173).
dist(id2,id0,1,173).
dist(id1,id2,1,9).
dist(id2,id1,1,9).
}).



#pos(p_96@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,171).
dist(id1,id0,1,171).
dist(id0,id2,1,173).
dist(id2,id0,1,173).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_97@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,172).
dist(id1,id0,1,172).
dist(id0,id2,1,173).
dist(id2,id0,1,173).
dist(id1,id2,1,10).
dist(id2,id1,1,10).
}).



#pos(p_98@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,172).
dist(id1,id0,1,172).
dist(id0,id2,1,171).
dist(id2,id0,1,171).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_99@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,173).
dist(id1,id0,1,173).
dist(id0,id2,1,172).
dist(id2,id0,1,172).
dist(id1,id2,1,11).
dist(id2,id1,1,11).
}).



#pos(p_11097@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11098@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11099@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11100@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11101@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11102@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11103@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11104@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11105@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11106@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11107@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11108@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11109@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11110@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11111@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11112@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11113@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11114@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11115@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11116@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11117@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11118@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11119@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11120@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_11121@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_16536@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).
happensAt(appear(id0),1).

}).



#pos(p_16537@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_16538@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_16539@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_16540@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_16541@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_21945@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
}).



#pos(p_21946@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
}).



#pos(p_21947@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
}).



#pos(p_21948@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
}).



#pos(p_21949@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
}).



#pos(p_21950@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
}).



#pos(p_21951@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
}).



#pos(p_21952@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,181).
dist(id1,id0,1,181).
}).



#pos(p_21953@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
}).



#pos(p_21954@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,179).
dist(id1,id0,1,179).
}).



#pos(p_21955@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,178).
dist(id1,id0,1,178).
}).



#pos(p_21956@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,177).
dist(id1,id0,1,177).
}).



#pos(p_21957@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(appear(id2),1).
happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,178).
dist(id1,id0,1,178).
dist(id0,id2,1,250).
dist(id2,id0,1,250).
dist(id1,id2,1,112).
dist(id2,id1,1,112).
}).



#pos(p_21958@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,177).
dist(id1,id0,1,177).
dist(id0,id2,1,250).
dist(id2,id0,1,250).
dist(id1,id2,1,114).
dist(id2,id1,1,114).
}).



#pos(p_21959@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,176).
dist(id1,id0,1,176).
dist(id0,id2,1,250).
dist(id2,id0,1,250).
dist(id1,id2,1,114).
dist(id2,id1,1,114).
}).



#pos(p_21960@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,176).
dist(id1,id0,1,176).
dist(id0,id2,1,250).
dist(id2,id0,1,250).
dist(id1,id2,1,114).
dist(id2,id1,1,114).
}).



#pos(p_21961@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,176).
dist(id1,id0,1,176).
dist(id0,id2,1,250).
dist(id2,id0,1,250).
dist(id1,id2,1,112).
dist(id2,id1,1,112).
}).



#pos(p_21962@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,176).
dist(id1,id0,1,176).
dist(id0,id2,1,250).
dist(id2,id0,1,250).
dist(id1,id2,1,112).
dist(id2,id1,1,112).
}).



#pos(p_21963@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,176).
dist(id1,id0,1,176).
dist(id0,id2,1,250).
dist(id2,id0,1,250).
dist(id1,id2,1,111).
dist(id2,id1,1,111).
}).



#pos(p_21964@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,176).
dist(id1,id0,1,176).
dist(id0,id2,1,250).
dist(id2,id0,1,250).
dist(id1,id2,1,111).
dist(id2,id1,1,111).
}).



#pos(p_21965@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,175).
dist(id1,id0,1,175).
dist(id0,id2,1,250).
dist(id2,id0,1,250).
dist(id1,id2,1,112).
dist(id2,id1,1,112).
}).



#pos(p_21966@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,174).
dist(id1,id0,1,174).
dist(id0,id2,1,251).
dist(id2,id0,1,251).
dist(id1,id2,1,113).
dist(id2,id1,1,113).
}).



#pos(p_21967@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,172).
dist(id1,id0,1,172).
dist(id0,id2,1,253).
dist(id2,id0,1,253).
dist(id1,id2,1,116).
dist(id2,id1,1,116).
}).



#pos(p_21968@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,171).
dist(id1,id0,1,171).
dist(id0,id2,1,253).
dist(id2,id0,1,253).
dist(id1,id2,1,115).
dist(id2,id1,1,115).
}).



#pos(p_21969@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,169).
dist(id1,id0,1,169).
dist(id0,id2,1,253).
dist(id2,id0,1,253).
dist(id1,id2,1,118).
dist(id2,id1,1,118).
}).




#pos(p_6370@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6371@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6372@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6373@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6374@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(appear(id1),1).
dist(id0,id1,1,157).
dist(id1,id0,1,157).
}).



#pos(p_6375@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,157).
dist(id1,id0,1,157).
}).



#pos(p_6376@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,157).
dist(id1,id0,1,157).
}).



#pos(p_6377@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,155).
dist(id1,id0,1,155).
}).



#pos(p_6378@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,153).
dist(id1,id0,1,153).
}).



#pos(p_6379@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,151).
dist(id1,id0,1,151).
}).



#pos(p_6380@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,149).
dist(id1,id0,1,149).
}).



#pos(p_6381@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,148).
dist(id1,id0,1,148).
}).



#pos(p_6382@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,146).
dist(id1,id0,1,146).
}).



#pos(p_6383@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,146).
dist(id1,id0,1,146).
}).



#pos(p_6384@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,144).
dist(id1,id0,1,144).
}).



#pos(p_6385@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,142).
dist(id1,id0,1,142).
}).



#pos(p_6386@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,141).
dist(id1,id0,1,141).
}).



#pos(p_6387@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,141).
dist(id1,id0,1,141).
}).



#pos(p_6388@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,141).
dist(id1,id0,1,141).
}).



#pos(p_6389@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,140).
dist(id1,id0,1,140).
}).



#pos(p_6390@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,139).
dist(id1,id0,1,139).
}).



#pos(p_6391@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,138).
dist(id1,id0,1,138).
}).



#pos(p_6392@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,136).
dist(id1,id0,1,136).
}).



#pos(p_6393@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,135).
dist(id1,id0,1,135).
}).



#pos(p_6394@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,135).
dist(id1,id0,1,135).
}).



#pos(p_7150@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7151@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7152@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7153@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7154@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7155@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7156@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7157@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7158@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7159@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7160@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7161@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7162@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7163@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7164@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7165@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7166@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7167@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7168@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7169@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7170@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7171@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7172@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7173@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7174@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_1957@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1958@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1959@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1960@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1961@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1962@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1963@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1964@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1965@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1966@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1967@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1968@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1969@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1970@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1971@1, {}, {}, {
person(id0).
person(id1).

happensAt(appear(id0),1).
happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,331).
dist(id1,id0,1,331).
}).



#pos(p_1972@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,331).
dist(id1,id0,1,331).
}).



#pos(p_1973@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,331).
dist(id1,id0,1,331).
}).



#pos(p_1974@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,329).
dist(id1,id0,1,329).
}).



#pos(p_1975@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,329).
dist(id1,id0,1,329).
}).



#pos(p_1976@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,329).
dist(id1,id0,1,329).
}).



#pos(p_1977@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,324).
dist(id1,id0,1,324).
}).



#pos(p_1978@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,324).
dist(id1,id0,1,324).
}).



#pos(p_1979@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,325).
dist(id1,id0,1,325).
}).



#pos(p_1980@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,324).
dist(id1,id0,1,324).
}).



#pos(p_1981@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,324).
dist(id1,id0,1,324).
}).



#pos(p_12638@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,58).
dist(id1,id0,1,58).
}).



#pos(p_12639@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,58).
dist(id1,id0,1,58).
}).



#pos(p_12640@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,57).
dist(id1,id0,1,57).
}).



#pos(p_12641@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,53).
dist(id1,id0,1,53).
}).



#pos(p_12642@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,54).
dist(id1,id0,1,54).
}).



#pos(p_12643@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,54).
dist(id1,id0,1,54).
}).



#pos(p_12644@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,56).
dist(id1,id0,1,56).
}).



#pos(p_12645@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,59).
dist(id1,id0,1,59).
}).



#pos(p_12646@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,59).
dist(id1,id0,1,59).
}).



#pos(p_12647@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,60).
dist(id1,id0,1,60).
}).



#pos(p_12648@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,60).
dist(id1,id0,1,60).
}).



#pos(p_12649@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,57).
dist(id1,id0,1,57).
}).



#pos(p_12650@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,57).
dist(id1,id0,1,57).
}).



#pos(p_12651@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,55).
dist(id1,id0,1,55).
}).



#pos(p_12652@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,51).
dist(id1,id0,1,51).
}).



#pos(p_12653@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,50).
dist(id1,id0,1,50).
}).



#pos(p_12654@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,50).
dist(id1,id0,1,50).
}).



#pos(p_12655@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,48).
dist(id1,id0,1,48).
}).



#pos(p_12656@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,47).
dist(id1,id0,1,47).
}).



#pos(p_12657@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,47).
dist(id1,id0,1,47).
}).



#pos(p_12658@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,45).
dist(id1,id0,1,45).
}).



#pos(p_12659@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,45).
dist(id1,id0,1,45).
}).



#pos(p_12660@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(disappear(id0),1).
dist(id0,id1,1,44).
dist(id1,id0,1,44).
}).



#pos(p_12661@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12662@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_3034@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,71).
dist(id1,id0,1,71).
}).



#pos(p_3035@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,71).
dist(id1,id0,1,71).
}).



#pos(p_3036@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,70).
dist(id1,id0,1,70).
}).



#pos(p_3037@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,70).
dist(id1,id0,1,70).
}).



#pos(p_3038@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,70).
dist(id1,id0,1,70).
}).



#pos(p_3039@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,70).
dist(id1,id0,1,70).
}).



#pos(p_3040@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,70).
dist(id1,id0,1,70).
}).



#pos(p_3041@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,70).
dist(id1,id0,1,70).
}).



#pos(p_3042@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,70).
dist(id1,id0,1,70).
}).



#pos(p_3043@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,70).
dist(id1,id0,1,70).
}).



#pos(p_3044@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,70).
dist(id1,id0,1,70).
}).



#pos(p_3045@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,70).
dist(id1,id0,1,70).
}).



#pos(p_3046@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,70).
dist(id1,id0,1,70).
}).



#pos(p_3047@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,70).
dist(id1,id0,1,70).
}).



#pos(p_3048@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,69).
dist(id1,id0,1,69).
}).



#pos(p_3049@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,69).
dist(id1,id0,1,69).
}).



#pos(p_3050@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,70).
dist(id1,id0,1,70).
}).



#pos(p_3051@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,69).
dist(id1,id0,1,69).
}).



#pos(p_3052@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,68).
dist(id1,id0,1,68).
}).



#pos(p_3053@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,68).
dist(id1,id0,1,68).
}).



#pos(p_3054@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,67).
dist(id1,id0,1,67).
}).



#pos(p_3055@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,67).
dist(id1,id0,1,67).
}).



#pos(p_3056@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,67).
dist(id1,id0,1,67).
}).



#pos(p_3057@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,68).
dist(id1,id0,1,68).
}).



#pos(p_3058@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,68).
dist(id1,id0,1,68).
}).



#pos(p_20895@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(running(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,74).
dist(id1,id0,1,74).
dist(id0,id2,1,126).
dist(id2,id0,1,126).
dist(id1,id2,1,118).
dist(id2,id1,1,118).
}).



#pos(p_20896@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(running(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,74).
dist(id1,id0,1,74).
dist(id0,id2,1,126).
dist(id2,id0,1,126).
dist(id1,id2,1,118).
dist(id2,id1,1,118).
}).



#pos(p_20897@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(running(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,74).
dist(id1,id0,1,74).
dist(id0,id2,1,125).
dist(id2,id0,1,125).
dist(id1,id2,1,117).
dist(id2,id1,1,117).
}).



#pos(p_20898@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(running(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,78).
dist(id1,id0,1,78).
dist(id0,id2,1,125).
dist(id2,id0,1,125).
dist(id1,id2,1,119).
dist(id2,id1,1,119).
}).



#pos(p_20899@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(running(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,78).
dist(id1,id0,1,78).
dist(id0,id2,1,125).
dist(id2,id0,1,125).
dist(id1,id2,1,120).
dist(id2,id1,1,120).
}).



#pos(p_20900@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(active(id0),1).
happensAt(running(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,76).
dist(id1,id0,1,76).
dist(id0,id2,1,124).
dist(id2,id0,1,124).
dist(id1,id2,1,121).
dist(id2,id1,1,121).
}).



#pos(p_20901@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(disappear(id1),1).
happensAt(active(id0),1).
happensAt(running(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,77).
dist(id1,id0,1,77).
dist(id0,id2,1,124).
dist(id2,id0,1,124).
dist(id1,id2,1,121).
dist(id2,id1,1,121).
}).



#pos(p_20902@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,122).
dist(id1,id0,1,122).
}).



#pos(p_20903@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,122).
dist(id1,id0,1,122).
}).



#pos(p_20904@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,121).
dist(id1,id0,1,121).
}).



#pos(p_20905@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,121).
dist(id1,id0,1,121).
}).



#pos(p_20906@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,121).
dist(id1,id0,1,121).
}).



#pos(p_20907@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,121).
dist(id1,id0,1,121).
}).



#pos(p_20908@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,121).
dist(id1,id0,1,121).
}).



#pos(p_20909@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,122).
dist(id1,id0,1,122).
}).



#pos(p_20910@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,122).
dist(id1,id0,1,122).
}).



#pos(p_20911@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,121).
dist(id1,id0,1,121).
}).



#pos(p_20912@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,121).
dist(id1,id0,1,121).
}).



#pos(p_20913@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,120).
dist(id1,id0,1,120).
}).



#pos(p_20914@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,119).
dist(id1,id0,1,119).
}).



#pos(p_20915@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,119).
dist(id1,id0,1,119).
}).



#pos(p_20916@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,119).
dist(id1,id0,1,119).
}).



#pos(p_20917@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,119).
dist(id1,id0,1,119).
}).



#pos(p_20918@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_20919@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_20770@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
}).



#pos(p_20771@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_20772@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
}).



#pos(p_20773@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,25).
dist(id1,id0,1,25).
}).



#pos(p_20774@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
}).



#pos(p_20775@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
}).



#pos(p_20776@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
}).



#pos(p_20777@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,25).
dist(id1,id0,1,25).
}).



#pos(p_20778@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,25).
dist(id1,id0,1,25).
}).



#pos(p_20779@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,25).
dist(id1,id0,1,25).
}).



#pos(p_20780@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,26).
dist(id1,id0,1,26).
}).



#pos(p_20781@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,26).
dist(id1,id0,1,26).
}).



#pos(p_20782@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,26).
dist(id1,id0,1,26).
}).



#pos(p_20783@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,26).
dist(id1,id0,1,26).
}).



#pos(p_20784@1, {}, {}, {
person(id0).
person(id1).

happensAt(abrupt(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,25).
dist(id1,id0,1,25).
}).



#pos(p_20785@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_20786@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,21).
dist(id1,id0,1,21).
}).



#pos(p_20787@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,21).
dist(id1,id0,1,21).
}).



#pos(p_20788@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,20).
dist(id1,id0,1,20).
}).



#pos(p_20789@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,21).
dist(id1,id0,1,21).
}).



#pos(p_20790@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
}).



#pos(p_20791@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_20792@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
}).



#pos(p_20793@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,25).
dist(id1,id0,1,25).
}).



#pos(p_20794@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(running(id1),1).
dist(id0,id1,1,25).
dist(id1,id0,1,25).
}).



#pos(p_4609@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4610@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4611@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4612@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4613@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4614@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4615@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4616@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4617@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4618@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4619@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4620@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4621@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4622@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4623@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4624@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4625@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4626@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4627@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4628@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4629@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4630@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4631@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4632@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4633@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17489@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17490@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17491@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17492@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17493@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17494@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17495@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17496@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17497@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17498@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17499@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17500@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17501@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17502@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17503@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17504@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17505@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17506@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17507@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17508@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17509@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17510@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17511@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17512@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_17513@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10222@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10223@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10224@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10225@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10226@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10227@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10228@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10229@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10230@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10231@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10232@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10233@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10234@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10235@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10236@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10237@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10238@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10239@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10240@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10241@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10242@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10243@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10244@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10245@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10246@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_21170@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,198).
dist(id1,id0,1,198).
}).



#pos(p_21171@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,197).
dist(id1,id0,1,197).
}).



#pos(p_21172@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,196).
dist(id1,id0,1,196).
}).



#pos(p_21173@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,192).
dist(id1,id0,1,192).
}).



#pos(p_21174@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,190).
dist(id1,id0,1,190).
}).



#pos(p_21175@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,187).
dist(id1,id0,1,187).
}).



#pos(p_21176@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,184).
dist(id1,id0,1,184).
}).



#pos(p_21177@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,181).
dist(id1,id0,1,181).
}).



#pos(p_21178@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,180).
dist(id1,id0,1,180).
}).



#pos(p_21179@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,177).
dist(id1,id0,1,177).
}).



#pos(p_21180@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,174).
dist(id1,id0,1,174).
}).



#pos(p_21181@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,171).
dist(id1,id0,1,171).
}).



#pos(p_21182@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,169).
dist(id1,id0,1,169).
}).



#pos(p_21183@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,170).
dist(id1,id0,1,170).
}).



#pos(p_21184@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,166).
dist(id1,id0,1,166).
}).



#pos(p_21185@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,164).
dist(id1,id0,1,164).
}).



#pos(p_21186@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,162).
dist(id1,id0,1,162).
}).



#pos(p_21187@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,157).
dist(id1,id0,1,157).
}).



#pos(p_21188@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,155).
dist(id1,id0,1,155).
}).



#pos(p_21189@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,153).
dist(id1,id0,1,153).
}).



#pos(p_21190@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,150).
dist(id1,id0,1,150).
}).



#pos(p_21191@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,150).
dist(id1,id0,1,150).
}).



#pos(p_21192@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,149).
dist(id1,id0,1,149).
}).



#pos(p_21193@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,146).
dist(id1,id0,1,146).
}).



#pos(p_21194@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,144).
dist(id1,id0,1,144).
}).



#pos(p_18625@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18626@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18627@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18628@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18629@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18630@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18631@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18632@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18633@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18634@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18635@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18636@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18637@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18638@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18639@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18640@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18641@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18642@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18643@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18644@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18645@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18646@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18647@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18648@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18649@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_15041@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15042@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15043@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15044@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15045@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15046@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15047@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15048@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15049@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15050@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15051@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15052@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15053@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15054@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15055@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15056@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15057@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15058@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15059@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15060@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15061@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15062@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15063@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15064@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_15065@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13291@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,34).
dist(id1,id0,1,34).
}).



#pos(p_13292@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,33).
dist(id1,id0,1,33).
}).



#pos(p_13293@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,32).
dist(id1,id0,1,32).
}).



#pos(p_13294@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_13295@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,31).
dist(id1,id0,1,31).
}).



#pos(p_13296@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,29).
dist(id1,id0,1,29).
}).



#pos(p_13297@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,27).
dist(id1,id0,1,27).
}).



#pos(p_13298@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,26).
dist(id1,id0,1,26).
}).



#pos(p_13299@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,25).
dist(id1,id0,1,25).
}).



#pos(p_13300@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,25).
dist(id1,id0,1,25).
}).



#pos(p_13301@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
}).



#pos(p_13302@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
}).



#pos(p_13303@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,23).
dist(id1,id0,1,23).
}).



#pos(p_13304@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_13305@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_13306@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_13307@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_13308@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_13309@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_13310@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_13311@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_13312@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_13313@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_13314@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_13315@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
}).



#pos(p_6870@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,120).
dist(id1,id0,1,120).
}).



#pos(p_6871@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,120).
dist(id1,id0,1,120).
}).



#pos(p_6872@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,120).
dist(id1,id0,1,120).
}).



#pos(p_6873@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,121).
dist(id1,id0,1,121).
}).



#pos(p_6874@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,122).
dist(id1,id0,1,122).
}).



#pos(p_6875@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,122).
dist(id1,id0,1,122).
}).



#pos(p_6876@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,127).
dist(id1,id0,1,127).
}).



#pos(p_6877@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,128).
dist(id1,id0,1,128).
}).



#pos(p_6878@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,133).
dist(id1,id0,1,133).
}).



#pos(p_6879@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,135).
dist(id1,id0,1,135).
}).



#pos(p_6880@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,135).
dist(id1,id0,1,135).
}).



#pos(p_6881@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,136).
dist(id1,id0,1,136).
}).



#pos(p_6882@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,137).
dist(id1,id0,1,137).
}).



#pos(p_6883@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
happensAt(disappear(id1),1).
dist(id0,id1,1,137).
dist(id1,id0,1,137).
}).



#pos(p_6884@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_6885@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_6886@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_6887@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_6888@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_6889@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_6890@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_6891@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_6892@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_6893@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_6894@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_19267@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,96).
dist(id1,id0,1,96).
}).



#pos(p_19268@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,96).
dist(id1,id0,1,96).
}).



#pos(p_19269@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,96).
dist(id1,id0,1,96).
}).



#pos(p_19270@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,97).
dist(id1,id0,1,97).
}).



#pos(p_19271@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,97).
dist(id1,id0,1,97).
}).



#pos(p_19272@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,98).
dist(id1,id0,1,98).
}).



#pos(p_19273@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,98).
dist(id1,id0,1,98).
}).



#pos(p_19274@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,99).
dist(id1,id0,1,99).
}).



#pos(p_19275@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,100).
dist(id1,id0,1,100).
}).



#pos(p_19276@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,101).
dist(id1,id0,1,101).
}).



#pos(p_19277@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,101).
dist(id1,id0,1,101).
}).



#pos(p_19278@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,101).
dist(id1,id0,1,101).
}).



#pos(p_19279@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,101).
dist(id1,id0,1,101).
}).



#pos(p_19280@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,101).
dist(id1,id0,1,101).
}).



#pos(p_19281@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,101).
dist(id1,id0,1,101).
}).



#pos(p_19282@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,101).
dist(id1,id0,1,101).
}).



#pos(p_19283@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,103).
dist(id1,id0,1,103).
}).



#pos(p_19284@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,103).
dist(id1,id0,1,103).
}).



#pos(p_19285@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,103).
dist(id1,id0,1,103).
}).



#pos(p_19286@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,103).
dist(id1,id0,1,103).
}).



#pos(p_19287@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,103).
dist(id1,id0,1,103).
}).



#pos(p_19288@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,103).
dist(id1,id0,1,103).
}).



#pos(p_19289@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,105).
dist(id1,id0,1,105).
}).



#pos(p_19290@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,106).
dist(id1,id0,1,106).
}).



#pos(p_19291@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,106).
dist(id1,id0,1,106).
}).



#pos(p_7650@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7651@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7652@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7653@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7654@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7655@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7656@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7657@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7658@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7659@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7660@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7661@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7662@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7663@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7664@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7665@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7666@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7667@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7668@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7669@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7670@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7671@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7672@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7673@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7674@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).




#pos(p_20318@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,147).
dist(id1,id0,1,147).
}).



#pos(p_20319@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,149).
dist(id1,id0,1,149).
}).



#pos(p_20320@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,152).
dist(id1,id0,1,152).
}).



#pos(p_20321@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,153).
dist(id1,id0,1,153).
}).



#pos(p_20322@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,156).
dist(id1,id0,1,156).
}).



#pos(p_20323@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,156).
dist(id1,id0,1,156).
}).



#pos(p_20324@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,157).
dist(id1,id0,1,157).
}).



#pos(p_20325@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,159).
dist(id1,id0,1,159).
}).



#pos(p_20326@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,162).
dist(id1,id0,1,162).
}).



#pos(p_20327@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,164).
dist(id1,id0,1,164).
}).



#pos(p_20328@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,167).
dist(id1,id0,1,167).
}).



#pos(p_20329@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,172).
dist(id1,id0,1,172).
}).



#pos(p_20330@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,175).
dist(id1,id0,1,175).
}).



#pos(p_20331@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,179).
dist(id1,id0,1,179).
}).



#pos(p_20332@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,181).
dist(id1,id0,1,181).
}).



#pos(p_20333@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,183).
dist(id1,id0,1,183).
}).



#pos(p_20334@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,183).
dist(id1,id0,1,183).
}).



#pos(p_20335@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,184).
dist(id1,id0,1,184).
}).



#pos(p_20336@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,186).
dist(id1,id0,1,186).
}).



#pos(p_20337@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,188).
dist(id1,id0,1,188).
}).



#pos(p_20338@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,190).
dist(id1,id0,1,190).
}).



#pos(p_20339@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,192).
dist(id1,id0,1,192).
}).



#pos(p_20340@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_20341@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,198).
dist(id1,id0,1,198).
}).



#pos(p_20342@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,200).
dist(id1,id0,1,200).
}).



#pos(p_14641@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,275).
dist(id1,id0,1,275).
}).



#pos(p_14642@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,279).
dist(id1,id0,1,279).
}).



#pos(p_14643@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,282).
dist(id1,id0,1,282).
}).



#pos(p_14644@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,285).
dist(id1,id0,1,285).
}).



#pos(p_14645@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,287).
dist(id1,id0,1,287).
}).



#pos(p_14646@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,289).
dist(id1,id0,1,289).
}).



#pos(p_14647@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,291).
dist(id1,id0,1,291).
}).



#pos(p_14648@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,293).
dist(id1,id0,1,293).
}).



#pos(p_14649@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,296).
dist(id1,id0,1,296).
}).



#pos(p_14650@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,300).
dist(id1,id0,1,300).
}).



#pos(p_14651@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,303).
dist(id1,id0,1,303).
}).



#pos(p_14652@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,305).
dist(id1,id0,1,305).
}).



#pos(p_14653@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,306).
dist(id1,id0,1,306).
}).



#pos(p_14654@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,307).
dist(id1,id0,1,307).
}).



#pos(p_14655@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,308).
dist(id1,id0,1,308).
}).



#pos(p_14656@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,310).
dist(id1,id0,1,310).
}).



#pos(p_14657@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,310).
dist(id1,id0,1,310).
}).



#pos(p_14658@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,307).
dist(id1,id0,1,307).
}).



#pos(p_14659@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,309).
dist(id1,id0,1,309).
}).



#pos(p_14660@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,315).
dist(id1,id0,1,315).
}).



#pos(p_14661@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,319).
dist(id1,id0,1,319).
}).



#pos(p_14662@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,322).
dist(id1,id0,1,322).
}).



#pos(p_14663@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,330).
dist(id1,id0,1,330).
}).



#pos(p_14664@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,334).
dist(id1,id0,1,334).
}).



#pos(p_14665@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(disappear(id0),1).
dist(id0,id1,1,336).
dist(id1,id0,1,336).
}).



#pos(p_8379@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8380@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8381@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8382@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8383@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8384@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8385@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8386@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8387@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8388@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8389@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8390@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8391@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8392@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8393@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8394@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8395@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8396@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8397@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8398@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8399@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8400@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8401@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8402@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8403@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14116@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14117@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14118@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14119@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14120@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14121@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14122@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14123@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14124@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14125@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14126@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14127@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14128@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14129@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14130@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14131@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14132@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14133@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14134@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14135@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14136@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14137@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14138@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14139@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_14140@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(appear(id0),1).
dist(id0,id1,1,139).
dist(id1,id0,1,139).
}).



#pos(p_11653@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11654@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11655@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11656@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11657@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11658@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11659@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11660@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11661@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11662@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11663@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11664@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11665@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11666@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11667@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11668@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11669@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11670@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11671@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11672@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11673@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11674@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11675@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11676@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11677@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_3709@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(appear(id0),1).
happensAt(appear(id1),1).
dist(id0,id1,1,308).
dist(id1,id0,1,308).
}).



#pos(p_3710@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,308).
dist(id1,id0,1,308).
}).



#pos(p_3711@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,309).
dist(id1,id0,1,309).
}).



#pos(p_3712@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,309).
dist(id1,id0,1,309).
}).



#pos(p_3713@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,309).
dist(id1,id0,1,309).
}).



#pos(p_3714@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,310).
dist(id1,id0,1,310).
}).



#pos(p_3715@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,311).
dist(id1,id0,1,311).
}).



#pos(p_3716@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,312).
dist(id1,id0,1,312).
}).



#pos(p_3717@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,312).
dist(id1,id0,1,312).
}).



#pos(p_3718@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,314).
dist(id1,id0,1,314).
}).



#pos(p_3719@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,314).
dist(id1,id0,1,314).
}).



#pos(p_3720@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,314).
dist(id1,id0,1,314).
}).



#pos(p_3721@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,314).
dist(id1,id0,1,314).
}).



#pos(p_3722@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,316).
dist(id1,id0,1,316).
}).



#pos(p_3723@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,314).
dist(id1,id0,1,314).
}).



#pos(p_3724@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,313).
dist(id1,id0,1,313).
}).



#pos(p_3725@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,314).
dist(id1,id0,1,314).
}).



#pos(p_3726@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,313).
dist(id1,id0,1,313).
}).



#pos(p_3727@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,302).
dist(id1,id0,1,302).
}).



#pos(p_3728@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,299).
dist(id1,id0,1,299).
}).



#pos(p_3729@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,299).
dist(id1,id0,1,299).
}).



#pos(p_3730@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,297).
dist(id1,id0,1,297).
}).



#pos(p_3731@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,295).
dist(id1,id0,1,295).
}).



#pos(p_3732@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,293).
dist(id1,id0,1,293).
}).



#pos(p_3733@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,292).
dist(id1,id0,1,292).
}).



#pos(p_4534@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_4535@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_4536@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_4537@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_4538@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_4539@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_4540@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_4541@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4542@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4543@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4544@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4545@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4546@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4547@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4548@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4549@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4550@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4551@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4552@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4553@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4554@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4555@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4556@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4557@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4558@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_13566@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,190).
dist(id1,id0,1,190).
}).



#pos(p_13567@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,190).
dist(id1,id0,1,190).
}).



#pos(p_13568@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,190).
dist(id1,id0,1,190).
}).



#pos(p_13569@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,191).
dist(id1,id0,1,191).
}).



#pos(p_13570@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,191).
dist(id1,id0,1,191).
}).



#pos(p_13571@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,192).
dist(id1,id0,1,192).
}).



#pos(p_13572@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,194).
dist(id1,id0,1,194).
}).



#pos(p_13573@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_13574@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,197).
dist(id1,id0,1,197).
}).



#pos(p_13575@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,200).
dist(id1,id0,1,200).
}).



#pos(p_13576@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,202).
dist(id1,id0,1,202).
}).



#pos(p_13577@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,204).
dist(id1,id0,1,204).
}).



#pos(p_13578@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(disappear(id1),1).
dist(id0,id1,1,206).
dist(id1,id0,1,206).
}).



#pos(p_13579@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13580@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13581@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13582@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13583@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13584@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13585@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13586@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13587@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13588@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13589@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13590@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8329@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8330@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8331@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8332@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8333@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8334@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8335@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8336@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8337@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8338@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8339@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8340@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8341@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8342@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8343@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8344@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8345@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8346@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8347@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8348@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8349@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8350@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8351@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8352@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_8353@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5978@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5979@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5980@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5981@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5982@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5983@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5984@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5985@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5986@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5987@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5988@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5989@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5990@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5991@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5992@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5993@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5994@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5995@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5996@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5997@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5998@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5999@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6000@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6001@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6002@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16066@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16067@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16068@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16069@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16070@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16071@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16072@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16073@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16074@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16075@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16076@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16077@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16078@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16079@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16080@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16081@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16082@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16083@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16084@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16085@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16086@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16087@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16088@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16089@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_16090@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_10822@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10823@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10824@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10825@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10826@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10827@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10828@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10829@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10830@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10831@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10832@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10833@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10834@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10835@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10836@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10837@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10838@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10839@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10840@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10841@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10842@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10843@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10844@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10845@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_10846@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_2659@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2660@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2661@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2662@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2663@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2664@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_2665@1, {}, {}, {
person(id0).

happensAt(disappear(id0),1).
happensAt(walking(id0),1).

}).



#pos(p_2666@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(appear(id0),1).
happensAt(appear(id1),1).
happensAt(appear(id2),1).
dist(id0,id1,1,84).
dist(id1,id0,1,84).
dist(id0,id2,1,224).
dist(id2,id0,1,224).
dist(id1,id2,1,140).
dist(id2,id1,1,140).
}).



#pos(p_2667@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,224).
dist(id2,id0,1,224).
dist(id1,id2,1,138).
dist(id2,id1,1,138).
}).



#pos(p_2668@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,86).
dist(id1,id0,1,86).
dist(id0,id2,1,222).
dist(id2,id0,1,222).
dist(id1,id2,1,136).
dist(id2,id1,1,136).
}).



#pos(p_2669@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,87).
dist(id1,id0,1,87).
dist(id0,id2,1,220).
dist(id2,id0,1,220).
dist(id1,id2,1,133).
dist(id2,id1,1,133).
}).



#pos(p_2670@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,219).
dist(id2,id0,1,219).
dist(id1,id2,1,133).
dist(id2,id1,1,133).
}).



#pos(p_2671@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,89).
dist(id1,id0,1,89).
dist(id0,id2,1,218).
dist(id2,id0,1,218).
dist(id1,id2,1,129).
dist(id2,id1,1,129).
}).



#pos(p_2672@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,89).
dist(id1,id0,1,89).
dist(id0,id2,1,216).
dist(id2,id0,1,216).
dist(id1,id2,1,126).
dist(id2,id1,1,126).
}).



#pos(p_2673@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,89).
dist(id1,id0,1,89).
dist(id0,id2,1,214).
dist(id2,id0,1,214).
dist(id1,id2,1,125).
dist(id2,id1,1,125).
}).



#pos(p_2674@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,90).
dist(id1,id0,1,90).
dist(id0,id2,1,211).
dist(id2,id0,1,211).
dist(id1,id2,1,121).
dist(id2,id1,1,121).
}).



#pos(p_2675@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,93).
dist(id1,id0,1,93).
dist(id0,id2,1,210).
dist(id2,id0,1,210).
dist(id1,id2,1,116).
dist(id2,id1,1,116).
}).



#pos(p_2676@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,92).
dist(id1,id0,1,92).
dist(id0,id2,1,206).
dist(id2,id0,1,206).
dist(id1,id2,1,113).
dist(id2,id1,1,113).
}).



#pos(p_2677@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,89).
dist(id1,id0,1,89).
dist(id0,id2,1,200).
dist(id2,id0,1,200).
dist(id1,id2,1,111).
dist(id2,id1,1,111).
}).



#pos(p_2678@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,87).
dist(id1,id0,1,87).
dist(id0,id2,1,197).
dist(id2,id0,1,197).
dist(id1,id2,1,109).
dist(id2,id1,1,109).
}).



#pos(p_2679@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
dist(id0,id2,1,192).
dist(id2,id0,1,192).
dist(id1,id2,1,107).
dist(id2,id1,1,107).
}).



#pos(p_2680@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,82).
dist(id1,id0,1,82).
dist(id0,id2,1,187).
dist(id2,id0,1,187).
dist(id1,id2,1,105).
dist(id2,id1,1,105).
}).



#pos(p_2681@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,80).
dist(id1,id0,1,80).
dist(id0,id2,1,184).
dist(id2,id0,1,184).
dist(id1,id2,1,104).
dist(id2,id1,1,104).
}).



#pos(p_2682@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,79).
dist(id1,id0,1,79).
dist(id0,id2,1,182).
dist(id2,id0,1,182).
dist(id1,id2,1,103).
dist(id2,id1,1,103).
}).



#pos(p_2683@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,80).
dist(id1,id0,1,80).
dist(id0,id2,1,181).
dist(id2,id0,1,181).
dist(id1,id2,1,101).
dist(id2,id1,1,101).
}).



#pos(p_9879@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9880@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9881@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9882@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9883@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9884@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9885@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9886@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9887@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9888@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9889@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9890@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9891@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9892@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9893@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9894@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9895@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9896@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9897@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9898@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_9899@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9900@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9901@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9902@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9903@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4384@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4385@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4386@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4387@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4388@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4389@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4390@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4391@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4392@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4393@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4394@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4395@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4396@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4397@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4398@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4399@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4400@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4401@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4402@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4403@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4404@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4405@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4406@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4407@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_4408@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14541@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14542@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14543@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14544@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14545@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14546@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14547@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14548@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_14549@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14550@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14551@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14552@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14553@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14554@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14555@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14556@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14557@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14558@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14559@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14560@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14561@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14562@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14563@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14564@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_14565@1, {}, {}, {
person(id0).

happensAt(active(id0),1).

}).



#pos(p_12729@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).
happensAt(appear(id0),1).

}).



#pos(p_12730@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12731@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12732@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12733@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12734@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12735@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12736@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12737@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12738@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12739@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_12740@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1786@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1787@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1788@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1789@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1790@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1791@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1792@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1793@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1794@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1795@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1796@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1797@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1798@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1799@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1800@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1801@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1802@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1803@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1804@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1805@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1806@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1807@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1808@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1809@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_1810@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13091@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13092@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13093@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13094@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13095@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13096@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13097@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13098@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13099@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13100@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13101@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13102@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13103@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13104@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13105@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13106@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13107@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13108@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13109@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13110@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13111@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13112@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13113@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13114@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_13115@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_15741@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,153).
dist(id1,id0,1,153).
}).



#pos(p_15742@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,153).
dist(id1,id0,1,153).
}).



#pos(p_15743@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,152).
dist(id1,id0,1,152).
}).



#pos(p_15744@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,151).
dist(id1,id0,1,151).
}).



#pos(p_15745@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,150).
dist(id1,id0,1,150).
}).



#pos(p_15746@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,149).
dist(id1,id0,1,149).
}).



#pos(p_15747@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,147).
dist(id1,id0,1,147).
}).



#pos(p_15748@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,145).
dist(id1,id0,1,145).
}).



#pos(p_15749@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,144).
dist(id1,id0,1,144).
}).



#pos(p_15750@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,142).
dist(id1,id0,1,142).
}).



#pos(p_15751@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,139).
dist(id1,id0,1,139).
}).



#pos(p_15752@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,136).
dist(id1,id0,1,136).
}).



#pos(p_15753@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,134).
dist(id1,id0,1,134).
}).



#pos(p_15754@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,133).
dist(id1,id0,1,133).
}).



#pos(p_15755@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,132).
dist(id1,id0,1,132).
}).



#pos(p_15756@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,132).
dist(id1,id0,1,132).
}).



#pos(p_15757@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,131).
dist(id1,id0,1,131).
}).



#pos(p_15758@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,131).
dist(id1,id0,1,131).
}).



#pos(p_15759@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,131).
dist(id1,id0,1,131).
}).



#pos(p_15760@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,131).
dist(id1,id0,1,131).
}).



#pos(p_15761@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,129).
dist(id1,id0,1,129).
}).



#pos(p_15762@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,127).
dist(id1,id0,1,127).
}).



#pos(p_15763@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,125).
dist(id1,id0,1,125).
}).



#pos(p_15764@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,122).
dist(id1,id0,1,122).
}).



#pos(p_15765@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,120).
dist(id1,id0,1,120).
}).



#pos(p_6295@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6296@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6297@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6298@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6299@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6300@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6301@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6302@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6303@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6304@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6305@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6306@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6307@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6308@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6309@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6310@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6311@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6312@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6313@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6314@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6315@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6316@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6317@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6318@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_6319@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_13466@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_13467@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_13468@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_13469@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_13470@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_13471@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,194).
dist(id1,id0,1,194).
}).



#pos(p_13472@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,194).
dist(id1,id0,1,194).
}).



#pos(p_13473@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,194).
dist(id1,id0,1,194).
}).



#pos(p_13474@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_13475@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_13476@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_13477@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_13478@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_13479@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_13480@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_13481@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_13482@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,194).
dist(id1,id0,1,194).
}).



#pos(p_13483@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_13484@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_13485@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_13486@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_13487@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_13488@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_13489@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_13490@1, {}, {}, {
person(id0).
person(id1).

happensAt(active(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,195).
dist(id1,id0,1,195).
}).



#pos(p_17910@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_17911@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,16).
dist(id1,id0,1,16).
}).



#pos(p_17912@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,16).
dist(id1,id0,1,16).
}).



#pos(p_17913@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,16).
dist(id1,id0,1,16).
}).



#pos(p_17914@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,17).
dist(id1,id0,1,17).
}).



#pos(p_17915@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,17).
dist(id1,id0,1,17).
}).



#pos(p_17916@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,18).
dist(id1,id0,1,18).
}).



#pos(p_17917@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,18).
dist(id1,id0,1,18).
}).



#pos(p_17918@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(appear(id0),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
dist(id0,id2,1,31).
dist(id2,id0,1,31).
dist(id1,id2,1,18).
dist(id2,id1,1,18).
}).



#pos(p_17919@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
dist(id0,id2,1,31).
dist(id2,id0,1,31).
dist(id1,id2,1,18).
dist(id2,id1,1,18).
}).



#pos(p_17920@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,22).
dist(id1,id0,1,22).
dist(id0,id2,1,31).
dist(id2,id0,1,31).
dist(id1,id2,1,18).
dist(id2,id1,1,18).
}).



#pos(p_17921@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
dist(id0,id2,1,32).
dist(id2,id0,1,32).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_17922@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
dist(id0,id2,1,32).
dist(id2,id0,1,32).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_17923@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
dist(id0,id2,1,32).
dist(id2,id0,1,32).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_17924@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
dist(id0,id2,1,32).
dist(id2,id0,1,32).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_17925@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
dist(id0,id2,1,32).
dist(id2,id0,1,32).
dist(id1,id2,1,20).
dist(id2,id1,1,20).
}).



#pos(p_17926@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
dist(id0,id2,1,35).
dist(id2,id0,1,35).
dist(id1,id2,1,22).
dist(id2,id1,1,22).
}).



#pos(p_17927@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,24).
dist(id1,id0,1,24).
dist(id0,id2,1,35).
dist(id2,id0,1,35).
dist(id1,id2,1,22).
dist(id2,id1,1,22).
}).



#pos(p_17928@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
happensAt(appear(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
dist(id0,id2,1,25).
dist(id2,id0,1,25).
dist(id1,id2,1,24).
dist(id2,id1,1,24).
dist(id0,id3,1,35).
dist(id3,id0,1,35).
dist(id1,id3,1,26).
dist(id3,id1,1,26).
dist(id2,id3,1,23).
dist(id3,id2,1,23).
}).



#pos(p_17929@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
dist(id0,id2,1,25).
dist(id2,id0,1,25).
dist(id1,id2,1,24).
dist(id2,id1,1,24).
dist(id0,id3,1,35).
dist(id3,id0,1,35).
dist(id1,id3,1,26).
dist(id3,id1,1,26).
dist(id2,id3,1,23).
dist(id3,id2,1,23).
}).



#pos(p_17930@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
dist(id0,id2,1,25).
dist(id2,id0,1,25).
dist(id1,id2,1,24).
dist(id2,id1,1,24).
dist(id0,id3,1,37).
dist(id3,id0,1,37).
dist(id1,id3,1,28).
dist(id3,id1,1,28).
dist(id2,id3,1,24).
dist(id3,id2,1,24).
}).



#pos(p_17931@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
dist(id0,id2,1,24).
dist(id2,id0,1,24).
dist(id1,id2,1,23).
dist(id2,id1,1,23).
dist(id0,id3,1,35).
dist(id3,id0,1,35).
dist(id1,id3,1,27).
dist(id3,id1,1,27).
dist(id2,id3,1,24).
dist(id3,id2,1,24).
}).



#pos(p_17932@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
dist(id0,id2,1,24).
dist(id2,id0,1,24).
dist(id1,id2,1,23).
dist(id2,id1,1,23).
dist(id0,id3,1,35).
dist(id3,id0,1,35).
dist(id1,id3,1,27).
dist(id3,id1,1,27).
dist(id2,id3,1,24).
dist(id3,id2,1,24).
}).



#pos(p_17933@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
dist(id0,id2,1,27).
dist(id2,id0,1,27).
dist(id1,id2,1,27).
dist(id2,id1,1,27).
dist(id0,id3,1,37).
dist(id3,id0,1,37).
dist(id1,id3,1,29).
dist(id3,id1,1,29).
dist(id2,id3,1,26).
dist(id3,id2,1,26).
}).



#pos(p_17934@1, {}, {}, {
person(id0).
person(id1).
person(id2).
person(id3).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
happensAt(walking(id3),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
dist(id0,id2,1,27).
dist(id2,id0,1,27).
dist(id1,id2,1,25).
dist(id2,id1,1,25).
dist(id0,id3,1,37).
dist(id3,id0,1,37).
dist(id1,id3,1,26).
dist(id3,id1,1,26).
dist(id2,id3,1,26).
dist(id3,id2,1,26).
}).



#pos(p_9179@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,135).
dist(id1,id0,1,135).
}).



#pos(p_9180@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,135).
dist(id1,id0,1,135).
}).



#pos(p_9181@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,135).
dist(id1,id0,1,135).
}).



#pos(p_9182@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,136).
dist(id1,id0,1,136).
}).



#pos(p_9183@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,136).
dist(id1,id0,1,136).
}).



#pos(p_9184@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,136).
dist(id1,id0,1,136).
}).



#pos(p_9185@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,136).
dist(id1,id0,1,136).
}).



#pos(p_9186@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,137).
dist(id1,id0,1,137).
}).



#pos(p_9187@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,136).
dist(id1,id0,1,136).
}).



#pos(p_9188@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,142).
dist(id1,id0,1,142).
}).



#pos(p_9189@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,141).
dist(id1,id0,1,141).
}).



#pos(p_9190@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,145).
dist(id1,id0,1,145).
}).



#pos(p_9191@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,145).
dist(id1,id0,1,145).
}).



#pos(p_9192@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,145).
dist(id1,id0,1,145).
}).



#pos(p_9193@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,145).
dist(id1,id0,1,145).
}).



#pos(p_9194@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,144).
dist(id1,id0,1,144).
}).



#pos(p_9195@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,143).
dist(id1,id0,1,143).
}).



#pos(p_9196@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,143).
dist(id1,id0,1,143).
}).



#pos(p_9197@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,143).
dist(id1,id0,1,143).
}).



#pos(p_9198@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,147).
dist(id1,id0,1,147).
}).



#pos(p_9199@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,146).
dist(id1,id0,1,146).
}).



#pos(p_9200@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,146).
dist(id1,id0,1,146).
}).



#pos(p_9201@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,146).
dist(id1,id0,1,146).
}).



#pos(p_9202@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,148).
dist(id1,id0,1,148).
}).



#pos(p_9203@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,148).
dist(id1,id0,1,148).
}).



#pos(p_5759@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5760@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5761@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5762@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5763@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5764@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5765@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5766@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5767@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5768@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5769@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5770@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5771@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5772@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5773@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5774@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5775@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5776@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5777@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5778@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5779@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5780@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5781@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5782@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5783@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18059@1, {}, {}, {
person(id0).



}).



#pos(p_18060@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18061@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18062@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18063@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18064@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18065@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18066@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18067@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18068@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18069@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18070@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18071@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18072@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18073@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18074@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18075@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18076@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18077@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18078@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18079@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18080@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18081@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18082@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18083@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_18450@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_18451@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18452@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18453@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_18454@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18455@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18456@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18457@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18458@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_18459@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_18460@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_18461@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_18462@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_18463@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_18464@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,13).
dist(id1,id0,1,13).
}).



#pos(p_18465@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,13).
dist(id1,id0,1,13).
}).



#pos(p_18466@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_18467@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_18468@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_18469@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_18470@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_18471@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_18472@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_18473@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,14).
dist(id1,id0,1,14).
}).



#pos(p_18474@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,13).
dist(id1,id0,1,13).
}).



#pos(p_22435@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,66).
dist(id1,id0,1,66).
}).



#pos(p_22436@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,65).
dist(id1,id0,1,65).
}).



#pos(p_22437@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,66).
dist(id1,id0,1,66).
}).



#pos(p_22438@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,66).
dist(id1,id0,1,66).
}).



#pos(p_22439@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,66).
dist(id1,id0,1,66).
}).



#pos(p_22440@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,67).
dist(id1,id0,1,67).
}).



#pos(p_22441@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,67).
dist(id1,id0,1,67).
}).



#pos(p_22442@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
dist(id0,id1,1,68).
dist(id1,id0,1,68).
}).



#pos(p_22443@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
happensAt(appear(id2),1).
dist(id0,id1,1,70).
dist(id1,id0,1,70).
dist(id0,id2,1,218).
dist(id2,id0,1,218).
dist(id1,id2,1,220).
dist(id2,id1,1,220).
}).



#pos(p_22444@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,69).
dist(id1,id0,1,69).
dist(id0,id2,1,218).
dist(id2,id0,1,218).
dist(id1,id2,1,219).
dist(id2,id1,1,219).
}).



#pos(p_22445@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,69).
dist(id1,id0,1,69).
dist(id0,id2,1,218).
dist(id2,id0,1,218).
dist(id1,id2,1,219).
dist(id2,id1,1,219).
}).



#pos(p_22446@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,69).
dist(id1,id0,1,69).
dist(id0,id2,1,219).
dist(id2,id0,1,219).
dist(id1,id2,1,219).
dist(id2,id1,1,219).
}).



#pos(p_22447@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,69).
dist(id1,id0,1,69).
dist(id0,id2,1,221).
dist(id2,id0,1,221).
dist(id1,id2,1,219).
dist(id2,id1,1,219).
}).



#pos(p_22448@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,69).
dist(id1,id0,1,69).
dist(id0,id2,1,221).
dist(id2,id0,1,221).
dist(id1,id2,1,219).
dist(id2,id1,1,219).
}).



#pos(p_22449@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,69).
dist(id1,id0,1,69).
dist(id0,id2,1,221).
dist(id2,id0,1,221).
dist(id1,id2,1,219).
dist(id2,id1,1,219).
}).



#pos(p_22450@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,69).
dist(id1,id0,1,69).
dist(id0,id2,1,221).
dist(id2,id0,1,221).
dist(id1,id2,1,219).
dist(id2,id1,1,219).
}).



#pos(p_22451@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,69).
dist(id1,id0,1,69).
dist(id0,id2,1,221).
dist(id2,id0,1,221).
dist(id1,id2,1,218).
dist(id2,id1,1,218).
}).



#pos(p_22452@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,69).
dist(id1,id0,1,69).
dist(id0,id2,1,221).
dist(id2,id0,1,221).
dist(id1,id2,1,218).
dist(id2,id1,1,218).
}).



#pos(p_22453@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,70).
dist(id1,id0,1,70).
dist(id0,id2,1,221).
dist(id2,id0,1,221).
dist(id1,id2,1,216).
dist(id2,id1,1,216).
}).



#pos(p_22454@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,69).
dist(id1,id0,1,69).
dist(id0,id2,1,222).
dist(id2,id0,1,222).
dist(id1,id2,1,216).
dist(id2,id1,1,216).
}).



#pos(p_22455@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,67).
dist(id1,id0,1,67).
dist(id0,id2,1,222).
dist(id2,id0,1,222).
dist(id1,id2,1,213).
dist(id2,id1,1,213).
}).



#pos(p_22456@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,67).
dist(id1,id0,1,67).
dist(id0,id2,1,222).
dist(id2,id0,1,222).
dist(id1,id2,1,214).
dist(id2,id1,1,214).
}).



#pos(p_22457@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,67).
dist(id1,id0,1,67).
dist(id0,id2,1,222).
dist(id2,id0,1,222).
dist(id1,id2,1,212).
dist(id2,id1,1,212).
}).



#pos(p_22458@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,67).
dist(id1,id0,1,67).
dist(id0,id2,1,219).
dist(id2,id0,1,219).
dist(id1,id2,1,208).
dist(id2,id1,1,208).
}).



#pos(p_22459@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(inactive(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,66).
dist(id1,id0,1,66).
dist(id0,id2,1,218).
dist(id2,id0,1,218).
dist(id1,id2,1,206).
dist(id2,id1,1,206).
}).



#pos(p_9129@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,107).
dist(id1,id0,1,107).
}).



#pos(p_9130@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,106).
dist(id1,id0,1,106).
}).



#pos(p_9131@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,107).
dist(id1,id0,1,107).
}).



#pos(p_9132@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,107).
dist(id1,id0,1,107).
}).



#pos(p_9133@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,109).
dist(id1,id0,1,109).
}).



#pos(p_9134@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,110).
dist(id1,id0,1,110).
}).



#pos(p_9135@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,110).
dist(id1,id0,1,110).
}).



#pos(p_9136@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,111).
dist(id1,id0,1,111).
}).



#pos(p_9137@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,113).
dist(id1,id0,1,113).
}).



#pos(p_9138@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,117).
dist(id1,id0,1,117).
}).



#pos(p_9139@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,117).
dist(id1,id0,1,117).
}).



#pos(p_9140@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,118).
dist(id1,id0,1,118).
}).



#pos(p_9141@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,119).
dist(id1,id0,1,119).
}).



#pos(p_9142@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,120).
dist(id1,id0,1,120).
}).



#pos(p_9143@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,120).
dist(id1,id0,1,120).
}).



#pos(p_9144@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,120).
dist(id1,id0,1,120).
}).



#pos(p_9145@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,121).
dist(id1,id0,1,121).
}).



#pos(p_9146@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,122).
dist(id1,id0,1,122).
}).



#pos(p_9147@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,122).
dist(id1,id0,1,122).
}).



#pos(p_9148@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,125).
dist(id1,id0,1,125).
}).



#pos(p_9149@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,125).
dist(id1,id0,1,125).
}).



#pos(p_9150@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,126).
dist(id1,id0,1,126).
}).



#pos(p_9151@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,126).
dist(id1,id0,1,126).
}).



#pos(p_9152@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,126).
dist(id1,id0,1,126).
}).



#pos(p_9153@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(active(id1),1).
dist(id0,id1,1,126).
dist(id1,id0,1,126).
}).



#pos(p_21745@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,149).
dist(id1,id0,1,149).
dist(id0,id2,1,167).
dist(id2,id0,1,167).
dist(id1,id2,1,32).
dist(id2,id1,1,32).
}).



#pos(p_21746@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,151).
dist(id1,id0,1,151).
dist(id0,id2,1,168).
dist(id2,id0,1,168).
dist(id1,id2,1,30).
dist(id2,id1,1,30).
}).



#pos(p_21747@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,153).
dist(id1,id0,1,153).
dist(id0,id2,1,171).
dist(id2,id0,1,171).
dist(id1,id2,1,30).
dist(id2,id1,1,30).
}).



#pos(p_21748@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,153).
dist(id1,id0,1,153).
dist(id0,id2,1,173).
dist(id2,id0,1,173).
dist(id1,id2,1,30).
dist(id2,id1,1,30).
}).



#pos(p_21749@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,150).
dist(id1,id0,1,150).
dist(id0,id2,1,175).
dist(id2,id0,1,175).
dist(id1,id2,1,31).
dist(id2,id1,1,31).
}).



#pos(p_21750@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,148).
dist(id1,id0,1,148).
dist(id0,id2,1,177).
dist(id2,id0,1,177).
dist(id1,id2,1,34).
dist(id2,id1,1,34).
}).



#pos(p_21751@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,145).
dist(id1,id0,1,145).
dist(id0,id2,1,178).
dist(id2,id0,1,178).
dist(id1,id2,1,38).
dist(id2,id1,1,38).
}).



#pos(p_21752@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,142).
dist(id1,id0,1,142).
dist(id0,id2,1,178).
dist(id2,id0,1,178).
dist(id1,id2,1,41).
dist(id2,id1,1,41).
}).



#pos(p_21753@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,140).
dist(id1,id0,1,140).
dist(id0,id2,1,178).
dist(id2,id0,1,178).
dist(id1,id2,1,42).
dist(id2,id1,1,42).
}).



#pos(p_21754@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,141).
dist(id1,id0,1,141).
dist(id0,id2,1,179).
dist(id2,id0,1,179).
dist(id1,id2,1,41).
dist(id2,id1,1,41).
}).



#pos(p_21755@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,143).
dist(id1,id0,1,143).
dist(id0,id2,1,180).
dist(id2,id0,1,180).
dist(id1,id2,1,38).
dist(id2,id1,1,38).
}).



#pos(p_21756@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,147).
dist(id1,id0,1,147).
dist(id0,id2,1,180).
dist(id2,id0,1,180).
dist(id1,id2,1,34).
dist(id2,id1,1,34).
}).



#pos(p_21757@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,147).
dist(id1,id0,1,147).
dist(id0,id2,1,181).
dist(id2,id0,1,181).
dist(id1,id2,1,34).
dist(id2,id1,1,34).
}).



#pos(p_21758@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,146).
dist(id1,id0,1,146).
dist(id0,id2,1,180).
dist(id2,id0,1,180).
dist(id1,id2,1,33).
dist(id2,id1,1,33).
}).



#pos(p_21759@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,148).
dist(id1,id0,1,148).
dist(id0,id2,1,180).
dist(id2,id0,1,180).
dist(id1,id2,1,32).
dist(id2,id1,1,32).
}).



#pos(p_21760@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,147).
dist(id1,id0,1,147).
dist(id0,id2,1,180).
dist(id2,id0,1,180).
dist(id1,id2,1,32).
dist(id2,id1,1,32).
}).



#pos(p_21761@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,147).
dist(id1,id0,1,147).
dist(id0,id2,1,182).
dist(id2,id0,1,182).
dist(id1,id2,1,35).
dist(id2,id1,1,35).
}).



#pos(p_21762@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,145).
dist(id1,id0,1,145).
dist(id0,id2,1,182).
dist(id2,id0,1,182).
dist(id1,id2,1,37).
dist(id2,id1,1,37).
}).



#pos(p_21763@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,146).
dist(id1,id0,1,146).
dist(id0,id2,1,184).
dist(id2,id0,1,184).
dist(id1,id2,1,38).
dist(id2,id1,1,38).
}).



#pos(p_21764@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,146).
dist(id1,id0,1,146).
dist(id0,id2,1,184).
dist(id2,id0,1,184).
dist(id1,id2,1,38).
dist(id2,id1,1,38).
}).



#pos(p_21765@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,148).
dist(id1,id0,1,148).
dist(id0,id2,1,185).
dist(id2,id0,1,185).
dist(id1,id2,1,38).
dist(id2,id1,1,38).
}).



#pos(p_21766@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,148).
dist(id1,id0,1,148).
dist(id0,id2,1,185).
dist(id2,id0,1,185).
dist(id1,id2,1,39).
dist(id2,id1,1,39).
}).



#pos(p_21767@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,150).
dist(id1,id0,1,150).
dist(id0,id2,1,186).
dist(id2,id0,1,186).
dist(id1,id2,1,38).
dist(id2,id1,1,38).
}).



#pos(p_21768@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,152).
dist(id1,id0,1,152).
dist(id0,id2,1,186).
dist(id2,id0,1,186).
dist(id1,id2,1,36).
dist(id2,id1,1,36).
}).



#pos(p_21769@1, {}, {}, {
person(id0).
person(id1).
person(id2).

happensAt(walking(id0),1).
happensAt(abrupt(id1),1).
happensAt(walking(id2),1).
dist(id0,id1,1,154).
dist(id1,id0,1,154).
dist(id0,id2,1,187).
dist(id2,id0,1,187).
dist(id1,id2,1,35).
dist(id2,id1,1,35).
}).



#pos(p_18425@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_18426@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18427@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18428@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,8).
dist(id1,id0,1,8).
}).



#pos(p_18429@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,9).
dist(id1,id0,1,9).
}).



#pos(p_18430@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_18431@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,13).
dist(id1,id0,1,13).
}).



#pos(p_18432@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18433@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18434@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18435@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,13).
dist(id1,id0,1,13).
}).



#pos(p_18436@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,13).
dist(id1,id0,1,13).
}).



#pos(p_18437@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18438@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,13).
dist(id1,id0,1,13).
}).



#pos(p_18439@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18440@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18441@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18442@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_18443@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18444@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,12).
dist(id1,id0,1,12).
}).



#pos(p_18445@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_18446@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_18447@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_18448@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,11).
dist(id1,id0,1,11).
}).



#pos(p_18449@1, {}, {}, {
person(id0).
person(id1).

happensAt(walking(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,10).
dist(id1,id0,1,10).
}).



#pos(p_13266@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,95).
dist(id1,id0,1,95).
}).



#pos(p_13267@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,93).
dist(id1,id0,1,93).
}).



#pos(p_13268@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,92).
dist(id1,id0,1,92).
}).



#pos(p_13269@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,91).
dist(id1,id0,1,91).
}).



#pos(p_13270@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,89).
dist(id1,id0,1,89).
}).



#pos(p_13271@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,85).
dist(id1,id0,1,85).
}).



#pos(p_13272@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,80).
dist(id1,id0,1,80).
}).



#pos(p_13273@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,76).
dist(id1,id0,1,76).
}).



#pos(p_13274@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,72).
dist(id1,id0,1,72).
}).



#pos(p_13275@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,70).
dist(id1,id0,1,70).
}).



#pos(p_13276@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,67).
dist(id1,id0,1,67).
}).



#pos(p_13277@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,65).
dist(id1,id0,1,65).
}).



#pos(p_13278@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,64).
dist(id1,id0,1,64).
}).



#pos(p_13279@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,62).
dist(id1,id0,1,62).
}).



#pos(p_13280@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,61).
dist(id1,id0,1,61).
}).



#pos(p_13281@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,60).
dist(id1,id0,1,60).
}).



#pos(p_13282@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,59).
dist(id1,id0,1,59).
}).



#pos(p_13283@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,58).
dist(id1,id0,1,58).
}).



#pos(p_13284@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,57).
dist(id1,id0,1,57).
}).



#pos(p_13285@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,52).
dist(id1,id0,1,52).
}).



#pos(p_13286@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,48).
dist(id1,id0,1,48).
}).



#pos(p_13287@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,45).
dist(id1,id0,1,45).
}).



#pos(p_13288@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,42).
dist(id1,id0,1,42).
}).



#pos(p_13289@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,39).
dist(id1,id0,1,39).
}).



#pos(p_13290@1, {}, {}, {
person(id0).
person(id1).

happensAt(inactive(id0),1).
happensAt(walking(id1),1).
dist(id0,id1,1,37).
dist(id1,id0,1,37).
}).




#pos(p_9479@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9480@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9481@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9482@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9483@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9484@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9485@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9486@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9487@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9488@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9489@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9490@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9491@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9492@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9493@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9494@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9495@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9496@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9497@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9498@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9499@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9500@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9501@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9502@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_9503@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4434@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4435@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4436@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4437@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4438@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4439@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4440@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4441@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4442@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4443@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4444@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4445@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4446@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4447@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4448@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4449@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4450@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4451@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4452@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4453@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4454@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4455@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4456@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4457@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_4458@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_7750@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7751@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7752@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7753@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7754@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7755@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7756@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7757@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7758@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7759@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7760@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7761@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7762@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7763@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7764@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7765@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7766@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7767@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7768@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7769@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7770@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7771@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7772@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7773@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_7774@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_5584@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5585@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5586@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5587@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5588@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5589@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5590@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5591@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5592@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5593@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5594@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5595@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5596@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5597@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5598@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5599@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5600@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5601@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5602@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5603@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5604@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5605@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5606@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5607@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_5608@1, {}, {}, {
person(id0).

happensAt(walking(id0),1).

}).



#pos(p_11878@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11879@1, {}, {}, {
person(id0).

happensAt(inactive(id0),1).

}).



#pos(p_11880@1, {}, {}, {
person(id0).



