# CZ3Api
[Swift System Module](https://github.com/apple/swift-package-manager/blob/master/Documentation/Usage.md#require-system-libraries)
 to link against [Z3 Prover](https://github.com/Z3Prover/z3) library.
 
 Unfortunatley Z3 installs its header files in different locations on macOS and Linux:
 
- maxOS: `usr/local/include`
- Linux: `/usr/include`

such that `module.modulemap` cannot work on both macOS and Linux.

```
module CZ3Api [system] {
  header "/usr/local/include/z3.h"
  link "z3"
  export *
}
```
As workaround the z3 header files have to be copied or linked into `/usr/local/include`
