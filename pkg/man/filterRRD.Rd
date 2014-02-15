\docType{methods}
\name{filterRRD}
\alias{filter,PRED,function-method}
\alias{filterRRD}
\alias{filterRRD,RDD,function-method}
\title{filter results according to given predicate}
\usage{
filterRRD(X, PRED)

\S4method{filterRRD}{RDD,function}(X, PRED)
}
\arguments{
  \item{X}{The RDD to apply the transformation.}

  \item{PRED}{the predicate to test on each element}
}
\value{
a new RDD created by filtering elements.
}
\description{
This function returs a new RDD containing only the elements
that satisfy a predicate. (We rename it due to signature
inconsistencies with the ‘filter()’ function in R's base
package.)
}
\examples{
\dontrun{
sc <- sparkR.init()
rdd <- parallelize(sc, 1:10)
evens <- filterRRD(rdd, function(x) { x \%\% 2 == 0 })
collect(evens) # 2,4,6,8,10
}
}

