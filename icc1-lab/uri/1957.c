#include <stdio.h>
#include <inttypes.h>

void to_hex(uint32_t x) {
	static const char* dig = "0123456789ABCDEF";
	char v[9];

	char *at = &v[8];
	*at = '\0';

	do {
		*(--at) = dig[x&0xf];
		x >>= 4;
	} while (x != 0);

	printf("%s\n", at);
}

int main() {
	uint32_t x;
	scanf("%" PRIu32, &x);

	to_hex(x);

	return 0;
}