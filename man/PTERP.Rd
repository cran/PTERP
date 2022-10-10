\name{PTERP}
\alias{PTERP}
\title{
Estimates PTE and RE}
\description{
Evaluates the strength of a surrogate marker by estimating the proportion of treatment effect explained (PTE) and relative power(RP) for the optimally-transformed version of the surrogate. }
\usage{
PTERP(data,ncut=c(50,100,150,200,500,1000),n.resam=500)
}
\arguments{
   \item{data}{
data}
  \item{ncut}{
relative power is calculated at a specific sample size n; this is a numeric vector of sample sizes for which the user wants the relative power, default is c(50,100,150,200,500,1000)
}
 \item{n.resam}{
number of times to resample, default is 500}
}
\value{
A list of:
\item{ptenew.es}{Proportion of treatment effect estimate}
\item{rp_i1}{Estimate of relative power at n=i1 where i1 is the first value given in ncut}
\item{rp_i2}{Estimate of relative power at n=i2 where i2 is the second value given in ncut, etc.}
\item{pte.se}{Standard error estimate for the proportion of treatment effect explained}
\item{rp.se.i1}{Standard error estimate for the relative power at n=i1 where i1 is the first value given in ncut}
\item{rp.se.i2}{Standard error estimate for the relative power at n=i2 where i2 is the first value given in ncut, etc.}
}

\author{
Xuan Wang
}
\examples{
data(exampledata)
\donttest{
output=PTERP(exampledata,ncut=c(50,100,150,200,500,1000))
}
#reduce resampling
output=PTERP(exampledata,ncut=c(50,100,150,200,500,1000),n.resam=5)
}
