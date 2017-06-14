//fit
gaus[i][j] = new TF1("gaus_fit", "gaus", -10000, 10000);
//gaus[i][j]->SetParameters(**, **, **);
int fit_status = h[i][j]->Fit(gaus[i][j], "q");
	  
if(fit_status != 0)
  cout << "Fit Error !!!!!!!!!!" << endl;
 else
   for(int k=0; k<10; ++k)
     {
       memcpy(&par[i][j][0], gaus[i][j]->GetParameters(), 3*sizeof(double));
       memcpy(&epar[i][j][0], gaus[i][j]->GetParErrors(), 3*sizeof(double));

       h[i][j]->Fit(gaus[i][j], "q", "",
		    par[i][j][1] - 2*par[i][j][2],
		    par[i][j][1] + 2*par[i][j][2]);
     }
