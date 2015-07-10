//
//  CreateRecordTask.h
//  Pegasus
//
//  Created by Alfred Hanssen on 2/27/15.
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

#import "VIMNetworkTask.h"
#import <Photos/Photos.h>
#import <AVFoundation/AVFoundation.h>

@interface VIMCreateTicketTask : VIMNetworkTask

// Output
@property (nonatomic, copy, readonly, nullable) NSString *localURI; // TODO: possible to eliminate this? [AH]
@property (nonatomic, copy, readonly, nullable) NSString *uploadURI;
@property (nonatomic, copy, readonly, nullable) NSString *activationURI;

@property (nonatomic, strong, readonly, nullable) PHAsset *phAsset;
@property (nonatomic, strong, readonly, nullable) AVURLAsset *URLAsset;

- (nullable instancetype)initWithPHAsset:(nonnull PHAsset *)phAsset;
- (nullable instancetype)initWithURLAsset:(nonnull AVURLAsset *)URLAsset canUploadFromSource:(BOOL)canUploadFromSource;

@end
