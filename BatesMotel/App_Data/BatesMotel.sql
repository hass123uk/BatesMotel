CREATE TABLE [dbo].[Rooms](
	[ID] int IDENTITY (1,1) NOT NULL,
	[Room_no] int NOT NULL

	CONSTRAINT [PK_dbo.Rooms] PRIMARY KEY CLUSTERED ([ID] ASC)
);

CREATE TABLE [dbo].[Bookings](
	[ID] int IDENTITY (1,1) NOT NULL,
	[CheckIn_Date] date NOT NULL,
	[CheckOut_Date] date NOT NULL,
	[RoomID] int NOT NULL
	CONSTRAINT [PK_dbo.Bookings] PRIMARY KEY CLUSTERED ([ID] ASC)
	CONSTRAINT [FK_dbo.Bookings_dbo.Rooms_ID] FOREIGN KEY ([RoomID]) 
		REFERENCES [dbo].[Rooms] ([ID]) ON DELETE CASCADE
);

INSERT INTO [dbo].[Rooms] ([Room_no]) VALUES (101)
INSERT INTO [dbo].[Rooms] ([Room_no]) VALUES (102)

INSERT INTO [dbo].[Bookings] ([CheckIn_Date], [CheckOut_Date], [RoomID])
	VALUES ('20160201', '20160229', 1)

INSERT INTO [dbo].[Bookings] ([CheckIn_Date], [CheckOut_Date], [RoomID])
	VALUES ('20160201', '20160210', 2)
