#include "stack.h"

#include <QTest>
#include <assertexcept.h>

class StackTest : public QObject {
Q_OBJECT
private slots :

    void constructor() {
        try {
            Stack<int> stack;
        }
        catch (AssertException& e) {
            QFAIL(e.what().c_str());
        }
        catch (...) {
            QFAIL("Unknown exception caught");
        }
    }

    void top() {
        try {
            Stack<int> stack;
            stack.push(1);
            auto item = stack.top();
            QCOMPARE(item, 1);
        }
        catch (AssertException& e) {
            QFAIL(e.what().c_str());
        }
        catch (...) {
            QFAIL("Unknown exception caught");
        }
    }

    void top_xfail() {
        try {
            Stack<int> stack;
#ifdef NDEBUG
            // the second argument is to suppress a warning about variadic
            // macro arguments needing at least one argument
            QSKIP("Assertions disabled", "");
#endif
            QVERIFY_EXCEPTION_THROWN(stack.top(),
                                     AssertException);
        }
        catch (AssertException& e) {
            QFAIL(e.what().c_str());
        }
        catch (...) {
            QFAIL("Unknown exception caught");
        }
    }

    void push() {
        try {
            Stack<int> stack;
            stack.push(1);
            auto item = stack.top();
            QCOMPARE(item, 1);
        }
        catch (AssertException& e) {
            QFAIL(e.what().c_str());
        }
        catch (...) {
            QFAIL("Unknown exception caught");
        }
    }

    void pop() {
        try {
            Stack<int> stack;
            stack.push(1);
            stack.push(2);
            auto item = stack.top();
            QCOMPARE(item, 2);
            stack.pop();
            item = stack.top();
            QCOMPARE(item, 1);
        }
        catch (AssertException& e) {
            QFAIL(e.what().c_str());
        }
        catch (...) {
            QFAIL("Unknown exception caught");
        }
    }

    void pop_xfail() {
        try {
            Stack<int> stack;
#ifdef NDEBUG
            // the second argument is to suppress a warning about variadic
            // macro arguments needing at least one argument
            QSKIP("Assertions disabled", "");
#endif
            QVERIFY_EXCEPTION_THROWN(stack.pop(),
                                     AssertException);
        }
        catch (AssertException& e) {
            QFAIL(e.what().c_str());
        }
        catch (...) {
            QFAIL("Unknown exception caught");
        }
    }

    void empty() {
        try {
            Stack<int> stack;
            bool result = stack.empty();
            QCOMPARE(result, true);
            stack.push(1);
            result = stack.empty();
            QCOMPARE(result, false);
            stack.pop();
            result = stack.empty();
            QCOMPARE(result, true);
        }
        catch (AssertException& e) {
            QFAIL(e.what().c_str());
        }
        catch (...) {
            QFAIL("Unknown exception caught");
        }
    }
};

QTEST_MAIN(StackTest)

#include "stack_test.moc"