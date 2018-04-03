#ifndef TURNCOUNTER_H
#define TURNCOUNTER_H

#include <QObject>
#include <QDebug>

class TurnCounter : public QObject
{
    Q_OBJECT

    Q_PROPERTY(int euro READ euro WRITE setEuro NOTIFY euroChanged)
    Q_PROPERTY(int euroIncome READ euroIncome WRITE setEuroIncome)

    Q_PROPERTY(int iron READ iron WRITE setIron NOTIFY ironChanged)
    Q_PROPERTY(int ironIncome READ ironIncome WRITE setIronIncome)

    Q_PROPERTY(int titanium READ titanium WRITE setTitanium NOTIFY titaniumChanged)
    Q_PROPERTY(int titaniumIncome READ titaniumIncome WRITE setTitaniumIncome)

    Q_PROPERTY(int euro READ euro WRITE setEuro NOTIFY euroChanged)
    Q_PROPERTY(int euroIncome READ euroIncome WRITE setEuroIncome)

    Q_PROPERTY(int grass READ grass WRITE setGrass NOTIFY grassChanged)
    Q_PROPERTY(int grassIncome READ grassIncome WRITE setGrassIncome)

    Q_PROPERTY(int electricity READ electricity WRITE setElectricity NOTIFY electricityChanged)
    Q_PROPERTY(int electricityIncome READ electricityIncome WRITE setElectricityIncome)

    Q_PROPERTY(int heat READ heat WRITE setHeat NOTIFY heatChanged)
    Q_PROPERTY(int heatIncome READ heatIncome WRITE setHeatIncome)

public:
    explicit TurnCounter(QObject *parent = nullptr);

    Q_INVOKABLE void nextTurn();

    //RESOURCES
    int euro() const;
    void setEuro(int euro);

    int iron() const;
    void setIron(int iron);

    int titanium() const;
    void setTitanium(int titanium);

    int grass() const;
    void setGrass(int grass);

    int electricity() const;
    void setElectricity(int electricity);

    int heat() const;
    void setHeat(int heat);

    //INCOMES
    int euroIncome() const;
    void setEuroIncome(int euroIncome);

    int ironIncome() const;
    void setIronIncome(int ironIncome);

    int titaniumIncome() const;
    void setTitaniumIncome(int titaniumIncome);

    int grassIncome() const;
    void setGrassIncome(int grassIncome);

    int electricityIncome() const;
    void setElectricityIncome(int electricityIncome);

    int heatIncome() const;
    void setHeatIncome(int heatIncome);

signals:
    void euroChanged();
    void ironChanged();
    void titaniumChanged();
    void grassChanged();
    void electricityChanged();
    void heatChanged();

public slots:

private:
    int m_euro;
    int m_iron;
    int m_titanium;
    int m_grass;
    int m_electricity;
    int m_heat;

    int m_euroIncome;
    int m_ironIncome;
    int m_titaniumIncome;
    int m_grassIncome;
    int m_electricityIncome;
    int m_heatIncome;
};

#endif // TURNCOUNTER_H
