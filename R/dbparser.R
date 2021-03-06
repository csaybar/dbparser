#' dbparser: A package for reading and parsing \strong{DrugBank} xml with the
#' option to save it in a given db.
#'
#' dbparser package provides three categories of important functions:
#' database related methods, xml db reader and \strong{DrugBank} elements
#'  parsers.
#'
#' @section database functions:
#'  To open a connection to given database in order to store parsed
#'  \strong{DrugBank} elements database
#'
#' @section xml db reader functions:
#'  Reads \strong{DrugBank} xml database and build drug elements full tree in
#'  database
#'
#' @section parsers functions:
#'  Each parser function is responsible of parsing certain drug element and
#'  returning its dataframe
#'  with the ability to save it in a predefined database.
#'
#' @docType package
#' @name dbparser
NULL
