
#include "com_wumch_pecar_Interact.h"
#include "Interact.hpp"

#ifdef __cplusplus
extern "C" {
#endif

void Java_com_wumch_pecar_Interact_start
        (JNIEnv* jenv, jclass jcls)
{
}


void Java_com_wumch_pecar_Interact_stop
        (JNIEnv* jenv, jclass jcls)
{

}


jint Java_com_wumch_pecar_Interact_setConfig
        (JNIEnv* jenv, jclass jcls)
{
    int i = 10086;
    return i;
}

#ifdef __cplusplus
}       // extern "C"
#endif