char cname[1024];
sprintf(cname, "%d%d", i, j);
c->SetName(cname);
outroot->cd();
c->Write();

char pngname[1024];
sprintf(pngname, "./png/%d%d", i, j);
c->Print(pngname);
