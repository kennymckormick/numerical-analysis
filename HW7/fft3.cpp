#include<iostream>
#include<cstdio>
#include<string>
#include<cstring>
#include<cmath>
#include<ctime>
#include<windows.h>
using namespace std;
const int MAXN=200000;
const double pi=acos(-1.0);
int pow2[]={1,2,4,8,16,32,64,128,256,512,1024,2048,4096,8192,16384,32768,65536,131072};
struct complex{
   double r,i;
   complex(double r,double i=0):r(r),i(i){}
   complex():r(0),i(0){}
   friend complex operator + (const complex& a,const  complex& b){
          return complex(a.r+b.r,a.i+b.i);
   }
   friend complex operator - (const complex& a,const  complex& b){
          return complex(a.r-b.r,a.i-b.i);
   }
   friend complex operator * (const complex& a,const  complex& b){
          return complex(a.r*b.r-a.i*b.i,a.r*b.i+a.i*b.r);
   }
   friend complex operator / (const complex& a,double b){
          return complex(a.r/b,a.i/b);
   }
}A[MAXN],B[MAXN],C[MAXN];
#define rep(i,j,k) for(int i=j;i<=k;i++)
#define mem(a) memset(a,0,sizeof(a))
int len=1,cnt=0;
int reverse(int x){
    int ans=0;
    rep(i,1,cnt){
        ans*=2;
        ans+=x%2;
        x/=2;
    }
    return ans;
}

void FFT(complex* X,double flag){
    rep(i,0,cnt-1){
        for(int j=0;j<pow2[cnt];j+=pow2[i+1]){
            complex theta=complex(1.0);
            complex delta=complex(cos(flag*pi/pow2[i]),sin(flag*pi/pow2[i]));
            for(int k=1;k<=pow2[i];k++){
                complex a=X[j+k-1];
                complex b=X[j+k-1+pow2[i]];
                X[j+k-1]=a+theta*b;
                X[j+k+pow2[i]-1]=a-theta*b;
                theta=theta*delta;
            }
        }
    }
    if(flag<0){
        rep(i,0,pow2[cnt]-1)
        X[i]=X[i]/pow2[cnt];
    }
}
double ans[MAXN];
double f(double x){
	return exp(-x*x/10.0)*(sin(2*x)+2*cos(4*x)+0.4*sin(x)*sin(50*x));
}
// the implentation of FFT 
int main(){
	freopen("fft3.csv","w",stdout);
	cout<<"0";
	rep(i,0,256)	printf(",%.10lf",f(2.0*i*pi/256.0));
	printf("\n");
	for(int m=6;m<=100;m+=10){
	    int lena=257;
	    double start, end, cost;
	    len=1,cnt=0;
	    mem(ans);
	    rep(i,0,MAXN-1) A[i]=B[i]=C[i]=complex();
	    while(len<lena){
	        len*=2;cnt++;
	    }
	    rep(i,0,256) A[reverse(i)]=complex(f(2.0*i*pi/256.0));
	
		// fft method
	    FFT(A,1);
	    rep(i,m,256-m)	A[i]=complex();
	    rep(i,0,pow2[cnt]-1){
	        C[reverse(i)]=A[i];
	    }
	    FFT(C,-1);
	    rep(i,0,pow2[cnt]-1) ans[i]=C[i].r;
	    cout<<m;
	    rep(i,0,256) printf(",%.10lf",ans[i]);
	    cout<<endl;
	    mem(ans);
	}
}

