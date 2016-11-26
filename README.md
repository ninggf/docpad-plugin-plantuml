# plantuml for [DocPad](http://docpad.org)

<!-- BADGES/ -->

[![Build Status](https://img.shields.io/travis/ninggf/docpad-plugin-plantuml/master.svg)](http://travis-ci.org/ninggf/docpad-plugin-plantuml "Check this project's build status on TravisCI")
[![NPM version](https://img.shields.io/npm/v/docpad-plugin-plantuml.svg)](https://npmjs.org/package/docpad-plugin-plantuml "View this project on NPM")
[![NPM downloads](https://img.shields.io/npm/dm/docpad-plugin-plantuml.svg)](https://npmjs.org/package/docpad-plugin-plantuml "View this project on NPM")
[![Dependency Status](https://img.shields.io/david/ninggf/docpad-plugin-plantuml.svg)](https://david-dm.org/ninggf/docpad-plugin-plantuml)
[![Dev Dependency Status](https://img.shields.io/david/dev/ninggf/docpad-plugin-plantuml.svg)](https://david-dm.org/ninggf/docpad-plugin-plantuml#info=devDependencies)<br/>


<!-- /BADGES -->


使用plantuml将uml或puml结尾的文件转换成svg图片文件，目前无法转成png文件，遗憾。

Convention:  `.svg.(uml|puml)`



<!-- INSTALL/ -->

## Install

``` bash
docpad install plantuml
```

<!-- /INSTALL -->


## Configure

为了性能，请在docpad的配置文件中添加以下配置:

```coffescript

events:
		extendCollections: (opts) ->
			@docpad.getCollection('documents').on('add', (document) ->
				if document.toJSON().outExtension is 'svg'
					document.setMetaDefaults(standalone:true)
			
            )

```

<!-- HISTORY/ -->

## History
[Discover the change history by heading on over to the `HISTORY.md` file.](https://github.com/ninggf/docpad-plugin-plantuml/blob/master/HISTORY.md#files)

<!-- /HISTORY -->


<!-- CONTRIBUTE/ -->

## Contribute

[Discover how you can contribute by heading on over to the `CONTRIBUTING.md` file.](https://github.com/ninggf/docpad-plugin-plantuml/blob/master/CONTRIBUTING.md#files)

<!-- /CONTRIBUTE -->


<!-- BACKERS/ -->

## Backers

### Maintainers

These amazing people are maintaining this project:

- 

### Sponsors

No sponsors yet! Will you be the first?



### Contributors

No contributors yet! Will you be the first?
[Discover how you can contribute by heading on over to the `CONTRIBUTING.md` file.](https://github.com/ninggf/docpad-plugin-plantuml/blob/master/CONTRIBUTING.md#files)

<!-- /BACKERS -->


<!-- LICENSE/ -->

## License

Unless stated otherwise all works are:

- Copyright &copy; ninngf <windywany@gmail.com> (https://github.com/ninggf/)

and licensed under:

- The incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT License](http://opensource.org/licenses/mit-license.php)

<!-- /LICENSE -->


