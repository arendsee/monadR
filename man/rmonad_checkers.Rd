% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/access.R
\name{rmonad_checkers}
\alias{rmonad_checkers}
\alias{has_code}
\alias{has_tag}
\alias{has_error}
\alias{has_doc}
\alias{has_warnings}
\alias{has_notes}
\alias{has_meta}
\alias{has_time}
\alias{has_mem}
\alias{has_value}
\alias{has_parents}
\alias{has_dependents}
\alias{has_prior}
\alias{has_nest}
\alias{has_summary}
\title{Vectorized existence checkers for public Rmonad fields}
\usage{
has_code(m, ...)

has_tag(m, ...)

has_error(m, ...)

has_doc(m, ...)

has_warnings(m, ...)

has_notes(m, ...)

has_meta(m, ...)

has_time(m, ...)

has_mem(m, ...)

has_value(m, ...)

has_parents(m, ...)

has_dependents(m, ...)

has_prior(m, ...)

has_nest(m, ...)

has_summary(m, ...)
}
\arguments{
\item{m}{An Rmonad object}

\item{...}{Additional arguments passed to \code{get_*} functions}
}
\description{
Vectorized existence checkers for public Rmonad fields
}
\examples{
data(gff)
m <- gff$good_result

has_code(m)
has_dependents(m)
has_doc(m)
has_error(m)
has_mem(m)
has_meta(m)
has_nest(m)
has_notes(m)
has_parents(m)
has_prior(m)
has_summary(m)
has_time(m)
has_value(m)
has_warnings(m)

# find root nodes
which(!has_parents(m))

# find terminal (output) nodes
which(!has_dependents(m))

# count number of independent chains
sum(has_prior(m)) + 1
}
