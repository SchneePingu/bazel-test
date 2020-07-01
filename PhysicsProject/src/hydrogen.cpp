#include "physics/hydrogen.h"
#include <cassert>
 
using namespace std;
using namespace Physics;
using namespace Constants;

double Hydrogen::getBindingEnergy(int principalQuantumNumber)
{
    assert(principalQuantumNumber > 0 && "Principal quantum number must be a natural number");

    return RydbergConstant/principalQuantumNumber/principalQuantumNumber;
}
