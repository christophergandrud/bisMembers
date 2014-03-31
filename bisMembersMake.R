###############
# Create BIS members list
# Christopher Gandrud
# 30 March 2014
###############

# Directory to save the data set to
SaveDir <- '/git_repositories/bisMembers/'

# Load countrycode package
library(countrycode)

# Country/jurisdiction list
country <- c('Algeria', 'Argentina', 'Australia', 'Austria', 'Belgium',
             'Bosnia and Herzegovina', 'Brazil', 'Bulgaria', 'Canada', 'Chile',
             'China', 'Colombia', 'Croatia', 'Czech Republic', 'Denmark',
             'Estonia', 'Finland', 'France', 'Germany', 'Greece',
             'Hong Kong SAR', 'Hungary', 'Iceland', 'India', 'Indonesia',
             'Ireland', 'Israel', 'Italy', 'Japan', 'Korea', 'Latvia',
             'Lithuania', 'Luxembourg', 'Macedonia (FYR)', 'Malaysia',
             'Mexico', 'Netherlands', 'New Zealand', 'Norway', 'Peru',
             'Philippines', 'Poland', 'Portugal', 'Romania', 'Russia',
             'Saudi Arabia', 'Serbia', 'Singapore', 'Slovakia', 'Slovenia',
             'South Africa', 'Spain', 'Sweden', 'Switzerland', 'Thailand',
             'Turkey', 'United Arab Emirates', 'United Kingdom',
             'United States of America', 'European Union')

# Find iso2c codes
iso2c <- countrycode(country, origin = 'country.name', destination = 'iso2c')

# Recode European Union 'EU'
iso2c[iso2c == 'RE'] <- 'EU'

# Combine
BISComb <- data.frame(cbind(country, iso2c))

# Order
BISComb <- BISComb[order(BISComb$country), ]

# Save table
write.csv(BISComb, file = paste0(SaveDir, 'bisMembers.csv'), row.names = FALSE)
