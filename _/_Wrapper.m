//
//  _Wrapper.m
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

#import "_Wrapper.h"
#import "_Wrapper+Private.h"
#import "_+Objects.h"

@interface _Wrapper ()

@property (readwrite, retain) NSO* _wrapped;

@end

@implementation _Wrapper

@synthesize _wrapped;

- (NSO*(^)())value;
{
  return ^{
    return self._wrapped;
  };
}

- (B(^)())valueB;
{
  return ^{
    NSAssert(_.isBoolean(self._wrapped), @"valueB is not a boolean");
    return ((N*)self._wrapped).boolValue;
  };
}

- (I(^)())valueI;
{
  return ^{
    NSAssert([self._wrapped isKindOfClass:[NSNumber class]], @"valueI is not an NSNumber");
    return ((N*)self._wrapped).integerValue;
  };
}

- (UI(^)())valueUI;
{
  return ^{
    NSAssert([self._wrapped isKindOfClass:[NSNumber class]], @"valueI is not an NSNumber");
    return ((N*)self._wrapped).unsignedIntegerValue;
  };
}

- (F(^)())valueF;
{
  return ^{
    NSAssert([self._wrapped isKindOfClass:[NSNumber class]], @"valueI is not an NSNumber");
    return ((N*)self._wrapped).floatValue;
  };
}

@end
