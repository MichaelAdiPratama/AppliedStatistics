WD = "C:/Users/Michael Adi/Documents/Semester 4 Genap 22-23/Applied Statistics B/Bahan UAS Applied Statistics"
setwd(WD) # set working directory


telco = read_excel("Telco.xlsx")
telco = telco[,-1]       # Kolom pertama tidak dibaca

Model1 = lm(CustomerID~churn,data=telco) # lm = linier model
summary(Model1)

mod0 = lm (churn~gender+PaymentMethod+InternetService, data= telco)
summary(mod0)
telco
