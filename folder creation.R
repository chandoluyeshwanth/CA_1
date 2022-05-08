# Set up the folder structure
folder_names <- (
  # Main folders
  c("data", "code", "figures",
    # Sub-folders
    "data/raw", "data/processed"))

for (j in seq_along(folder_names)) {
  dir.create(folder_names[j])
}
# Add files to the folders
file_names <- (
  c(
    # For preparing your data 
    #"1_data_preparation",
    # The merging file might also be combined 
    # with the first file
    "2_Hypothesis testing", 
    # For your descriptives
    "3_Statistical methods",
    # For your analysis
    "4_Results", 
    # For your visualization
    "5_Conclusion"
  )
)

for (j in seq_along(file_names)) {
  file.create(paste0("code/", file_names[j], ".Rmd"))
}
file.create(paste0("code/", "master_script", ".Rmd"))
# Create a helper function file
file.create("code/helper.R")

