/* The Good */

NSArray *names = @[@"Tom", @"Sebas", @"Andres", @"Gera", @"Pablo"];

NSDictionary *company = @{
                          @"name": @"Inaka",
                          @"slogan": @"it's inaka!",
                          };

NSNumber *shouldUseLiterals = @YES;

NSNumber *floorNumber = @1;





/* The Bad */

NSArray *names = [NSArray arrayWithObjects:@"Tom", @"Sebas", @"Andres", @"Gera", @"Pablo", nil];

NSDictionary *company = [NSDictionary dictionaryWithObjectsAndKeys:@"name", @"Inaka", @"slogan", @"it's inaka", nil];

NSNumber *shouldUseLiterals = [NSNumber numberWithBool:YES];

NSNumber *floorNumber = [NSNumber numberWithInteger:1];
