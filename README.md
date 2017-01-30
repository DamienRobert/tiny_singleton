# tiny_singleton

* [Homepage](https://github.com/DamienRobert/tiny_singleton#readme)
* [Gems]("https://rubygems.org/gems/tiny_singleton)
* [Issues](https://github.com/DamienRobert/tiny_singleton/issues)
* [Documentation](http://rubydoc.info/gems/tiny_singleton/frames)
* [Email](mailto:Damien.Olivier.Robert+gems at gmail.com)

## Description

  Tiny Singleton is a very simple implementation of the Singleton Design
  Pattern. Compared to the Singleton module in the stdlib, one does not
  need to class 'klass.instance' to get access to the singleton object, one
  can call 'klass.new' as usual. It is thus easier to add the Singleton
  Pattern to an existing class without changing the way the code calls it.

## Features

## Examples

``` ruby
require 'tiny_singleton'

class Foo
  prepend TinySingleton
  def initialize(foo)
    @foo=foo
  end
end

foo=Foo.new("foo")
bar=Foo.new("bar")
foo.object_id == bar.object_id #=> true
```

## Requirements

It needs at least `ruby 2.0` since it relies on `Module#prepend`

## Install

    $ gem install tiny_singleton

## Copyright

Copyright © 2015–2016 Damien Robert

MIT License. See {file:LICENSE.txt} for details.
