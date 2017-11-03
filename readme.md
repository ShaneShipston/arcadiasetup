# New Project

Current Version: `0.2.x`

## Usage

Copy `new-project` into your root projects directory then run the following from the command line.

```
./new-project --theme example
```

## Options

`--theme` This will be used for both the theme folder and git remote.

* Default: **arcadia**
* Example: `--theme example`

`--pages` Comma separated list of page names. These will be created and added to the menu.

* Default: **none**.
* Example: `--pages "About Us, Services, Contact"`

`--title` SEO Title.

* Default: **WPDev**.
* Example: `--title "Example Title"`

`--domain` Project's domain. *This will need to be added to your hosts file*.

* Default: **arcadia.local**.
* Example: `--domain example.local`

`--directory` Directory to install the project in

* Default: **Theme name**
* Example: `--directory example-folder`

`--repo` Name of git repo

* Default: **Theme name**
* Example: `--repo git-repo`

# Migration Script

This essentially converts an existing project from .dev to .local

## Usage

Copy `migrate.sh` into the same directory as your `Vagrantfile` then run the following from the command line.

```
vagrant ssh -c "bash /var/www/migrate.sh"
```
