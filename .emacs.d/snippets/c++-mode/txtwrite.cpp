// create txt file to save parameters
ofstream outtxt("./**.txt");
outtxt << fixed;
outtxt << setw(12) << "#Norm" << setw(10) << "Error";
outtxt << setw(12) << "Mean"  << setw(10) << "Error";
outtxt << setw(12) << "Sigma" << setw(10) << "Error";
outtxt << endl;

for(int p=0; p<3; ++p)
  {
    outtxt << setw(12) << setprecision(5) << par [p];
    outtxt << setw(10) << setprecision(5) << epar[p];
  }
outtxt << endl;

outtxt.close();
