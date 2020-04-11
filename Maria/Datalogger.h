/***************************************************************************

    file                 : Datalogger.cpp
    created              : Thu Sat 11 18:11:49 CET 2020
    copyright            : (C) 2020 Antreas Chrisofi

 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

#ifndef _DATALOGGER_H_
#define _DATALOGGER_H_

//C++ headers
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string>


//TORCS headers
/*#include <tgf.h>
#include <track.h>
#include <car.h>
#include <raceman.h>
#include <robot.h>
#include "linalg.h"
#include "driver.h"*/

using namespace std;


class Datalogger {
  public:
      
      int NewLog();
      int AppendToLog(string tag, string data);
      //void LoggerInitialization(tTrack* t, void *carHandle, void **carParmHandle, tSituation *s);
      //void LoggerRegisterNewRace(tCarElt* car, tSituation *s);
      //tCarElt *getCarPtr() { return car; }
      //tTrack *getTrackPtr() { return track; }
      //float getSpeed() { return speed; }
      

  private:

      /*vehicle variables*/

      float trackangle;
      float angle;
      float throttle;
      float brake;
      float steer;
      float speed;       /* speed in track direction */
      float currentspeedsqr;
      float mass;        /* mass of car + fuel */
      float CARMASS;     /* mass of the car only */
      float CA;          /* aerodynamic downforce coefficient */
      float CW;          /* aerodynamic drag coefficient */
      int stuck;
      //float (Driver::*GET_DRIVEN_WHEEL_SPEED)();
      //tCarElt *car;    /* pointer to tCarElt struct */
              
      /*Datalogger constants*/
      int INDEX;         /*datalogger index(use to track instances of logger for multiple robots)*/
      string LOG_SOURCE; /*source of file for RW operations*/

      /* track variables */
      //tTrack* track;

};

#endif // _DATALOGGER_H_