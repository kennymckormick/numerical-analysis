#include<cmath>
#include<cstdio>
#include<iostream>
using namespace std;
#define eps 1e-12
float calcexp(float num){
	if(num<0)
	return 1.0/calcexp(-num);
	float ans=0;
	float attr=1.0;
	float fact=1.0;
	do {
		ans+=attr;
		attr*=num;
		attr/=fact;
		fact+=1.0;
	}while(abs(attr)>eps);
	return ans; 
} 
void test(float n){
	printf("%f %f\n",calcexp(n),exp(n));
}
int main(){
	test(5);
}
