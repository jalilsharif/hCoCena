% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/import_clusters.R
\name{import_clusters}
\alias{import_clusters}
\title{Import Clusters From File}
\usage{
import_clusters(file, sep = "\\t", header = T)
}
\arguments{
\item{file}{File path.}

\item{sep}{The separator of the file. Default is tab-separated.}

\item{header}{A Boolean. Whether or not the file has headers (column names).}
}
\description{
Uses an imported clustering model instead of clustering the integrated network.
The model must be saved as two columns, the first containing genes, the second cluster colors (this is the format export_clusters() exports to).
}
