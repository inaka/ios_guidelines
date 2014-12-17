/* Preferred */

NSArray *names = @[@"Tom", @"Sebas", @"Andres", @"Gera", @"Pablo"];

NSDictionary *company = @{
                          @"name": @"Inaka",
                          @"slogan": @"it's inaka!"
                          };





/* Not Preferred */

NSArray *namesA = @[@"Tom",@"Sebas",@"Andres",@"Gera",@"Pablo"];        // missing spaces
NSArray *namesB = @[ @"Tom", @"Sebas", @"Andres", @"Gera", @"Pablo" ];  // extra spaces
NSArray *namesC = @[@"Tom", @"Sebas", @"Andres",@"Gera",@"Pablo" ];     // inconsistent

NSDictionary *companyA = @{@"name": @"Inaka", @"slogan": @"it's inaka!"};   // missing enters

NSDictionary *companyB = @{
                           @"name": @"Inaka",
                           @"slogan": @"it's inaka"};                       // inconsistent }

NSDictionary *companyC = @{
                           @"name":@"Inaka",
                           @"slogan":@"it's inaka"
                           };                                               // missing spaces
