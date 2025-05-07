rcdso_data <- read_html(https://www.rcdso.org/find-a-dentist/search-results?Alpha=&City=&MbrSpecialty=AN&ConstitID=&District=&AlphaParent=&Address1=&PhoneNum=&SedationType=&SedationProviderType=&GroupCode=&DetailsCode=)

write_html(rcdso_data, "raw_data.html")