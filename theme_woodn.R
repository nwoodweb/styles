# Custom Theming for R Graphics
# Nathan Wood 2025 contact@nwoodweb.xyz
# MIT LICENSE

require(ggplot2)

woodn4Color <- c('#FDE725','#55C667','#287D8E','#525252') 

theme_woodn <- function(){
    font <- "Helvetica"
    theme_minimal() %+replace%
    theme(
        panel.grid.major = element_line(colour='#ffffff'),
        panel.grid.minor = element_blank(),
        axis.ticks = element_blank(),
	plot.title = element_text(
            family = font,
            size = 36,
            face = 'bold' 
        ),
        axis.title = element_text(
            family = font,
            size = 24,
            face = 'bold'
        ),
        axis.text = element_text(
            family = font,
            size = 18
        ),
	legend.title = element_text(
		family = font,
		size = 24,
		face = 'bold'
		), 
	legend.text = element_text(
		family = font,
		size = 18
		),
	
    )
}
