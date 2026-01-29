# Child Packages in Ada

## 📚 Objective
This project demonstrates the use of child packages in Ada, a powerful feature for organizing and structuring code in a modular and hierarchical way.

## 🎯 Key Concepts

### What are Child Packages?

In Ada, a **child package** is a package that extends a parent package. It has access to all public declarations of its parent package and can add new functionalities while maintaining a clear hierarchical structure.

**Advantages:**
- **Better organization**: Group related functionalities logically
- **Access to parent**: Child packages can access private elements of their parent
- **Namespace management**: Avoid name conflicts with a clear hierarchy
- **Modularity**: Separate functionalities into distinct files while maintaining cohesion

### Naming Convention

Child packages follow a specific naming convention:
```
Parent_Package.Child_Package
```

In this project:
- **Parent package**: `Week`
- **Child packages**: `Week.ChildMon` and `Week.ChildTue`

## 💻 Project Structure

```
src/
├── week.ads                    # Parent package specification
├── childpackages.adb          # Main program
└── childs/
    ├── week-childmon.ads      # Child package specification (Monday)
    ├── week-childmon.adb      # Child package body (Monday)
    ├── week-childtue.ads      # Child package specification (Tuesday)
    └── week-childtue.adb      # Child package body (Tuesday)
```

## 📝 Code Explanation

### Parent Package: `Week`

```ada
package Week is
   Mon : constant String := "Monday";
   Tue : constant String := "Tuesday";
   Wed : constant String := "Wednesday";
   Thu : constant String := "Thursday";
   Fri : constant String := "Friday";
   Sat : constant String := "Saturday";
   Sun : constant String := "Sunday";
end Week;
```

The parent package defines constants for each day of the week.

### Child Package: `Week.ChildMon`

**Specification (.ads):**
```ada
package Week.ChildMon is
   function Get_First_Day_Of_Week return String;
end Week.ChildMon;
```

**Body (.adb):**
```ada
package body Week.ChildMon is
   function Get_First_Day_Of_Week return String is
   begin
      return Mon;  -- Access to parent's constant
   end Get_First_Day_Of_Week;
end Week.ChildMon;
```

The child package `Week.ChildMon` can directly access the `Mon` constant from its parent package `Week`.

### Child Package: `Week.ChildTue`

Similar structure for Tuesday:
```ada
package Week.ChildTue is
   function Get_Second_Day_Of_Week return String;
end Week.ChildTue;
```

### Main Program

```ada
with Ada.Text_IO; use Ada.Text_IO;
with Week.ChildMon; use Week.ChildMon;
with Week.ChildTue;

procedure Childpackages is
begin
   Put_Line ("The first day of the week is " & Get_First_Day_Of_Week);
   Put_Line ("And the second day of the week is "
   &  Week.ChildTue.Get_Second_Day_Of_Week);
end Childpackages;
```

**Notes:**
- `Week.ChildMon` is imported with `use`, so we can call `Get_First_Day_Of_Week` directly
- `Week.ChildTue` is imported without `use`, so we need to prefix the function: `Week.ChildTue.Get_Second_Day_Of_Week`

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
gnatmake src/childpackages.adb

# Execute
./childpackages
```

## 📊 Expected Output

```
The first day of the week is Monday
And the second day of the week is Tuesday
```

## ⚡ Key Features of Child Packages

1. **Automatic visibility**: Child packages automatically see all public declarations of the parent
2. **Access to private**: Child packages can access private elements of the parent (not shown in this example)
3. **File organization**: The file naming convention `parent-child.ads` helps organize code
4. **Hierarchical structure**: Create multiple levels: `Parent.Child.Grandchild`
5. **Separate compilation**: Each child package can be compiled independently

## 🔍 Comparison with Other Languages

| Ada (Child Packages) | C++ | Java | Python |
|---------------------|-----|------|--------|
| `Week.ChildMon` | Nested classes or namespaces | Inner classes | Nested classes or modules |
| Direct access to parent | Depends on access control | Can access outer class | Can access outer scope |
| Compile-time hierarchy | Structure varies | Runtime hierarchy | Dynamic modules |

## 📝 Best Practices

- Use child packages to extend functionality of a parent package
- Maintain a clear and logical hierarchy
- Follow the naming convention: `parent-child.ads` for files
- Use child packages to organize large projects into modules
- Avoid creating too deep hierarchies (2-3 levels is usually sufficient)

## 🔗 Resources

- [Ada Reference Manual - Child Units](https://www.adaic.org/resources/add_content/standards/12rm/html/RM-10-1-1.html)
- [Learn Ada - Packages](https://learn.adacore.com/courses/intro-to-ada/chapters/modular_programming.html)
- [Ada Wikibook - Child Packages](https://en.wikibooks.org/wiki/Ada_Programming/Packages#Child_packages)

## 👤 Author

**AyXxos**
- Website: [ayxxos.netlify.app](https://ayxxos.netlify.app)

## 📄 License

MIT OR Apache-2.0 WITH LLVM-exception
