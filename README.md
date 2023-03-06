# Calculator

Simple Calculator using Qt Qml. The project shows how registering a C++ type with QML can be done.
QtQml supports 3 other different patterns for communicating between C++ and Qml, namely 

- subclassing QQuickItem in C++ for creating a custom QML item
- Registering Context Properties
or
- accessing QML objects through the object tree

# Feature support

This calculator UI is inspired from the iOS fanous calculator design.
Current the application only supports adding numbers. The other operations will be added at a later stage.
Feel free to contribute, this project might involve some data structures, and design patterns for handling the operations.
It can be a good opportunity to practice those.

# Result

<img width="412" alt="Screenshot 2023-03-05 at 5 25 40 PM" src="https://user-images.githubusercontent.com/2589171/222999460-b50c865a-9d01-411d-af35-a2c3df9e4a04.png">

# Compilation/running instruction

1. Install Qt. For instruction on how to install : 

https://www.qt.io/download

2. Compile the project

```bash
qmake && make
```

3. Launch the application

```bash
./Calculator
```
