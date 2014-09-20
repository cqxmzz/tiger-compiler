#include "syscall.h"
#include "stdio.h"
#include "coffgrader.h"
#include "vmgrader.h"

int main() {
	assertTrueWMsg(phyPages() <= 1600, "this test requires no more than 1600 physical pages\n");
	if(phyPages() > 1600)
		fail();
	int pid[10];
	int i;
	int status;
	for(i = 0;i < 5;++i)
		pid[i] = exec("test_matrix.coff", 0, 0);
	for(i = 5;i < 10;++i)
		pid[i] = exec("matmult.coff", 0, 0);
	join(exec("wait.coff", 0, 0), &status);
	if(status != 0) {
		printf("incorrect value! of wait\n");
		fail();
	}
	for(i = 0;i < 5;++i) {
		join(pid[i], &status);
		if(status != 0) {
			printf("incorrect value! of matrix\n");
			fail();
		}
	}
	for(i = 5;i < 10;++i) {
		join(pid[i], &status);
		if(status != 7220) {
			printf("incorrect value of matmult!\n");
			fail();
		}
	}
	done();
	return 0;
}
