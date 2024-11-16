#!/bin/bash

for i in {301..349} ; do
  mkdir ./${i}
  touch ./${i}/B.rb
  touch ./${i}/C.rb
done