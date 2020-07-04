#include "gtest/gtest.h"
#include "physics/hydrogen.h"

using namespace std;
using namespace Physics;
using namespace Constants;

TEST(TestModuleA_Test, GetId) {
    Hydrogen hydrogen = Hydrogen();

    GTEST_ASSERT_EQ(RydbergConstant, hydrogen.getBindingEnergy(1));
}

int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
