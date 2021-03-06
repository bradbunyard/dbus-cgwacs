#ifndef CHARGE_PHASE_CONTROL_H
#define CHARGE_PHASE_CONTROL_H

#include "control_loop.h"

class AcSensor;
class QTimer;

class ChargePhaseControl : public ControlLoop
{
	Q_OBJECT
public:
	ChargePhaseControl(SystemCalc *systemCalc, Multi *multi, AcSensor *acSensor, Settings *settings,
					   QObject *parent = 0);

public slots:
	void onTimer();

private:
	QTimer *mTimer;
	AcSensor *mAcSensor;
};

#endif // CHARGE_PHASE_CONTROL_H
