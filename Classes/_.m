//
//  _.m
//  _.m
//
//  Created by Kevin Malakoff on 7/18/12.
//  Copyright (c) 2012 Kevin Malakoff. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person
//  obtaining a copy of this software and associated documentation
//  files (the "Software"), to deal in the Software without
//  restriction, including without limitation the rights to use,
//  copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the
//  Software is furnished to do so, subject to the following
//  conditions:
//
//  The above copyright notice and this permission notice shall be
//  included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
//  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
//  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
//  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
//  OTHER DEALINGS IN THE SOFTWARE.
//

#import "_.h"
#import "_Wrapper.h"

@interface _Wrapper (Private)
- (id)initWithObject:(NSO*)obj;
@property (readwrite, retain) NSO* _wrapped;
@end

@implementation _Wrapper (Private)
@dynamic _wrapped;
- (id)initWithObject:(NSO*)obj
{
  self = [super init];
  if (!self) return self;
  self._wrapped = obj;
  return self;
}
@end

static NSS* _VERSION = @"0.1.1";

@implementation _

+ (NSS*)VERSION { return _VERSION; }

+ (_Wrapper*(^)(id obj))chain;
{
  return ^(id obj) {
    return [[_Wrapper alloc] initWithObject:obj];
  };
}

@end

// OO-style representation
_Wrapper* __(id obj) { return _.chain(obj); }