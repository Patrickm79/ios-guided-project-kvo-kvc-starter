//
//  LSIEmployee.h
//  KVO KVC Demo
//
//  Created by Paul Solt on 4/9/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIEmployee : NSObject

@property (nonatomic, readonly, copy) NSString *name; // _name "firstName lastName
@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, nullable, copy) NSString *lastName;

@property (nonatomic, copy) NSString *jobTitle;
@property (nonatomic) NSInteger salary;

@end

NS_ASSUME_NONNULL_END
