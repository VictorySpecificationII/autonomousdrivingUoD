//C++ headers
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <iostream>
#include <fstream>
#include <ctime>
/*
//TORCS headers
#include <tgf.h>
#include <track.h>
#include <car.h>
#include <raceman.h>
#include <robot.h>
#include "linalg.h"
#include "driver.h"
*/
#include "Datalogger.h"

using namespace std;

char* TimeStamp(){
	// current date/time based on current system
   time_t now = time(0);
   
   // convert now to string form
   char* dt = ctime(&now);

   //cout << "The local date and time is: " << dt << endl;

   // convert now to tm struct for UTC
   tm *gmtm = gmtime(&now);
   dt = asctime(gmtm);
   return dt;
}

int Datalogger::NewLog()
{
  
  // Create and open a text file
  ofstream MyFile("Log.txt");

   
  // Write to the file
  MyFile << "Beginning of log...\n";

  char* dt = TimeStamp();
   
  MyFile << "The UTC date and time is: "<< dt << endl;

  // Close the file
  MyFile.close();
  return 0;
}

int Datalogger::AppendToLog(string tag, string data){

  ofstream MyFile("Log.txt", std::ios::app);
  char* dt = TimeStamp();
  MyFile << dt << tag << " - " << data << ", "; 
  return 0;

}


int main(){


	Datalogger Logger = Datalogger();
	
	Logger.NewLog();
	//trying to turn it into a CSV, sort at the end
	for(int i = 0; i < 10; i++){
	Logger.AppendToLog("Tag", "Appended Data");
	}
	return 0; 
} 
