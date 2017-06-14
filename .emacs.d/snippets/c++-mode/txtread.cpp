// read ** data from txt file
ifstream intxt("./**");
if(intxt.is_open()) 
  cout << "intxt open success" << endl;
else{
  cout << "intxt open failed !!!!!" << endl;
  return -1;}
double t;  //temporary number
string temps; //temporary string
getline(intxt, temps);
for(int i=0; i<**; ++i)
  for(int j=0; j<**; ++j)
      for(int k=0; k<**; ++k)
	intxt >> t >> **;
intxt.close();
