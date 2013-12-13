all: matio

CFLAGS=`pkg-config opencv --libs --cflags` -Iinclude

matio: main.cpp MatlabIO.cpp 
	clang -o $@ $^ $(CFLAGS)