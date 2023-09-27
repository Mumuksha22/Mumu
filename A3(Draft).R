## Download COVID data from OWID GitHub
owidall = read.csv("https://github.com/owid/covid-19-data/blob/master/public/data/owid-covid-data.csv?raw=true")
# Deselect cases/rows with OWID
owidall = owidall[!grepl("^OWID", owidall$iso_code), ]
# Subset by continent: Europe
owideu = subset(owidall, continent=="Europe")

#selected_countries <- c("Spain", "Germany", "Ukraine", "Italy")
#owideu_selected <- subset(owideu, location %in% selected_countries)

# Change NA values to 0 for total deaths
#owideu["total_deaths"][is.na(owideu["total_deaths"])] <- 0

library(ggplot2)

dates <- c("2020-01", "2020-02", "2020-04", "2020-06", "2020-08", 
           "2020-10", "2020-11", "2021-01", "2021-03", "2021-05", "2021-07", 
           "2021-08", "2021-10", "2021-12", "2022-04", "2022-06", "2022-09", 
           "2022-11", "2023-01", "2023-03", "2023-04", "2023-06", "2023-08")

variable <- ggplot(owideu, aes(x=date, y=new_deaths)) + geom_point(color='deeppink') + scale_y_continuous(limits=c(0, 7000)) + 
  xlab("Date") + ylab("COVID Deaths in Europe (Daily)")

variable 



#line 17 from before
#theme(axis.text.x = element_blank(), axis.ticks.x = element_blank()) + 


