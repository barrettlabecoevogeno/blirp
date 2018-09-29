# library(xlsx)
export.file.names.in.table <- function(my.path) {
  # my.path = "/Volumes/folderX" # On a external hard drive
  # my.path = "~/Desktop/folderX" # Desktop
  vec.jpg = list.files(path = my.path)
  lapply(paste(my.path,vec.jpg,sep = "/"),FUN =  file.ctime)

  # Not giving the right date
  #file.info(paste(my.path,vec.jpg[1], sep="/"))$ctime

  # You can revome some information by doing this:
  # vec.jpg=vec.jpg[-which(vec.jpg %in% c("IMG_0858.MOV", "IMG_1761.MOV"))]

  read_exif(paste(my.path,vec.jpg[874], sep="/"))$origin_timestamp

  res=lapply(paste(my.path,vec.jpg,sep = "/"),
             FUN =  read_exif)
  time.jpg = NULL
  for(i in 1:length(res)) {time.jpg=c(time.jpg,res[[i]]$origin_timestamp)}
  time.jpg
  time.jpg.f=as.Date(substr(time.jpg,0,10),format = "%Y:%m:%d")
  table(as.factor(substr(vec.jpg,9,12)))


  library(xlsx)
  library(exif)

  df=data.frame(old.photo.ID =vec.jpg,
                new.photo.ID = rep(NA, length(vec.jpg)),
                species = rep(NA, length(vec.jpg)),
                ID= rep(NA, length(vec.jpg)),
                colour.band.R.L = rep(NA, length(vec.jpg)),
                date.of.photo= as.character(time.jpg.f),
                site= rep(NA, length(vec.jpg)),
                detail= rep(NA, length(vec.jpg)),
                date= rep(NA, length(vec.jpg)),
                initials= rep(NA, length(vec.jpg)),
                Comments= rep(NA, length(vec.jpg)))
  write.xlsx(df,
             file = "~/Desktop/old_photo_ID_image_name.xlsx",
             row.names = FALSE)
}
