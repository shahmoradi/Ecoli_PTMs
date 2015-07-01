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

# Helper function to read multiple csv files and combine into one data frame
# @param sample_list list of sample names
# @param base_name part of the file name that is appended to each sample name
# @param target_folder location where the files are stored
# @param ... additional arguments handed to read.csv() 
readCSVFileList <- function(sample_list, base_name, target_folder, ...)
{
  names(sample_list) <- unlist(sample_list)
  fn_list <- lapply(sample_list,
                      function(sample) file.path(target_folder, paste(sample, base_name, sep=''))
                    )
  # read in all the data files
  data_list <- lapply(fn_list, read.csv, ...)
  # add a sample column
  for(name in names(data_list))
  {
    data_list[[name]] <- data.frame(sample = name, data_list[[name]])  
  }
  data_all <- do.call("rbind", data_list)
  data_all$sample <- factor(data_all$sample)
  data_all
}