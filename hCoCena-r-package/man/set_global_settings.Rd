% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/set_global_settings.R
\name{set_global_settings}
\alias{set_global_settings}
\title{Define Global Settings}
\usage{
set_global_settings(
  organism,
  control_keyword,
  variable_of_interest,
  min_nodes_number_for_network = 15,
  min_nodes_number_for_cluster = 15,
  range_GFC = 2,
  layout_algorithm = "layout_with_fr",
  data_in_log
)
}
\arguments{
\item{organism}{Specification of the organism needed for all TF-related analyses. Set to "human" for human data and "mouse" for mouse data. Currently, hCoCena only supports human and mouse data, however, all analysis steps not related to TFs can be applied to other organisms.}

\item{control_keyword}{Either 'none' if no controls are present (only possible when analysing one single dataset) or a string contained in the control sample descriptor of all annotation files, e.g. "healthy".
The string must only be contained in the descriptor, e.g. "healthy" would work for "rhinovirusSetHealthy" and "influenzaSetHealthy", it does not have to match it perfectly.}

\item{variable_of_interest}{The name of the column that mus be rpesent in all annotation files and which will be used for grouping samples, e.g., "condition"".}

\item{min_nodes_number_for_network}{An integer. The minimum number of nodes in the subsequently created network that can define a graph component. Graph components with less nodes will be discarded. Default is 15.}

\item{min_nodes_number_for_cluster}{An integer. The minimum number of nodes that constitute a module/cluster when detecting community structures in the network. Default is 15.}

\item{range_GFC}{A float. Defines the maximum value the group fold changes (GFCs) can acquire, all values above this value or beneath its negative will be truncated. Default is 2.0.}

\item{layout_algorithm}{Layout algorithm used for the network. Can be either "layout_with_fr" (default), which uses the e force directed Fruchtermann-Rheingold-Layout Algorithm, or "cytoscape", in which case the layout is modelled using the force-directed layout
option from the Cytoscape software. Cytoscape must be open in order for R to successfully build the connection. The cutoscape option is reccommended since the layout is oftentimes visually superior.}

\item{data_in_log}{Boolean. Whether or not the provided gene expression data is logged to the base of 2.}
}
\description{
Receives all settings that are globally valid, i.e., that are not dataset specific.
}
