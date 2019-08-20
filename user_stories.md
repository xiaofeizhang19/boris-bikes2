### Boris Bike User Stories

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

Nouns : Person, Bike, Docking Station
Verbs : Use, release

Objects           Messages
--------------------------
Person            
Bike
Docking Station   release_bike

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

Nouns : Person, Bike
Verbs : use, see

Objects           Messages
--------------------------
Person            
Bike              check_bike



Bike --> check_bike  --> yes/no
Docking Station --> release_bike --> releases a bike
