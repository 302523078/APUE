objects=*.o
exe=first add mydir mycopy mycopy2 printpid myprocesscontrol
all : $(exe)
DEBUG=-g

first : first.o
	cc -o $@ $(DEBUG) $<
first.o : first.c
	cc -c $(DEBUG) $<
add : add.o
	cc -o $@ $(DEBUG) $<
add.o : add.c
	cc -c $(DEBUG) $<
mydir : mydir.o
	cc -o $@ $(DEBUG) $<
mydir.o : apue.h
	cc -c $(DEBUG) mydir.c
mycopy : mycopy.o
	cc -o $@ $(DEBUG) $<
mycopy.o : apue.h
	cc -c $(DEBUG) mycopy.c
mycopy2 : mycopy2.o
	cc -o $@ $(DEBUG) $<
mycopy2.o : apue.h
	cc -c $(DEBUG) mycopy2.c
printpid : printpid.o
	cc -o $@ $(DEBUG) $<
printpid.o : apue.h
	cc -c $(DEBUG) printpid.c
myprocesscontrol : error.o myprocesscontrol.o
	cc -o $@ $(DEBUG) error.o myprocesscontrol.o
myprocesscontrol.o : apue.h
	cc -c $(DEBUG) myprocesscontrol.c
error.o : apue.h
	cc -c $(DEBUG) error.c
.PHONY : clean
clean :
	rm -f $(exe) $(objects)
