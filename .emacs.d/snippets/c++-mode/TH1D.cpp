char hname[1024];
char htitle[1024];
sprintf(hname, **%d, i);
sprintf(htitle, "title; x; y");
TH1D *h = new TH1D(hname, htitle, bin, bmin, bmax);
