## plenv-contrib

Add missing commands (for perlbrew users) to [plenv](https://github.com/tokuhirom/plenv)

## Install

```
git clone git://github.com/miyagawa/plenv-contrib.git ~/.plenv/plugins/plenv-contrib/
```


## Usage

### exec-all

Runs specified command for all installed plenv versions, a la `perlbrew exec`. Use `--with` to specify versions explicitly, or `--except` to exclude versions.

```
> plenv exec-all prove t/foo.t
> plenv exec-all --with 5.10.1,5.20.2 prove t/foo.t
> plenv exec-all --except 5.8.9 prove t/foo.t
```

### lib

Manages local::lib paths for each perl version.

```
> plenv lib list
> plenv lib create chocolate
> plenv lib create 5.16.3@vanilla
> plenv lib delete chocolate
```

local::lib name is local to the current perl.

### use

Launches a new shell with specified plenv version. Use the `@lib` syntax to specify the local::lib name created with `plenv lib`.

```
> plenv use 5.18.0
> plenv lib create 5.16.3@nobita
> plenv use 5.16.3@nobita
```
