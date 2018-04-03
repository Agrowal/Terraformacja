#include "turncounter.h"

TurnCounter::TurnCounter(QObject *parent) : QObject(parent)
{

}

void TurnCounter::nextTurn()
{
    qDebug() << "Zmiana tury";
}

int TurnCounter::cashIncome(int cashCurrent, int cashPerTurn)
{
    return cashCurrent + cashPerTurn;
}
