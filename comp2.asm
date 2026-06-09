;load 16 bit number stored in memory location 2000 and store it's 2's complement in memory lcation 2010

lxi H, 3572H
mov A,L
cma
adi 01H
mov L, A
mov A,H
cma
aci 00H
mov H,A
shld 2010H

HLT