//======================================================================
TChain* create_chain()  //add files to get more events
{
  TChain *chain = new TChain("**", "**");

  for(int run=**; run<**; ++run)  //**~**
  {
    cout << "  " << run;
    char file[1024];
    sprintf(file, "../run%dCal.root", run);
    chain->AddFile(file);
  }
  cout << endl << endl;
  
  //chain->AddFile("./run667Cal.root");
  //chain->AddFile("./run465Cal.root");
 
  if(chain->GetEntries() <1)
    cout << "inroot open failed !!!!!" << endl;
  
  return chain;
}
