Package.describe({
  name: 'local:test-package',
  version: '0.0.1',
  summary: '',
  git: '',
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.versionsFrom('1.4.2');
  api.use('ecmascript');
  api.mainModule('test-package.js');
});

Npm.depends({
  lodash: '4.16.6'
});