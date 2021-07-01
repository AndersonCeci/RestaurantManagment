USE [MyDB]
GO
/****** Object:  StoredProcedure [dbo].[spMakeReservation]    Script Date: 6/27/2021 4:28:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[spMakeReservation] --'2021-06-28', '8:00 am', '9:00 am', 'Table for 2','1'
@Rdate nvarchar(50),
@Rtin nvarchar(50),
@Rtout nvarchar(50),
@Rtable nvarchar(50),
@RUid int

as
begin
	
	insert into tblReservation (TableId, UserId, ReservationDate, Time_in, Time_out) values(dbo.getTableId(@Rtable), @RUid, Cast(@Rdate as date), 
	Convert(time, @Rtin ) ,Convert(time,@Rtout)) 
end



