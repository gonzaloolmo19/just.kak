# just.kak
`just.kak` is a plugin for [Kakoune](https://github.com/mawww/kakoune).
It is just a wrapper for running `just` inside Kakoune.

It is a stupid simple script. I only started using Kakoune a few days ago, and
I found useful using `just` within Kakoune. If there is someone that finds
this plugin useful for their workflow too, awesome.


## Installation

### With [plug.kak](https://github.com/andreyorst/plug.kak)

Add this to your `kakrc`:

```kak
plug "gonzaloolmo19/just.kak"
```

Source your `kakrc`, or restart Kakoune.
Then execute `:plug-install`.


### Without plugin manager

Clone this repo:

```sh
git clone https://github.com/gonzaloolmo19/just.kak.git
```

You can put this repo in your `autoload` directory, or else manually `source` the `just.kak` script in your configuration file.

After that, you can use `just.kak`.


## Usage
If you are working on a directory (or subdirectory) where there is a `Justfile`, you can run `:just <recipe> <args>`. It will run the Justfile recipe, and
the output will be shown in a new buffer.

Despite being a `:make` wrapper, you will be able to use `:make` normally.
