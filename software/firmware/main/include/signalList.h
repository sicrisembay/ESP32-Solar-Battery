#ifndef _SIGNAL_LIST_H_
#define _SIGNAL_LIST_H_

#include "qpc.h"

enum appSignal {
    TEST_SIG = Q_USER_SIG,
	MAX_PUB_SIG,

    // Events/Signals that are posted directly *******************************
    GET_OBJECT_DICTIONARY_SIG,
    GET_FUNC_DICTIONARY_SIG,
    GET_SIGNAL_DICTIONARY_SIG,

	MAX_SIG
};

#endif /* _SIGNAL_LIST_H_ */
