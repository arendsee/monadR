setClass(
  "ValueManager",
  representation(
    in_memory = "logical",
    get = "function",
    del = "function",
    chk = "function"
  )
)

setClass(
  "Cacher",
  representation(
    put = "function",
    get = "function",
    del = "function",
    chk = "function",
    bld = "function" # build a ValueManager object
  )
)


setOldClass("igraph")
setClass(
  "Rmonad",
  representation(
    graph = "igraph",
    head = "character",
    data = "list"
  )
)
Rmonad <- function(node_id){
  m <- new("Rmonad")
  m <- .new_rmonad_graph(m, node_id=node_id)
  m@data <- list(RmonadData())
  names(m@data) <- m@head
  m
}

setClass(
  "RmonadData",
  representation(
    value      = "ValueManager",
    key        = "character",
    tag        = "list",
    code       = "character",
    error      = "character",
    warnings   = "character",
    notes      = "character",
    OK         = "logical",
    doc        = "character",
    mem        = "numeric",
    time       = "numeric",
    meta       = "list",
    summary    = "list",
    depth      = "integer",
    nest_depth = "integer",
    stored     = "logical",
    options    = "list"
  )
)
RmonadData <- function(){
  d <- new("RmonadData")
  d@value      <- .default_value()
  d@key        <- .default_key()
  d@tag        <- .default_tag()
  d@code       <- .default_code()
  d@error      <- .default_error()
  d@warnings   <- .default_warnings()
  d@notes      <- .default_notes()
  d@OK         <- .default_OK()
  d@doc        <- .default_doc()
  d@mem        <- .default_mem()
  d@time       <- .default_time()
  d@meta       <- .default_meta()
  d@summary    <- .default_summary()
  d@nest_depth <- .default_nest_depth()
  d@stored     <- .default_stored()
  d@options    <- .default_options()
  d
}
