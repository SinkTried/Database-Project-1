# Database-Project-1
Justin Centeno	
Project 1 

  My project’s mini world is a VrArcade. I kept it simple and used 5 tables for this mini world. We have Employees, Customers, Games, Packages, and Reservation. 
The relationships are that each Customer can make 1 Reservation, but their can be many Reservations from many different customers.
Each Reservation has many different Packages which are a part of the reservation.
Those many different Packages can be in many different Reservation. Packages can have many different Games which a part of a package. 
These many different Games can be in many Packages.
Employees verify the reservation. This can be done by many Employees and Reservation can be verified by many Employees.
  I saw Tidal Force Vr which can be found at tidalforcevr.com, I saw that you can book an arcade a certain amount of time and thought what would a simple way to do something similar to this. 
I didn’t want to use hour bookings, so I just split games into packages.
So first we need to have a place to keep track of reservations. 
Then we need all the games and what packages they will be a part of.
Then we need a way for the customer information to be stored.
Then finally Employees to verify these reservations.
