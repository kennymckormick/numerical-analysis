#include<iostream>
#include<cmath>
using namespace std;
double f[11];
double ex[11];
double im[11];
double acc[11];
#define rep(i,j,k) for(int i=j;i<=k;i++)
int main(){
	freopen("out.txt","w",stdout);
	rep(i,0,10) f[i]=exp(-0.1*i/4.0);
	rep(i,1,9)  ex[i]=(f[i+1]-f[i-1])/0.2;
	rep(i,1,8)  im[i]=(-3*f[i]+4*f[i+1]-f[i+2])/.2;
	im[9]=(f[7]-4*f[8]+3*f[9])/.2;
	rep(i,1,9)  acc[i]=-1.0/4.0*f[i];
	
	cout<<"<tr><th>method\k-th point</th>"; 
	rep(i,1,9) printf("<th>%d</th>",i);
	cout<<"</tr>"<<endl;
	cout<<"<tr>"<<endl;
	cout<<"<th>explicit"<<"</th>";
	rep(j,1,9) printf("<th>%.5e</th>",ex[j]);
	cout<<"</tr>"<<endl;
	cout<<"<tr>"<<endl;
	cout<<"<th>implicit"<<"</th>";
	rep(j,1,9) printf("<th>%.5e</th>",im[j]);
	cout<<"</tr>"<<endl;
	cout<<"<tr>"<<endl;
	cout<<"<th>accurate value"<<"</th>";
	rep(j,1,9) printf("<th>%.5e</th>",acc[j]);
	cout<<"</tr>"<<endl;
}
