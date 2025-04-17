# MUX

The goal of this circuit is to calculate an output Y based on inputs A, B, C, D, and select lines S and T, using a combination of AND, OR, and NOT logic gates.
It also passes the input values to output LEDs (LEDa, LEDb, etc.) so that we can see the input states physically.

We have the main module Labeled Lab2 and three submodules named NOTGATE, ORGATE and ANDGATE.
We've also explicitly created wires to link the inputs and outputs of the gates so that the code would be more readable.
