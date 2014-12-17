/* Preferred */

if ([employee isElegibleForFullBenefits]) {
    
}

// Employee.m
- (BOOL)isElegibleForFullBenefits {
    return (self.age > 30 && self.age < 40 && self.seniority > 5);
}




/* Not Preferred */

// Check to see if the employee is eligible for full benefits
if (employee.age > 30 && employee.age < 40 && employee.seniority > 5) {
    
}