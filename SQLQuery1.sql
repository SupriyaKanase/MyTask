USE [Appoinment]
GO
/****** Object:  StoredProcedure [dbo].[Doctor]    Script Date: 15-07-2022 10:10:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[Doctor]
(
@Id int=null,
@Name nvarchar(50)=null,
@Age nvarchar(50)=null,
@DOB date =null,
@BloodGroup nvarchar(50)=null,
@Address nvarchar(50)=null,
@MobileNumber nvarchar(15)=null,
@Email nvarchar(max)=null,
@DateOfAppointment date = null,
@PatientReport nvarchar(500)=null,
@flag nvarchar(50)=null


)
as
begin
if(@flag='SaveUser')
insert into TblPatient values (@Name,@Age,@DOB,@BloodGroup,@Address,@MobileNumber,@Email,@DateOfAppointment,@PatientReport)
end

begin
if(@flag='ShowList')
select * from TblPatient
end