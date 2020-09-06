process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const environment = require('./environment')
const chokidar = require('chokidar')
const execa = require('execa')

environment.config.devServer.before = (app, server) => {
  chokidar.watch([
    'config/locales/*.yml',
    'app/views/**/*.slim',
    'app/components/**/*.slim',
    'app/components/**/*.rb'
  ]).on('change', () => server.sockWrite(server.sockets, 'content-changed'))

  chokidar.watch([
    'config/font_awesome.json'
  ]).on('change', () => execa('bin/generate-fa-icons'))
}

module.exports = environment.toWebpackConfig()
