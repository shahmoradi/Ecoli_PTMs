# Helper function to save a named list of data frames as separate csv files
# @param data_list list of data frames (named)
# @param base_name part of the file name that is appended to the name of each data frame
# @param target_folder location where the files should be stored
# @param gz should files be compressed or not?
writeCSVFromList <- function(data_list, base_name, target_folder, gz = FALSE)
{
  for(name in names(data_list))
  {
    filename <- file.path(target_folder, paste(name, base_name, sep=''))
    cat("Writing file:", filename, "\n")
    if (gz) # should files be compressed?
      f <- gzfile(filename)
    else
      f <- filename
    write.csv(data_list[[name]], f, row.names = FALSE)
  }
}
