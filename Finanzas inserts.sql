use Financiero
insert into dbo.Finance(idUser,delay,delayAmount,penalty,penaltyAmount)
values(1,1,2500,0,0)

insert into dbo.Finance(idUser,delay,delayAmount,penalty,penaltyAmount)
values(2,0,0,0,0)

insert into dbo.Finance(idUser,delay,delayAmount,penalty,penaltyAmount)
values(3,1,5000,1,2500)

insert into dbo.Finance(idUser,delay,delayAmount,penalty,penaltyAmount)
values(4,0,0,0,0)

insert into dbo.Finance(idUser,delay,delayAmount,penalty,penaltyAmount)
values(5,1,3000,0,0)

insert into dbo.Finance(idUser,delay,delayAmount,penalty,penaltyAmount)
values(6,0,0,0,0)

insert into dbo.Finance(idUser,delay,delayAmount,penalty,penaltyAmount)
values(11,1,5500,1,2500)

insert into dbo.Finance(idUser,delay,delayAmount,penalty,penaltyAmount)
values(12,1,2500,0,0)

insert into dbo.Finance(idUser,delay,delayAmount,penalty,penaltyAmount)
values(13,0,0,0,0)

insert into dbo.Finance(idUser,delay,delayAmount,penalty,penaltyAmount)
values(14,1,2500,1,2500)

insert into dbo.Finance(idUser,delay,delayAmount,penalty,penaltyAmount)
values(15,0,0,0,0)

insert into dbo.Finance(idUser,delay,delayAmount,penalty,penaltyAmount)
values(16,1,4000,1,5000)

insert into dbo.Finance(idUser,delay,delayAmount,penalty,penaltyAmount)
values(21,1,7500,0,0)

insert into dbo.Finance(idUser,delay,delayAmount,penalty,penaltyAmount)
values(22,0,0,0,0)

insert into dbo.Finance(idUser,delay,delayAmount,penalty,penaltyAmount)
values(23,1,5500,1,2500)

insert into dbo.Finance(idUser,delay,delayAmount,penalty,penaltyAmount)
values(24,1,500,0,0)

insert into dbo.Finance(idUser,delay,delayAmount,penalty,penaltyAmount)
values(25,0,0,0,0)

insert into dbo.Finance(idUser,delay,delayAmount,penalty,penaltyAmount)
values(26,1,2500,0,0)

insert into dbo.Loan(idLoan,idUser,activity,description) 
values (1,1,1,'Hizo el prestamo de Blanca Nieves')

insert into dbo.Loan(idLoan,idUser,activity,description) 
values (2,2,1,'Realizo el prestamo de Twilight')

insert into dbo.Loan(idLoan,idUser,activity,description) 
values (3,3,1,'Hizo el prestamo de el mago de oz')

insert into dbo.Loan(idLoan,idUser,activity,description) 
values (4,4,1,'Hizo el prestamo de Pinocho')

insert into dbo.Loan(idLoan,idUser,activity,description) 
values (5,5,1,'Hizo el prestamo de Harry Potter')

insert into dbo.Loan(idLoan,idUser,activity,description) 
values (6,6,1,'Hizo el prestamo de Don Quijote')



insert into dbo.BankAccount(idBankAccount,ownerName,accountNumber,safetyPin,dueDate,idUser)
values(1,'Federico Fernando Artavia','1236 5495 3256 5472',1234,'01/05/2023',1)

insert into dbo.BankAccount(idBankAccount,ownerName,accountNumber,safetyPin,dueDate,idUser)
values(2,'Maria Jose Ferrer','1254 2369 2145 7856',1472,'10/10/2023',2)

insert into dbo.BankAccount(idBankAccount,ownerName,accountNumber,safetyPin,dueDate,idUser)
values(3,'Stella Rosalia LeonHeart','2654 2369 2145 3698',7561,'10/10/2023',3)

insert into dbo.BankAccount(idBankAccount,ownerName,accountNumber,safetyPin,dueDate,idUser)
values(4,'Lucy Layla Rosales','1569 2147 3698 2546',4219,'10/01/2023',4)
--help 
insert into dbo.BankAccount(idBankAccount,ownerName,accountNumber,safetyPin,dueDate,idUser)
values(5,'Natsu Haru Dragoignnel','7853 1584 3598 1234',1598,'10/01/2023',5)

insert into dbo.BankAccount(idBankAccount,ownerName,accountNumber,safetyPin,dueDate,idUser)
values(6,'Wendy Aria Matto','8462 4956 7951 9686',1679,'01/01/2025',6)

insert into dbo.Loan(idLoan,idUser,activity,description) 
values (11,11,1,'Hizo el prestamo de La Bella Durmiente')

insert into dbo.Loan(idLoan,idUser,activity,description) 
values (12,12,1,'Realizo el prestamo de aventuras aventurosas')

insert into dbo.Loan(idLoan,idUser,activity,description) 
values (13,13,1,'Hizo el prestamo de Evangelion')

insert into dbo.Loan(idLoan,idUser,activity,description) 
values (14,14,1,'Hizo el prestamo de Los 3 cerditos')

insert into dbo.Loan(idLoan,idUser,activity,description) 
values (15,15,1,'Hizo el prestamo de El lobo de Grindwald')

insert into dbo.Loan(idLoan,idUser,activity,description) 
values (16,16,1,'Hizo el prestamo de Poseidon')

insert into dbo.BankAccount(idBankAccount,ownerName,accountNumber,safetyPin,dueDate,idUser)
values(11,'Albert Robert Perez','9865 3564 3214 3698',3654,'12/12/2023',11)

insert into dbo.BankAccount(idBankAccount,ownerName,accountNumber,safetyPin,dueDate,idUser)
values(12,'Rosa Elena Arias','7856 3698 3265 1569',1563,'08/08/2023',12)

insert into dbo.BankAccount(idBankAccount,ownerName,accountNumber,safetyPin,dueDate,idUser)
values(13,'Stella Rosalia LeonHeart','1236 9865 3268 2145',2658,'03/20/2026',13)

insert into dbo.BankAccount(idBankAccount,ownerName,accountNumber,safetyPin,dueDate,idUser)
values(14,'Layla Lia Cuarzo','5639 4536 9654 3645',2569,'10/10/2025',14)

insert into dbo.BankAccount(idBankAccount,ownerName,accountNumber,safetyPin,dueDate,idUser)
values(15,'Haruki Tobi Uenoyama','5648 6325 7856 2145',7852,'07/07/2023',15)

insert into dbo.BankAccount(idBankAccount,ownerName,accountNumber,safetyPin,dueDate,idUser)
values(16,'Shinji Ikari','1234 2365 3986 3987',4569,'09/09/2023',16)

insert into dbo.Loan(idLoan,idUser,activity,description) 
values (21,21,1,'Hizo el prestamo de Rapunsel')

insert into dbo.Loan(idLoan,idUser,activity,description) 
values (22,22,1,'Realizo el prestamo para Alicia')

insert into dbo.Loan(idLoan,idUser,activity,description) 
values (23,23,1,'Hizo el prestamo de Softer')

insert into dbo.Loan(idLoan,idUser,activity,description) 
values (24,24,1,'Hizo el prestamo de Criminalistica')

insert into dbo.Loan(idLoan,idUser,activity,description) 
values (25,25,1,'Hizo el prestamo de Flash')

insert into dbo.Loan(idLoan,idUser,activity,description) 
values (26,26,1,'Hizo el prestamo de Triton')

insert into dbo.BankAccount(idBankAccount,ownerName,accountNumber,safetyPin,dueDate,idUser)
values(21,'Rupert Adrian Gonzales','2698 3971 2648 3698',6482,'12/12/2023',21)

insert into dbo.BankAccount(idBankAccount,ownerName,accountNumber,safetyPin,dueDate,idUser)
values(22,'Juan Jose Arias','2569 8754 3698 1234',2648,'08/06/2023',22)

insert into dbo.BankAccount(idBankAccount,ownerName,accountNumber,safetyPin,dueDate,idUser)
values(23,'Marta Marcella Picado','2697 3596 1354 1648',1364,'05/02/2023',23)

insert into dbo.BankAccount(idBankAccount,ownerName,accountNumber,safetyPin,dueDate,idUser)
values(24,'Steven Gabriel Fernandez Navarro','8529 3619 6168 1351',1698,'03/07/2023',24)

insert into dbo.BankAccount(idBankAccount,ownerName,accountNumber,safetyPin,dueDate,idUser)
values(25,'Alister Gabriel Navarro','1684 9865 2198 1684',2359,'07/12/2023',25)

insert into dbo.BankAccount(idBankAccount,ownerName,accountNumber,safetyPin,dueDate,idUser)
values(26,'Jeaustin Obando','1616 9898 4635 2168',8932,'09/01/2023',26)
