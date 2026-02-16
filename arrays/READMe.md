# Arrays in Ada

## 📚 Objective
This directory contains small, focused Ada exercises demonstrating array usage: declaration, indexing, iteration, passing arrays to subprograms, multidimensional arrays, and basic bounds handling.

## 🎯 Key Concepts

### What are Arrays in Ada?

An Ada array is a collection of elements indexed by a discrete type (often an integer range). Arrays in Ada are strongly typed, support custom index ranges, and work naturally with slices and bounds checking.

**Advantages:**
- **Strong typing**: Prevents mixing incompatible array element types
- **Flexible bounds**: Custom index ranges (e.g., `1..10` or `0..N`)
- **Readable iteration**: `for` loops and `for ... of` loops simplify traversal
- **Safe runtime checks**: Bounds are checked unless disabled

## 💻 Project Structure

```
src/
├── arrays.adb        # Exercises and example usages
└── (other supporting files)
alire.toml            # Project manifest for Alire (if present)
```

## 📝 Code Examples

Below are small extracts illustrating common array patterns used in the exercises.

1) Simple array declaration and iteration

```ada
type Int_Array is array (Positive range <>) of Integer;
A : Int_Array := (1 => 10, 2 => 20, 3 => 30);
for I in A'Range loop
	Ada.Text_IO.Put_Line(Integer'Image(A(I)));
end loop;
```

2) Passing an array to a procedure

```ada
procedure Print_Array(Arr : Int_Array) is
begin
	for I in Arr'Range loop
		Ada.Text_IO.Put_Line(Integer'Image(Arr(I)));
	end loop;
end Print_Array;
```

3) Multidimensional array (matrix)

```ada
type Matrix is array (1..3, 1..3) of Integer;
M : Matrix := (others => (others => 0));
```

## 🔧 Build and Run

### With Alire
```bash
# Build
alr build

# Run
alr run
```

### With GNAT directly
```bash
gnatmake src/arrays.adb
./arrays
```

## 📊 Expected Output

The exercises print arrays and results of simple operations; exact output depends on `src/arrays.adb`. A typical run may show the array elements and computed summaries (sum, min, max).

## ⚡ Highlights

1. **Flexible bounds**: Use non-zero-based indices or open arrays for parameter passing
2. **Slices and subarrays**: Work with subsections using array slices (`A(2..4)`) in many cases
3. **Strong typing**: Element and index types are enforced at compile time
4. **Readable examples**: Files are small and focused for learning

## 🔍 Comparison with Other Languages

| Ada Arrays | C | Python |
|------------|---|--------|
| Strongly typed, bounds-checked | C arrays are lower-level, manual bounds | Python lists are dynamic and duck-typed |
| Custom index ranges | Typically 0-based only | Flexible but dynamic |

## 📝 Best Practices

- Prefer explicit index ranges for clarity
- Use `Int_Array` with unconstrained arrays for procedures to accept variable lengths
- Keep examples short and focused; add comments explaining bounds and slice behavior

## 🔗 Resources

- Ada Reference Manual — Arrays
- Learn Ada tutorials on arrays and slices

## 👤 Author

This exercise set is part of the Learning-Exercices-Ada collection.

## 📄 License

MIT OR Apache-2.0 WITH LLVM-exception
