#' Connect to snoflake DB
#'
#'
#'
snowflake_db_connect = function(){

}

#' Query Snowflake DB.
#'
#'
#'
snowflake_db_query = function(){

}

#' Save cache
#'
#'
#'
save_cache = function(){

}

#' Read cache
#'
#'
#'
read_cache = function(){

}

#' Cache a function call.
#'
#'
#'
cache_function_call = function(f, name, force = TRUE, folder){
  return(
   function(...){
     if(force){
       res = f(...)
       save_cache(res, name, folder)
     } else {
       res = read_cache(name, folder)
     }
    }
  )
}
