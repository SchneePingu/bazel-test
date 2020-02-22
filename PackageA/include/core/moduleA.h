#ifndef ModuleA_H
#define ModuleA_H

namespace ModuleA
{
    
class TestModuleA
{
private:
    int m_id;
 
public:
    TestModuleA(int id);
    ~TestModuleA();
 
    int GetId();
};
 
}

#endif