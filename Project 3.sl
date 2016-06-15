//Project 3
//Randall Harper
//CS4328 Spring 2016


/* Project 1
The function call mySine(x,n), where x is a floating point number and n is a positive integer,
returns an approximation of sin(x) using exactly n terms of the Maclauren series for sin. This can
be done without recursion, using normalizetranspose
and the sum function. */


factorial(n(0)) :=	factorial(n-1)*n when n>0 else 1;

s := 0;
mySine(x,n) :=
	
	let k := 0...n;
	in sum(s + ((-1)^k)/(factorial(2*k+1) * x^(2*k+1)));
	
	
/* Project2
approx() should return a floating point number z such that for some x in [ z-10^-5, z+10^5 ], f(x) = 0.
The function f will be pasted into your program before it is run, and will be such that the equation
f(x) = 0 has a solution. */


x := 0;
f(x) := x*x - 3.0; //paste function here


a := 0;
b := 0;
epsilon := 0.0001;

approx(a,b) :=

	let
		m := (a+b) / 2.0;
		FA := f(m);
		FB := f(a);
		prod := FA*FB;
		
	in 
		approxLoop(a,b,m,prod) when ((b-a) > epsilon)
	else
		m;
	
approxLoop(a,b,m,prod) := approx(a,m) when prod < 0 else approx(m,b);