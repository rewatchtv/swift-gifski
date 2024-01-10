Swift package wrapper around the [gifski](https://github.com/ImageOptim/gifski) library for making GIFs. This currently directly exposes the gifski C api, but ideally we'll wrap that in a nice Swift interface and hide the underlying C api completely.

## Updating
Gifski is written in Rust and provides a C api and xcodeproj for building. I'm not sure if there is a way to have SPM build it from source, so for now this builds and distributes a compiled binary target as an XCFramework. To update to the latest version:

1. Update the gifski submodule to the latest in the `gifski/gifski` folder
2. Run the script in `gifski/build.sh`
3. Commit the updated framework and .zip
4. Tag the release with the same version number as upstream gifski.

If there's a better way to do any of this, let me know.
