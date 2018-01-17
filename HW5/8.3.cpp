#include<iostream>
#include<cstdio>
#include<cmath>
using namespace std;
char s[250];int i=3;
int main(){
	freopen("node&weight.txt","r",stdin);
	freopen("out.txt","w",stdout);
	gets(s);gets(s);
	double trueval=sqrt(acos(-1))*exp(-0.25);
	for(int i=3;i<=20;i++){
		gets(s);
		double ans=0;
		for(int j=1;j<=i;j++){
			double node,w;
			cin>>node>>w;
			ans+=w*cos(node);
		}
		gets(s);gets(s);
		printf("N=%d\tValue=%.20lf\tError=%.20lf\n",i,ans,ans-trueval);
	}
}
