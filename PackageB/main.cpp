#include <iostream>
#include "core/moduleA.h"

using namespace std;
using namespace ModuleA;

int main() {
    TestModuleA testModuleA = TestModuleA(7);

    cout << testModuleA.GetId() << endl;
}
