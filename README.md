Gutenberg Tools
===============

![Gutenberg Press](gutenberg.gif)

Mirroring
---------

There are two scripts implementing the mirroring protocol described in
[Gutenberg:Mirroring_How-to](https://www.gutenberg.org/wiki/Gutenberg:Mirroring_How-To).
Both are just scripts which call `rsync` but it's nice to have them
dockerized. 

**Make sure you mount your local volume to `/mirror`.**

```sh
docker run -it --rm -v /local/path:/mirror generativist/gutenberg-tools:latest mirror_main_content
docker run -it --rm -v /local/path:/mirror generativist/gutenberg-tools:latest mirror_generated_content
```
