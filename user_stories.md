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


====================
irb>> 
docking_station = DockingStation

Traceback (most recent call last):
        4: from /Users/ben/.rvm/rubies/ruby-2.6.3/bin/irb:23:in `<main>'
        3: from /Users/ben/.rvm/rubies/ruby-2.6.3/bin/irb:23:in `load'
        2: from /Users/ben/.rvm/rubies/ruby-2.6.3/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in `<top (required)>'
        1: from (irb):1
NameError (uninitialized constant DockingStation)
2.6.3 :002 > exit

Error : uninitialized constant
File Path : /Users/ben/.rvm/rubies/ruby-2.6.3/lib/ruby/gems/2.6.0/gems/irb-1.0.0/exe/irb:11:in
Line of error : from (irb):1
The object called DockingStation does not exist
Fix it : create an object called DockingStation.  Could be a string or a class etc etc
