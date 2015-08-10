library("httr")
  
trigger<-c("%%action%%")
if(trigger=='Upload'){
  print('Uploading')
url = "https://myadapa.zementis.com:443/adapars/model"
data<-POST(url, authenticate("%%username%%", "%%pwd%%"), body=list(file=upload_file("%%ModelPath%%")))
print(data)
}else {
  print('Removing')
url = "https://myadapa.zementis.com:443/adapars/model/%%model%%"
data<-DELETE(url, authenticate("armand.ruiz@us.ibm.com", "n097UZ@p"))
}

