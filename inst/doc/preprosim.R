## ------------------------------------------------------------------------
# library(preprosim)
# preprosimplot(preprosimrun(iris))

## ---- results='hide', message=FALSE, warning=FALSE, fig.width=8----------
library(preprosim)
res <- preprosimrun(iris, param=newparam(iris, "custom", x="misval", z="noise"), caretmodel="rpart", holdoutrounds = 2, verbose=FALSE)
preprosimplot(res)
preprosimplot(res, "xz", x="misval", z="noise")

