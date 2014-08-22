shinyServer(
	function(input, output) {
		output$ox <- renderPrint({input$ix})
		output$oy <- renderPrint({input$iy})
		output$oz <- renderPrint({sqrt((input$ix*input$ix) + (input$iy*input$iy))})
 		output$odate <- renderPrint({date()})
                 
                # output$distPlot <- renderPlot({
    		# x    <- faithful[, 2]  # Old Faithful Geyser data
    		# bins <- seq(min(x), max(x), length.out = input$bins + 1)

    		# draw the histogram with the specified number of bins
    		# hist(x, breaks = bins, col = 'darkgray', border = 'white')
 		# })
		
		output$ZPlot <- renderPlot({

			plot( c(0,input$ix),c(input$iy,0),xlab="x", ylab="y")
			arrows(0,0,input$ix,0)
			arrows(0,0,0,input$iy)
			arrows(input$ix,0,0,input$iy,  col ="red", font=2)   # OZ
                         
			text((input$ix* 0.90),(input$iy* 0.50), 
                        paste("z Resultant:", sqrt((input$ix*input$ix) + (input$iy*input$iy)), sep=" "), 
			col = "red", adj = c(1, -.1), font=2)
 		})


           })

 

