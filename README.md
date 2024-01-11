Swift package wrapper around the [gifski](https://github.com/ImageOptim/gifski) library for making GIFs. This package directly exposes the gifski C api and is just a convenience to not needing to build it yourself. In the future I'm planning on a second package that wraps this one and exposes and better Swift interface.

## Usage

Add this package to your project using Swift Package Manager and `import Gifski`. From there you can reference the [C api](https://github.com/ImageOptim/gifski/blob/main/gifski.h) and call the C functions directly.

## Updating
Gifski is written in Rust and provides an xcodeproj for building. I'm not sure if there is a way to have SPM build it from source, so for now this builds and distributes a compiled binary target as an XCFramework. First, ensure you have the latest version of Rust installed following instructions [here](https://github.com/ImageOptim/gifski#building).

To update to the latest version of gifski for distribution:

1. Update the gifski submodule to the latest tagged release in the `gifski/gifski` directory
2. Run the script in `gifski/build.sh` to build the latest into a framework
3. Commit the updated files
4. Tag the release with the same version number as upstream gifski release.

If there's a better way to do any of this, let me know. I haven't found a lot of documentation about this use case.

## License
All code in this repo is provided under the MIT license. However, please note that [gifski is provided under a different license](https://github.com/ImageOptim/gifski?tab=readme-ov-file#license) (currently AGPL 3 or later) with options for commercial licenses. It's your responsibility to ensure you're compliant with that license if you're using this package and therefore that library.