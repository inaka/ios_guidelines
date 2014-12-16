/* The Good */
if (someObject) {}
if (![anotherObject boolValue]) {}

/* The Bad */
if (someObject == nil) {}
if ([anotherObject boolValue] == NO) {}
if (isAwesome == YES) {}
if (isAwesome == true) {}