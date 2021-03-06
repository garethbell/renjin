#  File src/library/grDevices/R/pictex.R
#  Part of the R package, http://www.R-project.org
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  A copy of the GNU General Public License is available at
#  http://www.r-project.org/Licenses/

pictex <-
    function(file = "Rplots.tex", width = 5, height = 4, debug = FALSE,
	     bg = "white", fg = "black")
{
    .External(PicTeX, file, bg, fg, width, height, as.logical(debug))

    graphics::par(mar = c(5,4,2,4)+0.1)
}
