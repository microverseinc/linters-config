# Ruby on Rails Course

This is a further customization to the Rubocop configirations, to suite Rails project. if you are not familiar with Rubocop, read [Ruby README](../README.md).

## Quick start

1. Add a copy of [.stickler.yml](./.stickler.yml).
2. Add a copy of[.rubocop.yml](./.rubocop.yml).
3. Add a copy of[.rubocop_todo.yml](./.rubocop_todo.yml)
   - Or read how to genereate it on your own in [Using Auto-gen-config](##Using-Auto-gen-config)

## Using Auto-gen-config

Just after initiating the new Rails app, run Rubocop auto correction.

```console
rubocop -a
```

Some offenses will persist, Rubocop can generate a configure file that exclude the files containing those offenses.

```console
rubocop --auto-gen-config
```

That wil generate **.rubocop_todo.yml** and add *inherit_from: .rubocop_todo.yml* in **.rubocop.yml**, without changing the rest of the file.

The **.rubocop_todo.yml** will look something like:

```yml
.
Style/Documentation:
  Exclude:
    - 'spec/**/*'
    - 'test/**/*'
    - 'app/helpers/application_helper.rb'
    - 'app/mailers/application_mailer.rb'
.
```

You can further generalize those exceptions using search and replace with RegExp:

```
find:    
    ('.+)/.+

replace:
    $1/*'
```

Result :

```yml
.
Style/Documentation:
  Exclude:
    - 'spec/**/*'
    - 'test/**/*'
    - 'app/helpers/*'
    - 'app/mailers/*'
.
```
