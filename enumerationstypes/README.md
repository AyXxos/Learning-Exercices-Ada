# Enumeration Types

An Ada project demonstrating the use of enumeration types and iterating over them.

## Description

This project illustrates fundamental concepts in Ada:
- Defining custom enumeration types
- Using the `'Image` attribute to get string representation of enumeration values
- Iterating over all values of an enumeration type using `for ... in` loops

The example defines a `Backpack` enumeration type with various items and demonstrates how to iterate through all possible values.

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

The main program demonstrates enumeration type definition and iteration:

```ada
type Backpack is (Water, Sausage, Knife, Socks);

for I in Backpack loop
   Put_Line (Backpack'Image (I));
end loop;
```

This code iterates through all values of the `Backpack` enumeration and prints each one using the `'Image` attribute.

## Author

**AyXxos**
- Website: [ayxxos.netlify.app](https://ayxxos.netlify.app)

## License

MIT OR Apache-2.0 WITH LLVM-exception
