HEAD
-----
* Initial release, put together for [celluloid/core](https://github.com/celluloid/core).
* Added `.omnirepo` configuration file support. YAML file with these options:
  * [optional] `submodules` if `remove` will remove submodules from repositories.
  * [required, if using .omnirepo] `repositories` array, of individual repositories.
  