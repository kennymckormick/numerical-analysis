#include<iostream>
#include<cmath>
using namespace std;
double h[11];
double ans[3][11];
double mis[3][11];
#define rep(i,j,k) for(int i=j;i<=k;i++)
int main(){
	freopen("out.txt","w",stdout);
	rep(i,1,10) h[i]=1.0/pow(10,i);
	rep(i,1,10) ans[0][i]=(log(0.7+h[i])-log(0.7))/h[i];
	rep(i,1,10) ans[1][i]=(log(0.7+h[i])-log(0.7-h[i]))/h[i]/2.0;
	rep(i,1,10) ans[2][i]=(log(0.7-2*h[i])-8*log(0.7-h[i])+8*log(0.7+h[i])-log(0.7+2*h[i]))/h[i]/12.0;
	rep(i,0,2) rep(j,1,10) mis[i][j]=ans[i][j]-1/0.7;
	cout<<"<tr><th>equation\k</th>"; 
	rep(i,1,10) printf("<th>%.5e</th>",h[i]);
	cout<<"</tr>"<<endl;
	rep(i,0,2) {
		cout<<"<tr>"<<endl;
		cout<<"<th>eq"<<i<<"</th>";
		rep(j,1,10) printf("<th>%.5e</th>",mis[i][j]);
		cout<<"</tr>"<<endl;
	}
}
