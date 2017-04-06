# tiny_singleton

* [Homepage](https://github.com/DamienRobert/tiny_singleton#readme)
* [Issues](https://github.com/DamienRobert/tiny_singleton/issues)
* [Documentation](http://rubydoc.info/gems/tiny_singleto)
* [Email](mailto:Damien.Olivier.Robert+gems at gmail.com)

[![Gem Version](https://img.shields.io/gem/v/tiny_singleton.svg)](https://rubygems.org/gems/tiny_singleton)
[![Build Status](https://travis-ci.org/DamienRobert/tiny_singleton.svg?branch=master)](https://travis-ci.org/DamienRobert/tiny_singleton)

## Description

  Tiny Singleton is a very simple implementation of the Singleton Design
  Pattern. Compared to the Singleton module in the stdlib, one does not
  need to call 'klass.instance' to get access to the singleton object, one
  can call 'klass.new' as usual. It is thus easier to add the Singleton
  Pattern to an existing class without changing the way the code calls it.

## Features

Very simple implementation, relying only on `Module#prepend`

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

MIT License. See [LICENSE.txt](./LICENSE.txt) for details.
