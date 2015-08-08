# omnibus

Shell script to create a new omnibus repository out of a collection of existing GitHub repositories.

## System Requirements:

* `git` must be preinstalled.
* Unix-based operating system, with `bash` shell.
* Prefers `tmpfs` partition located at `/dev/shm` for temporary storage.
* Read access to all remote repositories involed.

## Usage:

```sh
omnibus <destination-omnibus> <source-repository> [...]
```

### Example:

If these directories housing self-contained repositories need to be merged together into one repository:

* `repoA`
* `repoB`
* `repoC`

And the directory housing the future location of the omnibus repository is:

* `repo0`

Then this would be your process:

```sh
omnibus repo0 repoA
omnibus repo0 repoB
omnibus repo0 repoC
```

### Alternative usage:

The following makes it easier to combine many repositories at once:

```sh
omnibus repo0 repoA repoB repoC
```

