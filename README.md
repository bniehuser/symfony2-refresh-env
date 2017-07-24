# Refresh environment script for Symfony 2(.3)

I use this script on Symfony 2.3 projects. It should work for other versions...

## What for is this script useful?

- Delete `app/cache/` directory (since cache:clear doesn't work well for me)
- Execute `app/console cache:clear --env=?`
- Execute `app/console assets:install --env=?`
- Execute `app/console assetic:dump --env=?`

? on the specified environment (default: `dev`)

## Setup

- Copy `refresh-env.sh` file to the application directory (e.g: `/var/www/symfonyapp/`)
- Then execute:
```bash
$ chmod +x refresh-env.sh
```

## Usage

- Refreshing development environment:
```bash
$ ./refresh-env.sh
```

Since `dev` is the default environment it doesn't require parameters.

- Refreshing production environment:
```bash
$ ./refresh-env.sh prod
```

## Refreshing only twig cache

The `refresh-twig-cache.sh` script helps to clear just the twig cache and rebuild it for the pointed environment.

Previous instructions works fine for this script too.
