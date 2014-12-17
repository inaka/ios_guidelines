/* Preferred */
SomethingElse *somethingElse = [SomethingElse defaultSomethingElse];
Something *something = [Something somethingWithSomethingElse:somethingElse];
Whatever *instance = [[Whatever alloc] initWithSomething:something];


/* Not Preferred */
Whatever *instance = [[Whatever alloc] initWithSomething:[Something somethingWithSomethingElse:[SomethingElse defaultSomethingElse]]];
