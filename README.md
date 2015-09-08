[Middleman Wundertuete]
=======================

[![Travis CI Status][Travis CI Status]][Travis CI]
[![Gemnasium Status][Gemnasium Status]][Gemnasium]

**A Lucky Bag for [Middleman]**

Installation
------------

1. Add Middleman Wundertuete to your Gemfile:

    ```ruby
    gem 'middleman-wundertuete', github: 'bitaculous/middleman-wundertuete'
    ```

2. Run `bundle` to install all dependencies with [Bundler]

3. Activate the Lucky Bag in your Middleman configuration:

    ```ruby
    activate :wundertuete
    ```

Development
-----------

### Run specs with [RSpec]

Run `rspec`.

or via [Guard]:

```
$ guard -g spec
```

### Run [Cucumber]

Run `cucumber`.

or via Guard:

```
$ guard -g test
```

### See Test Coverage

Run `COVERAGE=true rake`.

### Run [RuboCop]

Run `rubocop`.

To run all specs, Cucumber and RuboCop altogether, run `rake`.

Bug Reports
-----------

Github Issues are used for managing bug reports and feature requests. If you run into issues, please search the issues
and submit new problems [here].

Versioning
----------

This library aims to adhere to [Semantic Versioning 2.0.0]. Violations of this scheme should be reported as bugs.
Specifically, if a minor or patch version is released that breaks backward compatibility, that version should be
immediately yanked and / or a new version should be immediately released that restores compatibility.

License
-------

[Middleman Wundertuete] is released under the [MIT License (MIT)], see [LICENSE].

[Bundler]: http://bundler.io "The best way to manage a Ruby application's gems"
[Cucumber]: https://cucumber.io "Simple, human collaboration"
[Gemnasium]: https://gemnasium.com/bitaculous/middleman-wundertuete "Middleman Wundertuete at Gemnasium"
[Gemnasium Status]: https://img.shields.io/gemnasium/bitaculous/middleman-wundertuete.svg?style=flat "Gemnasium Status"
[Guard]: http://guardgem.org "A command line tool to easily handle events on file system modifications."
[here]: https://github.com/bitaculous/middleman-wundertuete/issues "Github Issues"
[LICENSE]: https://raw.githubusercontent.com/bitaculous/middleman-wundertuete/master/LICENSE "License"
[Middleman]: http://middlemanapp.com "Hand-crafted frontend development"
[Middleman Wundertuete]: https://bitaculous.github.io/middleman-wundertuete/ "A Lucky Bag for Middleman"
[MIT License (MIT)]: http://opensource.org/licenses/MIT "The MIT License (MIT)"
[RSpec]: http://rspec.info "Behaviour Driven Development for Ruby"
[RuboCop]: https://github.com/bbatsov/rubocop "A Ruby static code analyzer, based on the community Ruby style guide."
[Semantic Versioning 2.0.0]: http://semver.org "Semantic Versioning 2.0.0"
[Travis CI]: https://travis-ci.org/bitaculous/middleman-wundertuete "Middleman Wundertuete at Travis CI"
[Travis CI Status]: https://img.shields.io/travis/bitaculous/middleman-wundertuete.svg?style=flat "Travis CI Status"