#' @import set6
#' @import R6
#' @import dictionar6
#' @importFrom data.table as.data.table data.table :=
#' @importFrom stats setNames
"_PACKAGE"

# nocov start
utils::globalVariables(c("support_dictionary", "on", "id"))


.onLoad = function(libname, pkgname) { # nolint
  assign("support_dictionary", load_support(), envir = topenv())
}
# nocov end
