#ifndef STACK_H
#define STACK_H

#include <stack>
#include <assertexcept.h>

template<typename T>
class Stack {
public:
    using size_type = typename std::stack<T>::size_type;

    Stack();

    T top() const;

    void push(const T& value);

    void pop();

    bool empty() const;

    size_type size() const;

    bool operator==(const Stack<T>& other) const;

protected:
    bool invariant() const;

    std::stack<T> m_stack;
};

template<typename T>
Stack<T>::Stack()  {
    BOOST_ASSERT(invariant());
    BOOST_ASSERT_MSG(empty(), "new stack is empty");
}

template<typename T>
T Stack<T>::top() const {
    BOOST_ASSERT_MSG(!empty(), "stack not empty");
    BOOST_ASSERT(invariant());
    auto result = m_stack.top();
    BOOST_ASSERT(invariant());
    return result;
}

template<typename T>
void Stack<T>::push(const T& value) {
	BOOST_ASSERT(invariant());
  	m_stack.push(value);
  	BOOST_ASSERT(invariant());
  	BOOST_ASSERT_MSG(!empty(), "stack not empty");
  	BOOST_ASSERT_MSG(size()>0, "size greater than zero");
}

template<typename T>
void Stack<T>::pop() {
 	BOOST_ASSERT_MSG(!empty(), "stack not empty");
    BOOST_ASSERT(invariant());
    m_stack.pop();
    BOOST_ASSERT(invariant());
}

template<typename T>
bool Stack<T>::empty() const {
    auto result = m_stack.empty();
    return result;
}

template<typename T>
typename Stack<T>::size_type Stack<T>::size() const {
    auto result = m_stack.size();
    return result;
}

template<typename T>
bool Stack<T>::operator==(const Stack<T>& other) const {
    BOOST_ASSERT(invariant());
    bool result = (m_stack == other.m_stack);
    BOOST_ASSERT(invariant());
    return result;
}

template<typename T>
bool Stack<T>::invariant() const {
    BOOST_ASSERT_MSG(empty() ? size() == 0 : true,
                     "empty implies zero size");
    BOOST_ASSERT_MSG(size() == 0 ? empty() : true,
                     "zero size implies empty");
    return true;
}


#endif // STACK_H

