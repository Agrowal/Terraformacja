#include "turncounter.h"

TurnCounter::TurnCounter(QObject *parent) : QObject(parent)
{

}

void TurnCounter::nextTurn()
{

    int electricityPreviously = m_electricity;

    qDebug() << "Zmiana tury";
    m_euro=m_euro+m_euroIncome;
    m_iron=m_iron+m_ironIncome;
    m_titanium=m_titanium+m_titaniumIncome;
    m_grass=m_grass+m_grassIncome;
    m_electricity=m_electricityIncome;
    m_heat=m_heat+electricityPreviously;
}


int TurnCounter::euro() const
{
    return m_euro;
}

void TurnCounter::setEuro(int euro)
{
    m_euro = euro;
    emit euroChanged();
}

int TurnCounter::iron() const
{
    return m_iron;
}

void TurnCounter::setIron(int iron)
{
    m_iron = iron;
}

int TurnCounter::titanium() const
{
    return m_titanium;
}

void TurnCounter::setTitanium(int titanium)
{
    m_titanium = titanium;
}

int TurnCounter::grass() const
{
    return m_grass;
}

void TurnCounter::setGrass(int grass)
{
    m_grass = grass;
}

int TurnCounter::electricity() const
{
    return m_electricity;
}

void TurnCounter::setElectricity(int electricity)
{
    m_electricity = electricity;
}

int TurnCounter::heat() const
{
    return m_heat;
}

void TurnCounter::setHeat(int heat)
{
    m_heat = heat;
}

int TurnCounter::euroIncome() const
{
    return m_euroIncome;
}

void TurnCounter::setEuroIncome(int euroIncome)
{
    m_euroIncome = euroIncome;
}

int TurnCounter::ironIncome() const
{
    return m_ironIncome;
}

void TurnCounter::setIronIncome(int ironIncome)
{
    m_ironIncome = ironIncome;
}

int TurnCounter::titaniumIncome() const
{
    return m_titaniumIncome;
}

void TurnCounter::setTitaniumIncome(int titaniumIncome)
{
    m_titaniumIncome = titaniumIncome;
}

int TurnCounter::grassIncome() const
{
    return m_grassIncome;
}

void TurnCounter::setGrassIncome(int grassIncome)
{
    m_grassIncome = grassIncome;
}

int TurnCounter::electricityIncome() const
{
    return m_electricityIncome;
}

void TurnCounter::setElectricityIncome(int electricityIncome)
{
    m_electricityIncome = electricityIncome;
}

int TurnCounter::heatIncome() const
{
    return m_heatIncome;
}

void TurnCounter::setHeatIncome(int heatIncome)
{
    m_heatIncome = heatIncome;
}
