# Run with Rscript <path_to_get_src_file_path>
# get src file path like __file__ in Python

getFilename <- function() { 
   args <- commandArgs()
   print(args)
   filearg <- grep("^--file=", args, value=TRUE) 
   if (length(filearg)) 
     sub("^--file=", "", filearg) 
   else 
     invisible(NULL) 
} 

print(normalizePath(getFilename()))