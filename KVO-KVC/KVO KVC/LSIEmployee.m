//
//  LSIEmployee.m
//  KVO KVC Demo
//
//  Created by Paul Solt on 4/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSIEmployee.h"

@interface LSIEmployee ()
 // private properties
@end

@implementation LSIEmployee {
    // also private properties
    NSString *_mySecret;
}

// override getter to make name a computed property
- (NSString *)name {
    if (self.lastName && self.lastName.length != 0) { // dont append " "
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
    }
    else return self.firstName;
}

// Option 1: Override setter on the firstName / lastName
- (void)setFirstName:(NSString *)firstName {
    // will change the value (willChangeValue)
    [self willChangeValueForKey:@"name"];
    _firstName = firstName;
    // did change the value (didChangeValue)
    [self didChangeValueForKey:@"name"];
}

// Option 2: Use this method to observe changes to a key (pick one)
+ (NSSet<NSString *> *)keyPathsForValuesAffectingName {

    return [NSSet setWithObjects:@"lastName", @"firstName", nil];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@, Title: %@, Salary: %li", self.name, self.jobTitle, self.salary];
}

@end
