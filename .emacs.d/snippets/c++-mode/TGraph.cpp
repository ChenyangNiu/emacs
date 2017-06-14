TGraph *gr = new TGraph("./**", "%lg %lg");
TGraph *gr = new TGraph(num, array1, array2);

gr->SetTitle("title; x; y");
gr->SetMarkerStyle(kFullCircle);  //*:3, 
gr->SetMarkerColor(kBlue);  //pink:6, dark_green:8
// gr->SetMarkerSize(1);
// gr->GetXaxis()->SetLimits(0, 100);
// gr->GetYaxis()->SetRangeUser(0, 100);
gr->Draw("APL");
