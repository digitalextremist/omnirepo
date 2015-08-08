HEAD
-----
* Initial release, put together for [celluloid/core](https://github.com/celluloid/core).
* Added `.omnirepo` configuration file support. YAML file with these options:
  * [required, if using .omnirepo] `repositories` array, of individual repositories.
  * [optional] `submodules` if `remove` will remove submodules from repositories.
  * [optional] `merging` can be `skip` and it will just prepare but not merge.
* Primarily supports `GitHub` ... but now also other git servers.