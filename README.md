# Progressive Pylint

Hide pylint nits until more important issues are fixed.

## Dependencies

 - [Pylint](https://pylint.readthedocs.io/en/latest/user_guide/installation.html)
 
## Installation

```
git clone https://github.com/deckar01/progressive-pylint.git
sudo cp progressive-pylint/progressive-pylint.sh /usr/bin/prylint
sudo chmod 755 /usr/bin/prylint
```

## Usage

```
prylint [options] module_or_package ...
```

See the [pylint documentation](https://pylint.readthedocs.io/en/latest/user_guide/run.html#command-line-options) for available options.

## Examples

```
$ prylint my_module
Looking for errors...
Looking for warnings...
Looking for refactors...
Looking for conventions...
Lint free!
```

```
$ prylint dirty_module
Looking for errors...
Looking for warnings...
************* Module dirty_module
W: 59, 8: Unused variable 'a' (unused-variable)


Report
======
106 statements analysed.

...
```
