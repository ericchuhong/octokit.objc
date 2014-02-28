//
//  OCTClient+Issues.m
//  OctoKit
//
//  Created by Josh Abernathy on 2/23/14.
//  Copyright (c) 2014 GitHub. All rights reserved.
//

#import "OCTClient+Issues.h"
#import "OCTClient+Private.h"
#import "OCTUser.h"
#import "OCTRepository.h"
#import "OCTIssue.h"

@implementation OCTClient (Issues)

- (RACSignal *)fetchOpenIssuesForRepository:(OCTRepository *)repository {
	NSURLRequest *request = [self requestWithMethod:@"GET" path:[NSString stringWithFormat:@"repos/%@/%@/issues", self.user.rawLogin, repository.name] parameters:nil notMatchingEtag:nil];

	return [self enqueueRequest:request resultClass:OCTIssue.class fetchAllPages:YES];
}

@end
