#include <iostream>
#include <stack.h>

int main() {
    Stack<int> s1;
    s1.push(1);
    s1.push(2);
    s1.pop();
    s1.push(3);
    s1.pop();
    s1.push(4);
    s1.pop();
    s1.push(5);

    Stack<int> s2;
    s2.push(1);
    s2.push(5);

    std::cout << "s1==s2: " << std::boolalpha << (s1 == s2) << std::endl;

    return 0;
}
