#include<cmath>
#include<cstdio>
#include<iostream>
using namespace std;
void calc1_20(){
	double x[30];
	x[0]=log(1.2);
	cout<<x[0]<<endl;
	for(int i=1;i<=20;i++){
		x[i]=-5.0*x[i-1]+1.0/i;
		cout<<x[i]<<endl;
	}
} 
int main(){
	calc1_20();
}
