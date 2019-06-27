
# Flutter Web JS Interoperability Test

Call an async JS method from Dart in a Flutter for Web project.
This test illustrates a bug in the current release: https://github.com/flutter/flutter/issues/35126

Works in dev mode:
`flutter pub global run webdev serve --no-release --auto restart --hostname 192.168.1.2 --log-requests`

Doesn't work in release mode:
`flutter pub global run webdev serve --release --auto restart --hostname 192.168.1.2 --log-requests`

Tested on the dev channel.
