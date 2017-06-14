
// cpp heaer files
#include <cstdio>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <iomanip>
#include <cstring>
#include <string>
#include <cmath>

// root header files
#include "TFile.h"
#include "TCanvas.h"
#include "TF1.h"
#include "TF2.h"
#include "TH1.h"
#include "TH2.h"
#include "TGraph.h"
#include "TGraphErrors.h"
#include "TTree.h"
#include "TChain.h"
#include "TCutG.h"
#include "TMath.h"
#include "TRandom.h"
#include "TRint.h"
#include "TString.h"

using namespace std;


// global parameters
TCanvas *c;
double par [*];
double epar[*];


//========================================================================
int **()
{
  //initialization
  c = new TCanvas;  c->Divide(2,2);
  memset(par,  0, **sizeof(double));
  memset(epar, 0, **sizeof(double));

  // create root file to save figures
  char rootname[1024] = {"./**.root"};
  TFile *outroot = new TFile(rootname, "RECREATE");
  outroot->cd();

  
  for(int i=0; i<**; ++i)
    for(int j=0; j<**; ++j)
      {
	
      }


  //save figures
  char cname[1024];
  sprintf(cname, "%d%d", i, j);
  c->SetName(cname);
  outroot->cd();
  c->Write();
  
  char pdfname[1024];
  sprintf(pdfname, "./png/%d%d.pdf", i ,j);
  c->Print(pdfname);
  
  return 0;
}


//========================================================================
int main(int argc, char *argv[])
{
  //create an interactive ROOT application
  TRint *rootapp = new TRint("rint", &argc, argv);
  cout << endl;
  **();
  delete rootapp;
  return 0;
}

