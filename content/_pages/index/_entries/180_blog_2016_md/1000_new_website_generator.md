


Test.

**Test bold.**

*Test italic.*


```cpp
#include <iostream>

// c++ code
int main()
{
    auto x;
    constexpr std::size_t x;
}

void aaa(int, float) noexcept;
```

Here's a list:

* A.

* B.

* C.

Need some cool math as well:

$100 + \frac{24}{25} - \theta$

```xml
<?xml version="1.0" encoding="UTF-8"?>

<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0
                             http://maven.apache.org/maven-v4_0_0.xsd">
  <modelVersion>4.0.0</modelVersion>
  <groupId>example</groupId>
  <artifactId>example</artifactId>
  <version>1.0-SNAPSHOT</version>
  <dependencies>
    <dependency>
      <groupId>org.python</groupId>
      <artifactId>jython-standalone</artifactId>
      <version>2.5.3</version>
    </dependency>
    <dependency>
      <groupId>org.pygments</groupId>
      <artifactId>pygments</artifactId>
      <version>1.5</version>
      <scope>runtime</scope>
    </dependency>
  </dependencies>
</project>
```

~~AAAAA~~



```java
PythonInterpreter interpreter = new PythonInterpreter();

// Set a variable with the content you want to work with
interpreter.set("code", code);

// Simple use Pygments as you would in Python
interpreter.exec("from pygments import highlight\n"
    + "from pygments.lexers import PythonLexer\n"
    + "from pygments.formatters import HtmlFormatter\n"
    + "\nresult = highlight(code, PythonLexer(), HtmlFormatter())");

// Get the result that has been set in a variable
System.out.println(interpreter.get("result", String.class));
```

> This is a block quote. This
> paragraph has two lines.
>
> 1. This is a list inside a block quote.
> 2. Second item.


AAA

> This is a block quote.
>
> > A block quote within a block quote.


A TABLE XD!!!

Right     Left     Center     Default
-------     ------ ----------   -------
     12     12        12            12
    123     123       123          123
      1     1          1             1

Table:  Demonstration of simple table syntax.