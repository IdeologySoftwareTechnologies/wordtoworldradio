#Word To World Radio


select * from chapters where  chapterId%2==0(select customerId from orders where createdate >= getdate() - 30)