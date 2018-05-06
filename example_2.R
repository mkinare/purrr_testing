# Script to test few basic usecases for purrr
# In this usecase we have 2 lists with different entries
# Objective is to create a single list with is a set containing
# all possible combinations of the two lists
#
# For example
# listA is
# [1] "ETRSL8358R" "KBMJT5340W" "UPNBR7402X"
# [4] "CDIVH5382Q" "RDAJE1341B" "FAOTX3401K"
# [7] "PAWQL6804R" "LBKAY2054C" "XRHPG7458U"
# [10] "VIUKT3034B" "GGFGX5831E" "HZHEU2728Q"
# [13] "AVKLE4760Q" "EAWDC7689V" "PYFSP2771M"
# [16] "VNUTU9008F" "PXEVZ1764J" "SGOAP1486M"
# [19] "OMMCR4564P" "AONTT9298J"
# we will be using listA<- random_string(20)
#
# listB is
# [1] "ILNFX5568R" "SUMEZ2646C" "VNILG9245D"
# [4] "PWJHS2920H" "YDQDF3803U
# we will be using listB<- random_string(5)
#
# Expectation is a listC which is a list with 100
# elements which are a result of all possible
# combinations of listA and listB
#
# Expected listC is

# [[1]]
# [[1]][[1]]
# [1] "ILNFX5568R" "ETRSL8358R"
#
# [[1]][[2]]
# [1] "SUMEZ2646C" "ETRSL8358R"
#
# [[1]][[3]]
# [1] "VNILG9245D" "ETRSL8358R"
#
# [[1]][[4]]
# [1] "PWJHS2920H" "ETRSL8358R"
#
# [[1]][[5]]
# [1] "YDQDF3803U" "ETRSL8358R"
#
#
# [[2]]
# [[2]][[1]]
# [1] "ILNFX5568R" "KBMJT5340W"
#
# [[2]][[2]]
# [1] "SUMEZ2646C" "KBMJT5340W"
#
# [[2]][[3]]
# [1] "VNILG9245D" "KBMJT5340W"
#
# [[2]][[4]]
# [1] "PWJHS2920H" "KBMJT5340W"
#
# [[2]][[5]]
# [1] "YDQDF3803U" "KBMJT5340W"
#
#
# [[3]]
# [[3]][[1]]
# [1] "ILNFX5568R" "UPNBR7402X"
#
# [[3]][[2]]
# [1] "SUMEZ2646C" "UPNBR7402X"
#
# [[3]][[3]]
# [1] "VNILG9245D" "UPNBR7402X"
#
# [[3]][[4]]
# [1] "PWJHS2920H" "UPNBR7402X"
#
# [[3]][[5]]
# [1] "YDQDF3803U" "UPNBR7402X"
#
#
# [[4]]
# [[4]][[1]]
# [1] "ILNFX5568R" "CDIVH5382Q"
#
# [[4]][[2]]
# [1] "SUMEZ2646C" "CDIVH5382Q"
#
# [[4]][[3]]
# [1] "VNILG9245D" "CDIVH5382Q"
#
# [[4]][[4]]
# [1] "PWJHS2920H" "CDIVH5382Q"
#
# [[4]][[5]]
# [1] "YDQDF3803U" "CDIVH5382Q"
#
#
# [[5]]
# [[5]][[1]]
# [1] "ILNFX5568R" "RDAJE1341B"
#
# [[5]][[2]]
# [1] "SUMEZ2646C" "RDAJE1341B"
#
# [[5]][[3]]
# [1] "VNILG9245D" "RDAJE1341B"
#
# [[5]][[4]]
# [1] "PWJHS2920H" "RDAJE1341B"
#
# [[5]][[5]]
# [1] "YDQDF3803U" "RDAJE1341B"
#
#
# [[6]]
# [[6]][[1]]
# [1] "ILNFX5568R" "FAOTX3401K"
#
# [[6]][[2]]
# [1] "SUMEZ2646C" "FAOTX3401K"
#
# [[6]][[3]]
# [1] "VNILG9245D" "FAOTX3401K"
#
# [[6]][[4]]
# [1] "PWJHS2920H" "FAOTX3401K"
#
# [[6]][[5]]
# [1] "YDQDF3803U" "FAOTX3401K"
#
#
# [[7]]
# [[7]][[1]]
# [1] "ILNFX5568R" "PAWQL6804R"
#
# [[7]][[2]]
# [1] "SUMEZ2646C" "PAWQL6804R"
#
# [[7]][[3]]
# [1] "VNILG9245D" "PAWQL6804R"
#
# [[7]][[4]]
# [1] "PWJHS2920H" "PAWQL6804R"
#
# [[7]][[5]]
# [1] "YDQDF3803U" "PAWQL6804R"
#
#
# [[8]]
# [[8]][[1]]
# [1] "ILNFX5568R" "LBKAY2054C"
#
# [[8]][[2]]
# [1] "SUMEZ2646C" "LBKAY2054C"
#
# [[8]][[3]]
# [1] "VNILG9245D" "LBKAY2054C"
#
# [[8]][[4]]
# [1] "PWJHS2920H" "LBKAY2054C"
#
# [[8]][[5]]
# [1] "YDQDF3803U" "LBKAY2054C"
#
#
# [[9]]
# [[9]][[1]]
# [1] "ILNFX5568R" "XRHPG7458U"
#
# [[9]][[2]]
# [1] "SUMEZ2646C" "XRHPG7458U"
#
# [[9]][[3]]
# [1] "VNILG9245D" "XRHPG7458U"
#
# [[9]][[4]]
# [1] "PWJHS2920H" "XRHPG7458U"
#
# [[9]][[5]]
# [1] "YDQDF3803U" "XRHPG7458U"
#
#
# [[10]]
# [[10]][[1]]
# [1] "ILNFX5568R" "VIUKT3034B"
#
# [[10]][[2]]
# [1] "SUMEZ2646C" "VIUKT3034B"
#
# [[10]][[3]]
# [1] "VNILG9245D" "VIUKT3034B"
#
# [[10]][[4]]
# [1] "PWJHS2920H" "VIUKT3034B"
#
# [[10]][[5]]
# [1] "YDQDF3803U" "VIUKT3034B"
#
#
# [[11]]
# [[11]][[1]]
# [1] "ILNFX5568R" "GGFGX5831E"
#
# [[11]][[2]]
# [1] "SUMEZ2646C" "GGFGX5831E"
#
# [[11]][[3]]
# [1] "VNILG9245D" "GGFGX5831E"
#
# [[11]][[4]]
# [1] "PWJHS2920H" "GGFGX5831E"
#
# [[11]][[5]]
# [1] "YDQDF3803U" "GGFGX5831E"
#
#
# [[12]]
# [[12]][[1]]
# [1] "ILNFX5568R" "HZHEU2728Q"
#
# [[12]][[2]]
# [1] "SUMEZ2646C" "HZHEU2728Q"
#
# [[12]][[3]]
# [1] "VNILG9245D" "HZHEU2728Q"
#
# [[12]][[4]]
# [1] "PWJHS2920H" "HZHEU2728Q"
#
# [[12]][[5]]
# [1] "YDQDF3803U" "HZHEU2728Q"
#
#
# [[13]]
# [[13]][[1]]
# [1] "ILNFX5568R" "AVKLE4760Q"
#
# [[13]][[2]]
# [1] "SUMEZ2646C" "AVKLE4760Q"
#
# [[13]][[3]]
# [1] "VNILG9245D" "AVKLE4760Q"
#
# [[13]][[4]]
# [1] "PWJHS2920H" "AVKLE4760Q"
#
# [[13]][[5]]
# [1] "YDQDF3803U" "AVKLE4760Q"
#
#
# [[14]]
# [[14]][[1]]
# [1] "ILNFX5568R" "EAWDC7689V"
#
# [[14]][[2]]
# [1] "SUMEZ2646C" "EAWDC7689V"
#
# [[14]][[3]]
# [1] "VNILG9245D" "EAWDC7689V"
#
# [[14]][[4]]
# [1] "PWJHS2920H" "EAWDC7689V"
#
# [[14]][[5]]
# [1] "YDQDF3803U" "EAWDC7689V"
#
#
# [[15]]
# [[15]][[1]]
# [1] "ILNFX5568R" "PYFSP2771M"
#
# [[15]][[2]]
# [1] "SUMEZ2646C" "PYFSP2771M"
#
# [[15]][[3]]
# [1] "VNILG9245D" "PYFSP2771M"
#
# [[15]][[4]]
# [1] "PWJHS2920H" "PYFSP2771M"
#
# [[15]][[5]]
# [1] "YDQDF3803U" "PYFSP2771M"
#
#
# [[16]]
# [[16]][[1]]
# [1] "ILNFX5568R" "VNUTU9008F"
#
# [[16]][[2]]
# [1] "SUMEZ2646C" "VNUTU9008F"
#
# [[16]][[3]]
# [1] "VNILG9245D" "VNUTU9008F"
#
# [[16]][[4]]
# [1] "PWJHS2920H" "VNUTU9008F"
#
# [[16]][[5]]
# [1] "YDQDF3803U" "VNUTU9008F"
#
#
# [[17]]
# [[17]][[1]]
# [1] "ILNFX5568R" "PXEVZ1764J"
#
# [[17]][[2]]
# [1] "SUMEZ2646C" "PXEVZ1764J"
#
# [[17]][[3]]
# [1] "VNILG9245D" "PXEVZ1764J"
#
# [[17]][[4]]
# [1] "PWJHS2920H" "PXEVZ1764J"
#
# [[17]][[5]]
# [1] "YDQDF3803U" "PXEVZ1764J"
#
#
# [[18]]
# [[18]][[1]]
# [1] "ILNFX5568R" "SGOAP1486M"
#
# [[18]][[2]]
# [1] "SUMEZ2646C" "SGOAP1486M"
#
# [[18]][[3]]
# [1] "VNILG9245D" "SGOAP1486M"
#
# [[18]][[4]]
# [1] "PWJHS2920H" "SGOAP1486M"
#
# [[18]][[5]]
# [1] "YDQDF3803U" "SGOAP1486M"
#
#
# [[19]]
# [[19]][[1]]
# [1] "ILNFX5568R" "OMMCR4564P"
#
# [[19]][[2]]
# [1] "SUMEZ2646C" "OMMCR4564P"
#
# [[19]][[3]]
# [1] "VNILG9245D" "OMMCR4564P"
#
# [[19]][[4]]
# [1] "PWJHS2920H" "OMMCR4564P"
#
# [[19]][[5]]
# [1] "YDQDF3803U" "OMMCR4564P"
#
#
# [[20]]
# [[20]][[1]]
# [1] "ILNFX5568R" "AONTT9298J"
#
# [[20]][[2]]
# [1] "SUMEZ2646C" "AONTT9298J"
#
# [[20]][[3]]
# [1] "VNILG9245D" "AONTT9298J"
#
# [[20]][[4]]
# [1] "PWJHS2920H" "AONTT9298J"
#
# [[20]][[5]]
# [1] "YDQDF3803U" "AONTT9298J"


# Sourcing essential files
# Obtain working directory
wd<- getwd()

source(paste0(wd,'/dependencies_library.R'))
source(paste0(wd,'/function_random_string.R'))
source(paste0(wd,'/function_list2dt.R'))

# Generating the lists for consumption
print("Start of creating listA")
start<- Sys.time()
listA <- random_string(1000)
print(Sys.time()-start)
print("End of creation of listA")

print("Start of creating listB")
start<- Sys.time()
listB <- random_string(1000)
print(Sys.time()-start)
print("End of creation of listB")


# Using traditional R we will be generating
# listC using 2 for loops
# defining the temp output
listC <- vector("list", 0)

print("Start of traditional R for loop")
start<- Sys.time()
for (i in seq_along(listA)) {
  # defining the temp output
  listC_temp_1 <- vector("list", 0)
  
  for (j in seq_along(listB)) {
    listC_temp_1[j][[1]][[1]] <- listB[j]
    listC_temp_1[j][[1]][[2]] <- listA[i]
  }
  listC[[i]] <- listC_temp_1
}

print(Sys.time()-start)
print("End of traditional R for loop")

#  Using functional program so that we can consume
# this using purrr map functions
# Eliminating one for loop just based on the function

print("Start of one for loop removal")
start<- Sys.time()

# defining the temp output
dt <- vector("list", 0)

for (i in seq_along(listB)) {
  
  dt[[i]]<- list2dt(list1 = listA, object1 = listB[[i]])
  
}

listC_dt<- rbind(dt)

print(Sys.time()-start)
print("End of one for loop removal")

# Using map from purrr

print("Start of purrr")
start<- Sys.time()

listC_dt_purrr<- map(listB,~list2dt(list1 = listA, object1 =.x)) %>% rbindlist

print(Sys.time()-start)
print("End of purrr")

# Using map from purrr with future - furrr!

plan(multisession)

print("Start of purrr with furrr implicit")
start<- Sys.time()

#listC_dt_furrr<- map(listB,~list2dt(list1 = listA, object1 =.x)) %>% rbindlist
listC_dt_furrr_imp %<-% map(listB,~list2dt(list1 = listA, object1 =.x)) 
listC_dt_furrr_imp_op %<-% rbindlist(listC_dt_furrr_imp)

print(Sys.time()-start)
print("End of furrr implicit")