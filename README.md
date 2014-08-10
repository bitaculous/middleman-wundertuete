[Middleman Wundertuete]
=======================

**A “Wundertüte” for [Middleman].**

[![Travis CI Status][Travis CI Status]][Travis CI]
[![Gemnasium Status][Gemnasium Status]][Gemnasium]

Installation
------------

1. Add [Middleman Wundertuete] to your Gemfile:

    ```
    group :middleman do
      gem 'middleman-wundertuete', github: 'bitaculous/middleman-wundertuete'
    end
    ```

2. Run `bundle install`

3. Activate the “Wundertuete” in your middleman config:

    ```
    activate :wundertuete
    ```

Bug reports
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

[Gemnasium Status]: http://img.shields.io/gemnasium/bitaculous/middleman-wundertuete.svg?style=flat "Gemnasium Status"
[Gemnasium]: https://gemnasium.com/bitaculous/middleman-wundertuete "Middleman Wundertuete at Gemnasium"
[here]: https://github.com/bitaculous/middleman-wundertuete/issues "Github Issues"
[LICENSE]: https://raw.githubusercontent.com/bitaculous/middleman-wundertuete/master/LICENSE "License"
[Middleman Wundertuete]: http://bitaculous.github.io/middleman-wundertuete "A “Wundertüte” for Middleman."
[Middleman]: http://middlemanapp.com "Hand-crafted frontend development"
[MIT License (MIT)]: http://opensource.org/licenses/MIT "The MIT License (MIT)"
[Semantic Versioning 2.0.0]: http://semver.org "Semantic Versioning 2.0.0"
[Travis CI Status]: http://img.shields.io/travis/bitaculous/middleman-wundertuete.svg?style=flat "Travis CI Status"
[Travis CI]: https://travis-ci.org/bitaculous/middleman-wundertuete "Middleman Wundertuete at Travis CI"