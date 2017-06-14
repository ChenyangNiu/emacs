// create root file to save figures
char rootname[1024] = {"**.root"};
TFile *outroot = new TFile(rootname, "RECREATE");
outroot->cd();
