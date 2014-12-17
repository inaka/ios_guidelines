/* Preferred */

self.someProperty = [self someCondition] ? someValue : someOtherValue;


/* Not Preferred */

if ([self someCondition]) {
    self.someProperty = someValue;
} else {
    self.someProperty = someOtherValue;
}