// ConsoleApplication1.cpp: определяет точку входа для консольного приложения.
//

#include "stdafx.h"
#include <iostream>

using namespace std;

extern "C" int DlinaStroki(char *s);
extern "C" char* CopyStr(char *s1, char *s2, int L);

int _tmain()
{
	const char * str = "mama";
	int k = DlinaStroki((char *) str);
	cout << k << endl;
	
	char lsat[] = "aaaaaaaaaa";
	char *am = CopyStr((char *)str, (char *)lsat, k);
	cout << am << endl;

	am = CopyStr((char *)(lsat +2), (char *)lsat, k);
	cout << am << endl;
	cin >> lsat;

    return 0;
}

