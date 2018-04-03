#ifndef TURNCOUNTER_H
#define TURNCOUNTER_H

#include <QObject>
#include <QDebug>

class TurnCounter : public QObject
{
    Q_OBJECT
public:
    explicit TurnCounter(QObject *parent = nullptr);

    Q_INVOKABLE void nextTurn();
    Q_INVOKABLE int cashIncome(int cashCurrent, int cashPerTurn);

signals:

public slots:
};

#endif // TURNCOUNTER_H
