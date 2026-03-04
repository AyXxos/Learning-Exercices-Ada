# Unconstrained Arrays in Ada

## 📚 Objective
This directory contains small, focused Ada exercises demonstrating unconstrained arrays: declaration, flexibility, iteration, and understanding how Ada's `String` type is itself an unconstrained array.

## 🎯 Key Concepts

### What are Unconstrained Arrays in Ada?

An unconstrained array in Ada is an array type declared without fixed bounds, using the `range <>` syntax. The actual bounds are determined when an object of that type is created. This allows writing flexible subprograms that accept arrays of any size.

**Advantages:**
- **Maximum flexibility**: One type can represent arrays of any length
- **Generic subprograms**: Functions and procedures can work with variable-sized arrays
- **Type safety preserved**: Still strongly typed with runtime bounds checking
- **Built-in types use this**: `String` is the most common unconstrained array type

## 💻 Project Structure

```
src/
├── unconstrainedarrays.adb        # Exercises and example usages
alire.toml                         # Project manifest for Alire
```

## 📝 Code Examples

Below are small extracts illustrating unconstrained array patterns used in the exercises.

1) Unconstrained array type declaration

```ada
type Food is (Cookie, Cake, Pie);

type Food_Backpack is array (Natural range <>) of Food;
--  The "range <>" means bounds are determined at object creation
```

2) Creating objects from unconstrained types

```ada
Workload : constant Food_Backpack := (Cookie, Cake, Pie, Cookie, Cake);
--  Bounds are automatically determined: 0..4 (or 1..5 depending on context)
```

3) Iterating over unconstrained arrays

```ada
for I in Workload'Range loop
   Put_Line (Food'Image (Workload (I)));
end loop;
```

4) String as an unconstrained array

```ada
Str : constant String := "Hello, World!";
for I in Str'Range loop
   Put (Str (I));  --  Access individual characters
end loop;

--  Reverse iteration
for I in reverse Str'Range loop
   Put (Str (I));
end loop;
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
gnatmake src/unconstrainedarrays.adb
./unconstrainedarrays
```

## 📊 Expected Output

The program demonstrates unconstrained arrays by:
- Printing enumeration values from a Food_Backpack array
- Displaying a string character by character (forward)
- Displaying the same string in reverse

Example output:
```
COOKIE
CAKE
PIE
COOKIE
CAKE
Hello, World!
!dlroW ,olleH
```

## ⚡ Highlights

1. **`range <>` syntax**: Declares an unconstrained array type
2. **Automatic bounds**: Object creation determines the actual index range
3. **String is unconstrained**: Ada's `String` type is declared as `array (Positive range <>) of Character`
4. **'Range attribute**: Essential for safe iteration without knowing exact bounds
5. **Reverse iteration**: Use `reverse` keyword in loops to traverse backwards

## 🔍 Comparison with Other Languages

| Ada Unconstrained Arrays | C | Python |
|--------------------------|---|--------|
| Type-safe, bounds determined at object creation | Array parameters decay to pointers, size lost | Lists are dynamic, no fixed size needed |
| Strong typing preserved | Manual size tracking required | Duck-typed, flexible but less safe |
| Built-in bounds attributes ('Range, 'First, 'Last) | No native bounds info | len() function for size |

## 📝 Best Practices

- Use unconstrained arrays for flexible subprogram parameters
- Always iterate with `'Range` to avoid hardcoded bounds
- Remember that `String` is an unconstrained array of `Character`
- Leverage `'First`, `'Last`, and `'Length` attributes for bounds queries
- Prefer unconstrained types when the size varies between uses

## 🔗 Resources

- Ada Reference Manual — Arrays (Section 3.6)
- Ada Reference Manual — String Types
- Learn Ada tutorials on unconstrained arrays

## 👤 Author

This exercise set is part of the Learning-Exercices-Ada collection.

## 📄 License

MIT OR Apache-2.0 WITH LLVM-exception
