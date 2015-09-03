//
//  VIMVimeoSessionConfiguration.m
//  VIMNetworking
//
//  Created by Hanssen, Alfie on 9/19/14.
//  Copyright (c) 2014-2015 Vimeo (https://vimeo.com)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "VIMSessionConfiguration.h"
#import <Foundation/Foundation.h>

NSString * const DefaultBaseURL = @"https://api.vimeo.com/";
static NSString * const DefaultAPIVersionString = @"3.2";

@implementation VIMSessionConfiguration

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _APIVersionString = DefaultAPIVersionString;
        _baseURLString = DefaultBaseURL;
    }
    
    return self;
}

#pragma mark - Public API

- (BOOL)isValid
{
    NSParameterAssert(self.clientKey);
    NSParameterAssert(self.clientSecret);
    NSParameterAssert(self.scope);
    NSParameterAssert(self.baseURLString);
    NSParameterAssert(self.APIVersionString);
    NSParameterAssert(self.keychainAccessGroup);
    NSParameterAssert(self.keychainService);
    
    return self.clientKey && self.clientSecret && self.scope && self.baseURLString && self.APIVersionString && self.keychainAccessGroup && self.keychainService;
}

@end
