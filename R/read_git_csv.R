#' Read CSV from local Git repository
#'
#' Read CSV from local Git repository.
#'
#' @param repo: organization and repostiory name (e.g., 'OHI-Science/ohi-global')
#' @param hex: hex SHA hex of commit (e.g., 'c7c7329')
#' @param path: path to csv file (e.g., 'eez2015/scores.csv')
#'
#' @details This function reads a csv file from a commit from a git repository.
#'
#' @keywords git
#' @examples
#' \dontrun{
#' # get csv from github repository by SHA hex of commit
#' old_data <- read_git_csv('OHI-Science/ohi-global', 'c7c7329', 'eez2015/scores.csv')
#' head(old_data)
#' }
#'
#' @export
read_git_csv = function(repo, hex=NA, path, ...){
  
  data <- read.csv(file.path('https://raw.githubusercontent.com', repo, hex, path))
  
  return(data)
}
