//
//  OCTClient+Issues.h
//  OctoKit
//
//  Created by Josh Abernathy on 2/23/14.
//  Copyright (c) 2014 GitHub. All rights reserved.
//

#import "OCTClient.h"

@class OCTRepository;

@interface OCTClient (Issues)

- (RACSignal *)fetchOpenIssuesForRepository:(OCTRepository *)repository;

@end
