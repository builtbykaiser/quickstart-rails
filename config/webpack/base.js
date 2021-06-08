const { webpackConfig } = require('@rails/webpacker')
const { merge } = require('webpack-merge') // workaround for https://github.com/rails/webpacker/issues/2984

const customConfig = {
  resolve: {
    extensions: ['.css']
  }
}

module.exports = merge(webpackConfig, customConfig)
