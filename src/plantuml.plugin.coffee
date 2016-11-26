# Export Plugin
module.exports = (BasePlugin) ->
	# Define Plugin
	class PlantumlPlugin extends BasePlugin
		# Plugin name
		name: 'plantuml'
		plantuml: null
		constructor: ->
			super
			this.plantuml = require('node-plantuml')
			spawn = require('child_process').spawn;
			# this.plantuml.useNailgun()
		# Called per document, for each extension conversion. Used to render one extension to another.
		render: (opts,next) ->
			{inExtension,outExtension,file} = opts
			if inExtension in ['uml','puml'] and outExtension in ['svg','eps','txt']
				# Render asynchronously

				gen = this.plantuml.generate( opts.content ,{ charset: 'UTF-8', format: if outExtension is 'txt' then 'unicode' else outExtension} )

				chunks = [];

				gen.out.on('data', (chunk) ->
					chunks.push(chunk)
					return
				)

				gen.out.on('end', ->
					buffer = Buffer.concat(chunks)
					opts.content = buffer.toString('UTF-8')
					next()
				)
				
				gen.out.on('error', ->
					next('error while reading plantuml output')
				)

			else
				# Done
				next()