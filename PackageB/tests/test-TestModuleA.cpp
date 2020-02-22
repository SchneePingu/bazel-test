#include "gtest/gtest.h"
#include "core/moduleA.h"

using namespace std;
using namespace ModuleA;

TEST(TestModuleA_Test, GetId) {
    int id = 7;
    TestModuleA testModuleA = TestModuleA(id);

    GTEST_ASSERT_EQ(id, testModuleA.GetId());
}

int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}