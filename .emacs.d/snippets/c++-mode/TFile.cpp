//read data
TFile *file = new TFile("./**");
TTree *tree = (TTree*) file->FindObjectAny("**");
if(tree->GetEntries() <1)
  cout << "inroot open failed !!!!!" << endl;
