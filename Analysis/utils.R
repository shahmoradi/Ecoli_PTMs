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

# Helper function to read multiple csv files and combine into a list
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
}

# make a combined data frame from a named list of individual data frames
# adds the names into a column called "sample"
# @param data_list named list of data frames
make_data_frame_from_list <- function(data_list)
{
  # add a sample column
  for(name in names(data_list))
  {
    data_list[[name]] <- data.frame(sample = name, data_list[[name]])  
  }
  data_all <- do.call("rbind", data_list)
  data_all$sample <- factor(data_all$sample)
  row.names(data_all) <- NULL # clear row names
  data_all
}


# Helper function to generate log files
# @param ... One or more messages to write to the log file (\n is appended automatically)
# @param file The file to which to write
# @param append Whether the message should be appended or a new file written
write_to_log <- function(..., file_name = "Rscript.log", append = TRUE)
{
  if (append) mode <- "a"
  else mode <- "w"
  
  fh <- file(file_name, open = mode)
  message <- do.call(paste, list(...))
  print(message)
  write(message, fh)
  close(fh)
}



# function that takes a table with individual modification counts and summarizes them
summarizeMods <- function(mod_counts)
{
  # turn peptide count table into long format
  mod_counts %>% gather(mod, count, 4:length(names(mod_counts))) -> mod_counts.long
  
  # calculate various ratios and odds of modified peptides
  mod_counts.long %>% group_by(mod) %>%
    summarize( sum.mod = sum(count), sum.unmod = sum(unmod), sum.anymod = sum(anymod),
               sum.unmod.for.mod = sum(unmod*(count>0)),
               sum.anymod.for.mod = sum(anymod*(count>0)),
               frac.mod.abs = sum.mod/(sum.anymod + sum.unmod),
               frac.mod.rel = sum.mod/(sum.anymod.for.mod + sum.unmod.for.mod),
               frac.anymod = sum.anymod/(sum.anymod + sum.unmod),
               odds.mod.other = (sum.mod+1)/(sum.anymod.for.mod+sum.unmod.for.mod-sum.mod+1))
}