---
title       : Resultant Vector
subtitle    : For Developing Data product Course
author      : Ron Rick Chua
job         : Basics Developer
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax, quiz, bootstrap]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## This is a basic learning of Resultant Vectors

By Clicking the link below, will direct you the project site.

http://rxcore.shinyapps.io/DDP_PROJECT/

Instructions:

Just fill the tow text boxes with a positive integer and it will automatically compute
for the resultant vector.  

and as an add on, it will also generate a graphical illustration.

--- .class #id 

## Using Pythagorean theorem

In mathematics, the Pythagorean theorem-or Pythagoras's theorem-is a relation in Euclidean geometry among the three sides of a right triangle. It states that the square of the hypotenuse (the side opposite the right angle) is equal to the sum of the squares of the other two sides. The theorem can be written as an equation relating the lengths of the sides a, b and c, often called the Pythagorean equation.*

 $$x^2 + y^2 = z^2$$

This was used as the basis for the method of computation.

 $$z = \sqrt{x^2 + y^2}$$

*Note: See References.

---


## Codes in server.R



```
shinyServer(
  function(input, output) {
		output$ox <- renderPrint({input$ix})
		output$oy <- renderPrint({input$iy})
    #Computing for Z resultant vector
		output$oz <- renderPrint({sqrt((input$ix*input$ix) + (input$iy*input$iy))})
 		output$odate <- renderPrint({date()})
     })
 ```

---

## References

http://en.wikipedia.org/wiki/Pythagorean_theorem

http://www.mathwarehouse.com/vectors/resultant-vector.php




## Thank you

Happy Evaluating my simple project.

Ron Chua


