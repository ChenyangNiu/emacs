char hname[1024];
char varexp[1024];
char htitle[1024];
sprintf (hname, "dE_E, tele[%d].CsI[%d]", i ,j);
sprintf (varexp, "**", i, j);
sprintf (htitle, "**", i ,j);
TH2D *h2 = new TH2D(hname, htitle, 200, 0, 80, 200, 0, 15);
tree->Project(hname, varexp);
h2->SetTitle(htitle);
h2->SetMinimum(1);


// gPad->SetLogz();

char cut_file_name[1024];
sprintf(cut_file_name, "./p15_cut/cut%d%d.root", i, j); //%d%d
TFile *cut_file = new TFile(cut_file_name);
cut = (TCutG*) cut_file->FindObjectAny("CUTG"); //"CUTG"
c->cd(1);
h2->Draw("colz");
cut->Draw("Same");

TH2D *hh = new TH2D(hname, hname, 200, 0, 80, 200, 0, 15);
tree->Project(hname, varexp, cut->GetName());
hh->SetTitle(htitle);
hh->Draw("colz");
hh->SetMinimum(1);
// hh->SetAxisRange(**, **);
// hh->GetXaxis()->SetRangeUser(**, **);
// hh->GetYaxis()->SetRangeUser(**, **);
c->cd(2);
hh->Draw();
