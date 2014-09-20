/*
nothing special
by msh
*/
int main() {
	int[] count;

	int v255;
	count = new int[1];
	count[0] = 0;
	
	v255 = getcount(count);
	
	printInt(v255);
	printString("end");
}

int getcount(int[] count) {count[0]=count[0]+1 ; return count[0]; }
