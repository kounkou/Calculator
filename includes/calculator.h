#ifndef _CALCULATOR_H_
#define _CALCULATOR_H_

#include <QObject>
#include <stack>

class Calculator : public QObject {
    Q_OBJECT

    Q_PROPERTY(QString value READ value WRITE setValue NOTIFY valueChanged)

public:
    explicit Calculator(QObject* parent = 0);
    virtual ~Calculator();

    QString value() const;
    void setValue(const QString);

    void print(std::vector<int>& nums);
    void add();

signals:
    void valueChanged();

private:
    QString m_value;

    std::vector<int> m_nums;
};

# endif
