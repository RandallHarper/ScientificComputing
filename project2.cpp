//Randall Harper
//CS4328 Project 2
//CS4328 Spring 2016
#include <iostream>
#include <limits>


using namespace std;

typedef std::numeric_limits< double > dbl;
double approx(double z); // prototype


int main(int argc, char *const argv[]) {

	// initialize variables
	double epsilon = 0.00001;
	double FA, FB;
	double m, product;
	double a, b;
	cout.precision(17);
	
	// user input
	cout << "Please enter value for a " << endl;
	cin >> a;
	cout << "Please enter value for b " << endl;
	cin >> b;
	

	while ((b-a) > epsilon) {

		m = (a + b) / 2; // midpoint
		FA = approx (m);
		FB = approx (a);
		product = FA * FB;

				
		if (product < 0){
			b = m; // calculate approx on interval [m..b]
		}
		else {
			a = m; // calculate approx on interval [a..m]
		}

		//cout << "New interval: [" << a << " .. " << b << "]\n"; 
	}
	cout << "Approximate solution = " << fixed << (a + b) / 2 << endl;

	system("pause");
	return 0;
}

double approx (double z) {
	double f;
	f = z*z - 3.0; // update function here
	return (f);
}

