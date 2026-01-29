# In, Out and In Out Parameters in Ada

## 📚 Objective
This project demonstrates the use of different parameter passing modes in Ada: `in`, `out`, and `in out`.

## 🎯 Key Concepts

### Parameter Modes

In Ada, there are three modes for passing parameters to procedures and functions:

1. **`in`** (default): Read-only parameter
   - The procedure can read the value but cannot modify it
   - This is the default mode if none is specified
   - Used to pass data to a procedure without modifying it

2. **`out`**: Write-only parameter
   - The procedure can modify the value but cannot read it
   - Used to return results from a procedure
   - The input value is not guaranteed

3. **`in out`**: Read/write parameter
   - The procedure can both read and modify the value
   - Used when you want to modify an existing variable
   - Allows update operations

## 💻 Code Example

```ada
with Ada.Text_IO; use Ada.Text_IO;

procedure Inoutparameters is
   
   -- Procedure with IN parameter (read-only)
   procedure Display_Money (Account : in Float) is
   begin
      Put_Line("You currently have :" & Float'Image(Account));
   end Display_Money;

   my_account : Float := 1000.00;
   bonus : Float := 0.0;

begin
   Display_Money (my_account);
end Inoutparameters;
```

### Code Explanation

- **`Display_Money`**: Procedure that displays an account balance
  - The `Account` parameter is of type `in Float`
  - The procedure can read the value but cannot modify it
  - This ensures that the original balance will not be altered

## 🔧 Usage Examples

### `in` Parameter (read-only)
```ada
procedure Display_Money (Account : in Float) is
begin
   Put_Line("Balance: " & Float'Image(Account));
   -- Account := Account + 100.0; -- ERROR: cannot modify an IN parameter
end Display_Money;
```

### `out` Parameter (write-only)
```ada
procedure Calculate_Bonus (Amount : out Float) is
begin
   Amount := 150.0;  -- OK: we can write to an OUT parameter
   -- Put_Line(Float'Image(Amount)); -- May work but not recommended
end Calculate_Bonus;
```

### `in out` Parameter (read/write)
```ada
procedure Add_Bonus (Account : in out Float; Bonus : in Float) is
begin
   Account := Account + Bonus;  -- OK: we can read AND modify
   Put_Line("New balance: " & Float'Image(Account));
end Add_Bonus;
```

## 🚀 Compilation and Execution

### With Alire
```bash
# Compile the project
alr build

# Run the program
alr run
```

### With GNAT directly
```bash
# Compile
gnatmake src/inoutparameters.adb

# Execute
./inoutparameters
```

## 📊 Expected Output

```
You currently have : 1.00000E+03
```

## ⚡ Advantages of Parameter Modes

1. **Safety**: The compiler prevents accidental modifications
2. **Clarity**: You immediately know if a procedure modifies its parameters
3. **Optimization**: The compiler can optimize based on the mode
4. **Documentation**: The mode is part of the interface and documents the intent

## 📝 Best Practices

- Use `in` when you only need to read the value
- Use `out` to return calculated results
- Use `in out` only when you need to modify an existing value
- Prefer functions to return a single value rather than an `out` parameter

## 🔗 Resources

- [Ada Reference Manual - Subprogram Parameters](https://www.adaic.org/resources/add_content/standards/12rm/html/RM-6-1.html)
- [Learn Ada - Subprograms](https://learn.adacore.com/courses/intro-to-ada/chapters/subprograms.html)

## 👤 Author

**AyXxos**
- Website: [ayxxos.netlify.app](https://ayxxos.netlify.app)

## 📄 License

MIT OR Apache-2.0 WITH LLVM-exception
