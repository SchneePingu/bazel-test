#include <iostream>
#include "physics/hydrogen.h"

using namespace std;
using namespace Physics;

int main() {
    Hydrogen hydrogen = Hydrogen();

    cout << "Binding energy of hydrogen ground state" << endl;
    cout << hydrogen.getBindingEnergy(1);
    cout << " eV" << endl;
}
