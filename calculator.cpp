#include "calculator.h"
#include <iostream>
#include <algorithm>
#include <QDebug>

Calculator::Calculator(QObject* parent) : QObject(parent), m_value(" ") {
}

Calculator::~Calculator() {
}

QString Calculator::value() const {
    return m_value;
}

void Calculator::add() {
    m_nums.push_back(m_value.toInt());
    int result = std::accumulate(
                m_nums.begin(),
                m_nums.end(),
                0);
    m_value = QString::number(result);
    emit valueChanged();
    m_nums.clear();
}

void Calculator::setValue(const QString value) {
    if (value == "AC") {
        m_value = " ";
        m_nums.clear();
        emit valueChanged();
        return;
    } else if (value == "=") {
        add();
        return;
    } else if (value == "+") {
        m_nums.push_back(m_value.toInt());
        m_value = " ";
        emit valueChanged();
        return;
    } else if (value == "-" || value == "/" || value == "x" || value == "+/-" ||
               value == "%" || value == ".") { // logic not implemented yet
        m_value = "NA";
        emit valueChanged();
        return;
    }

    if (value == m_value) {
        return;
    }
    m_value += value;

    emit valueChanged();
}
