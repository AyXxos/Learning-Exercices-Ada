# Records in Ada

An educational project demonstrating the use of record types in Ada programming language.

## Description

This project provides a practical introduction to Ada records, showing how to:
- Define record types with multiple fields
- Use enumerated types within records
- Create procedures that work with records
- Pass records as parameters (both `in` and `in out` modes)
- Initialize and modify record values

## Project Structure

- `src/records.adb` - Main program demonstrating record usage with a Date type example
- `alire.toml` - Alire project configuration
- `records.gpr` - GNAT project file

## Code Overview

The program demonstrates:

1. **Type Definitions**:
   - `Months` enumerated type for month names
   - `Day_Range` subtype constraining day values (1-31)
   - `Date` record type containing day, month, and year fields

2. **Procedures**:
   - `Display_Date` - Outputs a formatted date
   - `Change_Day_Of_Date` - Modifies the day field of a date (demonstrates `in out` parameter)

3. **Example Usage**:
   - Creates a birth date record
   - Displays the date
   - Modifies the day value
   - Displays the updated date

## Building and Running

### Prerequisites
- Ada compiler (GNAT)
- Alire (Ada package manager)

### Build
```bash
alr build
```

### Run
```bash
alr run
```

Or directly:
```bash
./bin/records
```

## Expected Output

```
Day 2, Month OCTOBER, Year 203
After changing the day:
Day 15, Month OCTOBER, Year 203
```

## Learning Objectives

- Understand how to define and use record types in Ada
- Learn about type composition (combining enumerations, subtypes, and ranges)
- Practice working with procedures that modify records
- Explore Ada's parameter passing modes (`in` vs `in out`)

## Author

**AyXxos**
- Website: [ayxxos.netlify.app](https://ayxxos.netlify.app)

## License

MIT OR Apache-2.0 WITH LLVM-exception
