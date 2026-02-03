# Renaming

An Ada project demonstrating the use of the `renames` clause for creating aliases of packages and procedures.

## Description

This project illustrates how to use renaming in Ada to:
- Create shorter aliases for packages (package renaming)
- Create aliases for procedures (subprogram renaming)

The example shows how `Ada.Text_IO` can be renamed to `TextIO` for convenience, and how procedures can be renamed to create more readable or domain-specific names.

## Building and Running

This project uses [Alire](https://alire.ada.dev/) for dependency management and building.

### Prerequisites

- Alire build system
- GNAT Ada compiler

### Build

```bash
alr build
```

### Run

```bash
alr run
```

## Code Example

The main program demonstrates two renaming techniques:

```ada
package TextIO renames Ada.Text_IO;
procedure Say (Something : String) renames TextIO.Put_Line;
```

Both approaches provide cleaner, more concise code while maintaining type safety and clarity.

## Author

**AyXxos**
- Website: [ayxxos.netlify.app](https://ayxxos.netlify.app)

## License

MIT OR Apache-2.0 WITH LLVM-exception
