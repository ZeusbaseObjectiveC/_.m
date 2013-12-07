# _.m

[![Version](http://cocoapod-badges.herokuapp.com/v/_.m/badge.png)](http://cocoadocs.org/docsets/_.m)
[![Platform](http://cocoapod-badges.herokuapp.com/p/_.m/badge.png)](http://cocoadocs.org/docsets/_.m)

_.m is a port of [Underscore.js](http://underscorejs.org/) to Objective-C. It strives to provide the fullest feature set possible in a way that is familiar to JavaScript developers (despite the differences between JavaScript and Objective-C).

To help achieve this vision, _.m uses [SubjectiveScript.m](https://github.com/kmalakoff/SubjectiveScript.m) to bring JavaScript-like syntax and features into Objective-C, and [QUnit.m](https://github.com/kmalakoff/QUnit.m) to port unit tests from JavaScript to Objective-C. You should check them out, too!

Full documentation can be found on the [_.m Website](http://kmalakoff.github.com/_.m/)

### A Quick Taster

You can use familiar Underscore.js functions:

```
N* result = (N*) _.detect(AI(1, 2, 3), ^B(N* num){ return num.I * 2 == 4; });
equal(result.I, 2, @"found the first '2' and broke the loop");
```

and you can even use chaining:

```
A* lyrics = AO(
  @"I'm a lumberjack and I'm okay",
  @"I sleep all night and I work all day",
  @"He's a lumberjack and he's okay",
  @"He sleeps all night and he works all day"
);
O* counts = (O*) __(lyrics)
  .map(^(NSS* line, ...) { return line.split(@""); })
  .flatten(/* REQUIRED */ false )
  .reduce(^(O* hash, N* l, ... /* KEY, LIST */) {
    N* value = (N*) hash.getOrAdd(l, ^{ return N.I(0); });
    hash.set(l, N.I(value.I+1));
    return hash;
}, O.new).value();
ok(counts.get(@"a").I == 16 && counts.get(@"e").I == 10, @"counted all the letters in the song");
```

## Usage

To run the example project; clone the repo, and run `pod install` from the Project directory first.

## Requirements

## Installation

_.m is available through [CocoaPods](http://cocoapods.org), to install
it simply add the following line to your Podfile:

    pod "_.m"

## Author

Kevin Malakoff, kmalakoff@gmail.com

## License

_.m is available under the MIT license. See the LICENSE file for more info.
