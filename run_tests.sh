#!/bin/sh

ocamlfind ocamlc -o test -package oUnit -linkpkg -g fizzbuzz.ml test.ml && ./test