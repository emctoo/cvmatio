all: matio

CFLAGS=`pkg-config opencv --libs --cflags` -Iinclude

matio: src/main.cpp src/MatlabIO.cpp 
	clang -o $@ $^ $(CFLAGS)

clean: 
	rm -rf matio
