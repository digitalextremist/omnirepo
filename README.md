# omnibus

Shell script to create a new omnibus repository out of a collection of existing GitHub repositories.

## Installation:

Use `rubygems` although it's a `bash` script:

```
gem install github-omnibus
```

Otherwise, clone the repository and either add `<repo>/bin` to your `$PATH` or move `<repo>/bin/omnibus` to somewhere in `$PATH`.

# What exactly does it do with repositories?

0. Checks for the destination omnibus directory.
0. Clones source repositories into a temporary directory.
  0. It uses mirroring, to pull in all branches and tags.
0. Preserves the git history for each repository.
0. Does garbage collection on the repository being migrated.
0. Imports each source repository as a sub-directory of the omnibus repository.
0. Does garbage collection on the new omnibus repository.
0. **Does not push the new omnibus repository live.**



## System Requirements:

* `git` must be preinstalled.
* Unix-based operating system, with `bash` shell.
* Prefers `tmpfs` partition located at `/dev/shm` for temporary storage.
* Read access to all remote repositories involed.

## Usage:

```sh
omnibus <username/organization> <destination-omnibus> <source-repository> [...]
```

### Example:

If these self-contained repositories need to be merged together into one repository:

* `org9/repoA`
* `org9/repoB`
* `org9/repoC`

And the directory housing the future location of the omnibus repository is:

* `org9/repo0`

Then this would be your process:

```sh
omnibus org9 repo0 repoA
omnibus org9 repo0 repoB
omnibus org9 repo0 repoC
```

### Alternative usage:

The following makes it easier to combine many repositories at once:

```sh
omnibus org9 repo0 repoA repoB repoC
```

## Future Features

- [ ] Bring together source repositories from multiple possible organizations.
- [ ] ...missing something? [Request it.](/digitalextremist/github-omnibus/issues/new)

## Contributing

* Fork this repository on GitHub.
* Make your changes and send a pull request.

## License

Copyright (c) 2015 Donovan Keme.

Distributed under the MIT License. See [LICENSE.txt](https://github.com/digitalextremist/github-omnibus/LICENSE.txt) for further details.