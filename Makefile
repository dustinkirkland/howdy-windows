all: deps build run

deps:
	# install build dependencies
	sudo apt-get update
	sudo apt-get install -y gcc g++ erlang-base gfortran golang ghc openjdk-7-jdk clisp nodejs fp-compiler perl php5-cli python ruby bash

build:
	# c
	gcc -o c/howdy c/howdy.c
	# c++
	g++ -o c++/howdy c++/howdy.cpp
	# erlang
	erlc erlang/howdy.erl
	# fortran
	gfortran fortran/howdy.f90 -o fortran/howdy
	# golang
	go build -o golang/howdy howdy.go
	# haskell
	ghc -o haskell/howdy haskell/howdy.hs
	# java
	javac java/Howdy.java
	java -classpath java Howdy
	# lisp
	clisp lisp/howdy.lisp
	# nodejs
	nodejs nodejs/howdy.js
	# pascal
	pc pascal/howdy.pas
	./pascal/howdy
	# perl
	perl perl/howdy.pl
	# php
	php php/howdy.php
	# python
	python python/howdy.py
	# ruby
	ruby ruby/howdy.rb
	# shell
	bash shell/howdy.sh

run:
	# c
	./c/howdy
	# c++
	./c++/howdy
	# erlang
	erl -noshell -s howdy howdy -s init stop
	# fortran
	./fortran/howdy
	# golang
	./golang/howdy
	# haskell
	./haskell/howdy
	# java
	java -classpath java Howdy
	# lisp
	clisp lisp/howdy.lisp
	# nodejs
	nodejs nodejs/howdy.js
	# pascal
	./pascal/howdy
	# perl
	perl perl/howdy.pl
	# php
	php php/howdy.php
	# python
	python python/howdy.py
	# ruby
	ruby ruby/howdy.rb
	# shell
	bash shell/howdy.sh

clean:
	rm -f c/howdy c++/howdy erlang/howdy.beam golang/howdy haskell/howdy haskell/howdy.hi haskell/howdy.o java/Howdy.class pascal/howdy pascal/howdy.o fortran/howdy
