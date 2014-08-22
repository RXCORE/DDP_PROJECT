shinyUI(pageWithSidebar(
	headerPanel("Calculating for the Resultant Vector"),
	sidebarPanel(
              p('To calculate for the resultant vector of two given positive values.
               '),
		numericInput('ix', 'Numeric input for x', 0, min = 0, max = 1000, step = 1),
		numericInput('iy', 'Numeric input for y', 0, min = 0, max = 1000, step = 1),
		 
                p('Note on usage:  currently does not accept negative values, and has a maximum 			value of 1000 for each variable.') ,
		p('-----------------------------------------------------------------------'),
 		p('This is for the Developing Data Products class of the John Hopkins Bloomberg
                  School of Public Health.'),
                p('Created by Ron Rick Chua') 
		),  

	mainPanel(
                h3('Resultant Vector Graph'),
                plotOutput("ZPlot"), 
		h3('Illustrating outputs'),
		h4('Value of x'),
		verbatimTextOutput("ox"),
		h4('Value of y'),
		verbatimTextOutput("oy"),
		h4('Resultant Vector Value z'),
		verbatimTextOutput("oz"),

 		h4('Date Today'),
		verbatimTextOutput("odate")

 		# Show a plot of the generated distribution
      		# plotOutput("ZPlot")

		)
))