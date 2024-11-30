#!/bin/bash
clear
#cd ..
cd ../example
#flutter clean
#flutter pub cache clean
dart fix --apply
dart format lib test