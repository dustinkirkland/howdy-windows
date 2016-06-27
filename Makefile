all: clean run

deps:
	# install build dependencies
	sudo apt-get update
	sudo apt-get install -y gcc g++ erlang-base gfortran golang ghc openjdk-7-jdk clisp nodejs fp-compiler perl php5-cli python ruby bash


run: bash c cpp erlang fortran golang haskell java lisp nodejs pascal perl php python ruby

.PHONY: bash c cpp erlang fortran golang haskell java lisp nodejs pascal perl php python ruby

clean:
	rm -f c/howdy cpp/howdy howdy.beam golang/howdy haskell/howdy haskell/howdy.hi haskell/howdy.o java/Howdy.class pascal/howdy pascal/howdy.o fortran/howdy

bash:
	bash bash/howdy.sh

c:
	gcc -o c/howdy c/howdy.c
	./c/howdy

cpp:
	g++ -o cpp/howdy cpp/howdy.cpp
	./cpp/howdy

erlang:
	erlc erlang/howdy.erl
	erl -noshell -s howdy howdy -s init stop

fortran:
	gfortran fortran/howdy.f90 -o fortran/howdy
	./fortran/howdy

golang:
	go build -o golang/howdy golang/howdy.go
	./golang/howdy

haskell:
	ghc -o haskell/howdy haskell/howdy.hs
	./haskell/howdy

java:
	javac java/Howdy.java
	java -classpath java Howdy

pascal:
	pc pascal/howdy.pas
	./pascal/howdy

lisp:
	clisp lisp/howdy.lisp

nodejs:
	nodejs nodejs/howdy.js

perl:
	perl perl/howdy.pl

php:
	php php/howdy.php

python:
	python python/howdy.py

ruby:
	ruby ruby/howdy.rb
