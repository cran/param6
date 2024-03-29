% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prm.R
\name{prm}
\alias{prm}
\title{S3 Parameter Constructor}
\usage{
prm(id, support, value = NULL, tags = NULL, .check = TRUE)
}
\arguments{
\item{id}{(\code{character(1)}) \cr
Parameter identifier.}

\item{support}{\verb{([set6::Set]|character(1))} \cr
Either a set object from
\CRANpkg{set6} or a character representing the set if it is already present
in the \link{support_dictionary}. If a \link[set6:Set]{set6::Set} is provided then the set and
its string representation are added automatically to \link{support_dictionary}
in order to provide fast internal checks. Common sets (such as the reals,
naturals, etc.) are already provided in \link{support_dictionary}.}

\item{value}{\code{ANY} \cr
Optional to assign the parameter, will internally
be checked that it lies within the given support.}

\item{tags}{(\code{character()}) \cr
An optional character vector of tags to apply to the parameter. On their own
tags offer little extra benefit, however they can be assigned properties
when creating \link{ParameterSet} objects that enable them to be more powerful.}

\item{.check}{For internal use only.}
}
\description{
The \code{prm} class is required for \link{ParameterSet} objects, it
allows specifying a parameter as a named set and optionally setting values
and tags.
}
\examples{
library(set6)

# Constructing a prm with a Set support
prm(
 id = "a",
 support = Reals$new(),
 value = 1
)

# Constructing a prm with a support already in the dictionary
prm(
 id = "a",
 support = "reals",
 value = 1
)

# Adding tags
prm(
 id = "a",
 support = "reals",
 value = 1,
 tags = c("tag1", "tag2")
)
}
