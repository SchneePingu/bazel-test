#include "core/moduleA.h"
 
using namespace std;
using namespace ModuleA;

TestModuleA::TestModuleA(int id)
{
    m_id = id;
}

TestModuleA::~TestModuleA()
{
}

int TestModuleA::GetId()
{
    return m_id;
}