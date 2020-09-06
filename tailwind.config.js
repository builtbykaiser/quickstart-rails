module.exports = {
  purge: {
    enabled: true,
    content: [
      './app/**/*.html.erb',
      './app/**/*.html.slim',
      './app/helpers/**/*.rb',
      './app/javascript/**/*.js',
    ]
  },
  theme: {
    extend: {},
  },
  variants: {},
  plugins: [],
  future: {
    purgeLayersByDefault: true,
    removeDeprecatedGapUtilities: true
  }
}
