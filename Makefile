objects=*.o
exe=first add mydir mycopy mycopy2 printpid
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
.PHONY : clean
clean :
	rm -f $(exe) $(objects)
