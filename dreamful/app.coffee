axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'
ClientTemplates = require 'client-templates'

module.exports =
  ignores: [
    # Phonegap ignores
    'hooks/**', 'platforms/**', 'plugins/**', 'README.md', 'config.xml',
    # Roots ignores
    '**/layout.*', '**/_*', '.gitignore', '.npmignore', 'ship.*conf']
  output: 'www'

  extensions: [
    js_pipeline(files: 'assets/js/*.coffee'),
    css_pipeline(files: 'assets/css/*.styl'),
    ClientTemplates(
      base: 'views/templates/',
      pattern: '*.jade',
      out: 'js/templates.js'
    )
  ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]
    sourcemap: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true
