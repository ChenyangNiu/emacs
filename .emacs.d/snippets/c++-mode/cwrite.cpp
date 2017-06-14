char cname[1024];
char pdfname[1024];
sprintf(cname, "%d%d", i, j);
sprintf(pdfname, "./pdf/%d%d.pdf", i, j);
c->SetName(cname);
outroot->cd();
c->Write();
c->Print(pdfname);
