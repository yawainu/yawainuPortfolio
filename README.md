# yawainuPortfolio
ポートフォリオサイト制作

# Memo
rails generate model User address:string password:string image:string comment:text
rails generate model Cover image:string flag:boolean
rails generate model Category title:string flag:boolean
rails generate model Gallery image:string title:string comment:text flag:boolean
rails generate model Work start_date:date end_date:date comment:text flag:boolean
rails generate model Display cover:boolean gallery:boolean work:boolean contact:boolean
