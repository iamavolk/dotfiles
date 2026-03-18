# Dotfiles
Personal dotfiles managed with a hybrid approach using **GNU Stow** and **Nix**.

Designed to:
- Work on non-Nix (that is, imperative package manager-powered) systems with GNU Stow
- Integrate cleanly into Nix-based setups (Home Manager / NixOS)

## GNU Stow
#### Usage tips:
- how to `stow` somewhere other than `$HOME`:  
    `sudo stow -t <target_dir> <source_dir>`

## Nix
Nix has a somewhat steep learning curve. These notes are primarily for
myself to help with building a stable mental model of how the system is structured.

### Nix triad
#### 1. [Nix package manager](#nix-package-manager)
#### 2. [Nix language](#nix-language)
#### 3. [NixOS](#nixos)

The main question Nix answers:  
> _how does one build and deploy software in a fully reproducible, conflict-free way?_

Nix package manager is the central element of the solution. A "package" is just a Nix (the language) build expression
that produces some files in `/nix/store` with a name that includes a specific hash 
based on _all inputs_ used to build the package (as opposed to, for example, outputs that are used to 
ensure the integrity of the build artefacts transferred over an untrusted channel)

#### Nix package manager
**Use case**:  
    Replacement of the native package manager `apt`, `pacman`, etc.

**How**:
> `nix` + `flakes` + `home manager`  

(There's an outdated method that involves using `nix-env`. It is imperative and
results in configurations that are not easily reproducible)

1. Install `home manager`: `nix run home-manager/master -- init --switch`
    - installation creates `~/.config/home-manager/home.nix`
    - configure `home.nix` (Nix language, declarative)
    - apply config: `home-manager switch`

2.  Flakes: use `flake.nix` file inside the Home Manager's working dir (`~/.config/home-manager/flake.nix`)
    Nix generates `flake.lock`, pins the packages to a specific commit

3. To update packages (e.g. `nixpkgs` as named in `flake.nix`):
    - `nix flake update` (if using flakes) or `nix-channel --update`
    - switch

Note: 
    Flakes address the class of problems similar to what `Cargo.toml` and `package-json.lock` do.
    They are a modern way to pin particular versions of packages (and other inputs) used in 
    the (reproducible) system.
    Home Manager is a layer on top of Nix that manages user packages and (optionally) dotfiles.


Points of concern:
1. `programs.<program>.enable` and BYOC (bring your own config) will create conflict as
    Home Manager will try to "own" the path.
2. external config files must live either inside Home Manager's dir or within `nix/store`. 
    The so-called pure evaluation has to be unset in order for absolute paths to work

#### Nix language

 TODO: write as you go


#### NixOS
**Why**:
    Reproducible system configuration: kernel, services, packages, config files.
    Everything is described in `configuration.nix`
    Running `nixos-rebuild switch` makes the system match the declaration exactly.



### Per-project dev environments
1. `nix-shell` with a `shell.nix` declaration
2. `flakes`
3. `devShells`
