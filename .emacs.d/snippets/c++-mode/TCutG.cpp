char cut_file_name[1024];
char cut_name[1024];
sprintf(cut_file_name, "./cut/cut%d%d.root", i, j); //%d%d
sprintf(cut_name, "cut%d%d", i, j); //%d%d
TFile *cut_file = new TFile(cut_file_name);
cut = (TCutG*) cut_file->FindObjectAny("CUTG"); //"CUTG"
cut->SetName(cut_name);
cut->SetLineWidth(2);
cut->SetLineColor(kRed);
