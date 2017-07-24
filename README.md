# Refresh environment script for Symfony 2(.3)

## What for is this script useful?

- Delete `app/cache/` directory (since cache:clear doesn't work well for me)
- Execute `app/console cache:clear --env=?`
- Execute `app/console assets:install --env=?`
- Execute `app/console assetic:dump --env=?`

? on the specified environment (default: `dev`)

## Installation:

- Copy `refresh-env.sh` file to the application directory (e.g: `/var/www/symfonyapp/`)
- Then execute:
```
$ chmod +x refresh-env.sh
```

## Usage:

- Refresh development environment:

```
$ ./refresh-env.sh
```

Since `dev` is the default environment it doesn't require parameters.

- Refresh production environment:
```
$ ./refresh-env.sh prod
```

