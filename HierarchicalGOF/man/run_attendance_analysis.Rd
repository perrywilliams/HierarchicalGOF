% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_attendance_code.R
\name{run_attendance_analysis}
\alias{run_attendance_analysis}
\title{Open code and run the attendance analysis}
\usage{
run_attendance_analysis(show = TRUE, run = FALSE)
}
\arguments{
\item{show}{Logical. Whether or not to show the .R files that have the code to run the analysis. Set to 
TRUE by default}

\item{run}{Logical. Whether to run the full analysis or not. Set for 55,000 posterior draws, so it can take a while
adjust it if you want by first setting \code{show=FALSE}, change the number of draws, and source the changed files.}
}
\description{
This umbrella function will fit the HSMM analysis of sea lion attendance data.
}
\details{
The funciton first fits the models via MLE then takes the posterior modes and uses the MLE 
asymptotic sampling distribution as a starting place for an adaptive importance sampler to draw the MCMC
sample. This function will open the .R files as it uses them. It is necessary to compile the c++ code that
is used, so, Rtools is necessary to run the code. In addition the package 'hsmm' from jlaake needs to be installed from 
GitHub via \code{devtools::install_github("jlaake/hsmm/hsmm")}. The function will automatically do this 
but Rtools is necessary (the abbility to compile source code).

The function will only show the .R files by default. This is because it is somewhat time consuming to 
run the sampler.
}
\author{
Devin S. Johnson
}
