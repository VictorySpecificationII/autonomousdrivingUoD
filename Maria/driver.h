/***************************************************************************

    file                 : driver.h
    created              : Thu Dec 20 01:20:19 CET 2002
    copyright            : (C) 2002 Bernhard Wymann

 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

#ifndef _DRIVER_H_
#define _DRIVER_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#include <tgf.h>
#include <track.h>
#include <car.h>
#include <raceman.h>
#include <robottools.h>
#include <robot.h>

class Driver {
    public:
        Driver(int index);

        /* callback functions called from TORCS */
        void initTrack(tTrack* t, void *carHandle,
                       void **carParmHandle, tSituation *s);
        void newRace(tCarElt* car, tSituation *s);
        void drive(tSituation *s);
        int pitCommand(tSituation *s);
        void endRace(tSituation *s);


    private:
        /* utility functions */
        bool isStuck();
        void update(tSituation *s);
	float getAllowedSpeed(tTrackSeg *segment);
	float getAccel();
	float getDistToSegEnd();
	float getBrake();
	int getGear();
	void initCa();
        void initCw();
    	float filterABS(float brake);
    	float filterTCL(float accel);
    	float filterTCL_RWD();
    	float filterTCL_FWD();
    	float filterTCL_4WD();
	void initTCLfilter();

        /* per robot global data */
        int stuck;
        float trackangle;
        float angle;
	float (Driver::*GET_DRIVEN_WHEEL_SPEED)();

        /* data that should stay constant after first initialization */
        int MAX_UNSTUCK_COUNT;
        int INDEX;

        /* class constants */
        static const float MAX_UNSTUCK_ANGLE;
        static const float UNSTUCK_TIME_LIMIT;
	static const float MAX_UNSTUCK_SPEED;
	static const float MIN_UNSTUCK_DIST;
	static const float G;
	static const float FULL_ACCEL_MARGIN;
        static const float SHIFT;
        static const float SHIFT_MARGIN;
	float mass;        /* mass of car + fuel */
	tCarElt *car;      /* pointer to tCarElt struct */
	float CARMASS;     /* mass of the car only */
	float CA;          /* aerodynamic downforce coefficient */
	float CW;      /* aerodynamic drag coefficient */
	static const float ABS_SLIP;
	static const float ABS_MINSPEED;
	static const float TCL_SLIP;
    	static const float TCL_MINSPEED;

        /* track variables */
        tTrack* track;
};


#endif // _DRIVER_H_
