double xmin = 49,  xminbin = 0; //
double xmax = 55.5,  xmaxbin = 0; //
double ymin = 2,   yminbin = 0; //
double ymax = 4, ymaxbin = 0; //
TH1D *hx = hh[i][0]->ProjectionX("hx");
TH1D *hy = hh[i][0]->ProjectionY("hy");
xminbin = hx->FindBin(xmin);
xmaxbin = hx->FindBin(xmax);
yminbin = hy->FindBin(ymin);
ymaxbin = hy->FindBin(ymax);
hh[i][0]->GetXaxis()->SetRange(xminbin, xmaxbin);
hh[i][0]->GetYaxis()->SetRange(yminbin, ymaxbin);
