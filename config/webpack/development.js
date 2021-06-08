process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const webpackConfig = require('./base')

const chokidar = require('chokidar')
const execa = require('execa')

webpackConfig.devServer.before = (app, server) => {
  chokidar.watch([
    'config/locales/*.yml',
    'app/views/**/*.slim',
    'app/components/**/*.slim',
    'app/components/**/*.rb'
  ]).on('change', () => server.sockWrite(server.sockets, 'content-changed'))

  chokidar.watch([
    'config/font_awesome.json'
  ]).on('change', () => execa('bin/generate-font-awesome-icons'))
}

module.exports = webpackConfig
