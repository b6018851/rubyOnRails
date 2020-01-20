const { environment } = require('webpack')

environment.plugins.append('Provide', new webpack.ProvidePlugin({
	$: 'jquery',
	jquery: 'jquery',
	Popper: ['popper.js', 'default'}
	}))

module.exports = environment
