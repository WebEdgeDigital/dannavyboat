
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/14/2015 21:32:09
-- Generated from EDMX file: C:\inetpub\wwwroot\dannavyboat\Dannavyboat\WebEdge.DataLayer\Model\DanNavyBoat.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [dannavyboat];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_UserBooking]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Bookings] DROP CONSTRAINT [FK_UserBooking];
GO
IF OBJECT_ID(N'[dbo].[FK_BookingActivity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Bookings] DROP CONSTRAINT [FK_BookingActivity];
GO
IF OBJECT_ID(N'[dbo].[FK_PaymentPaymentDetails]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Payments] DROP CONSTRAINT [FK_PaymentPaymentDetails];
GO
IF OBJECT_ID(N'[dbo].[FK_BookingPayment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Bookings] DROP CONSTRAINT [FK_BookingPayment];
GO
IF OBJECT_ID(N'[dbo].[FK_ActivityActivityType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Activities] DROP CONSTRAINT [FK_ActivityActivityType];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Bookings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Bookings];
GO
IF OBJECT_ID(N'[dbo].[ActivityTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ActivityTypes];
GO
IF OBJECT_ID(N'[dbo].[Activities]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Activities];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[Payments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Payments];
GO
IF OBJECT_ID(N'[dbo].[PaymentDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PaymentDetails];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Bookings'
CREATE TABLE [dbo].[Bookings] (
    [BookingId] int IDENTITY(1,1) NOT NULL,
    [UserUserId] int  NOT NULL,
    [Activity_ActivityId] int  NOT NULL,
    [Payment_PaymentId] int  NOT NULL
);
GO

-- Creating table 'ActivityTypes'
CREATE TABLE [dbo].[ActivityTypes] (
    [ActivityId] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Activities'
CREATE TABLE [dbo].[Activities] (
    [ActivityId] int IDENTITY(1,1) NOT NULL,
    [ActivityType_ActivityId] int  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [UserId] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Payments'
CREATE TABLE [dbo].[Payments] (
    [PaymentId] int IDENTITY(1,1) NOT NULL,
    [PaymentDetail_PaymentDetailId] int  NOT NULL
);
GO

-- Creating table 'PaymentDetails'
CREATE TABLE [dbo].[PaymentDetails] (
    [PaymentDetailId] int IDENTITY(1,1) NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [BookingId] in table 'Bookings'
ALTER TABLE [dbo].[Bookings]
ADD CONSTRAINT [PK_Bookings]
    PRIMARY KEY CLUSTERED ([BookingId] ASC);
GO

-- Creating primary key on [ActivityId] in table 'ActivityTypes'
ALTER TABLE [dbo].[ActivityTypes]
ADD CONSTRAINT [PK_ActivityTypes]
    PRIMARY KEY CLUSTERED ([ActivityId] ASC);
GO

-- Creating primary key on [ActivityId] in table 'Activities'
ALTER TABLE [dbo].[Activities]
ADD CONSTRAINT [PK_Activities]
    PRIMARY KEY CLUSTERED ([ActivityId] ASC);
GO

-- Creating primary key on [UserId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([UserId] ASC);
GO

-- Creating primary key on [PaymentId] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [PK_Payments]
    PRIMARY KEY CLUSTERED ([PaymentId] ASC);
GO

-- Creating primary key on [PaymentDetailId] in table 'PaymentDetails'
ALTER TABLE [dbo].[PaymentDetails]
ADD CONSTRAINT [PK_PaymentDetails]
    PRIMARY KEY CLUSTERED ([PaymentDetailId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [UserUserId] in table 'Bookings'
ALTER TABLE [dbo].[Bookings]
ADD CONSTRAINT [FK_UserBooking]
    FOREIGN KEY ([UserUserId])
    REFERENCES [dbo].[Users]
        ([UserId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserBooking'
CREATE INDEX [IX_FK_UserBooking]
ON [dbo].[Bookings]
    ([UserUserId]);
GO

-- Creating foreign key on [Activity_ActivityId] in table 'Bookings'
ALTER TABLE [dbo].[Bookings]
ADD CONSTRAINT [FK_BookingActivity]
    FOREIGN KEY ([Activity_ActivityId])
    REFERENCES [dbo].[Activities]
        ([ActivityId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BookingActivity'
CREATE INDEX [IX_FK_BookingActivity]
ON [dbo].[Bookings]
    ([Activity_ActivityId]);
GO

-- Creating foreign key on [PaymentDetail_PaymentDetailId] in table 'Payments'
ALTER TABLE [dbo].[Payments]
ADD CONSTRAINT [FK_PaymentPaymentDetails]
    FOREIGN KEY ([PaymentDetail_PaymentDetailId])
    REFERENCES [dbo].[PaymentDetails]
        ([PaymentDetailId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PaymentPaymentDetails'
CREATE INDEX [IX_FK_PaymentPaymentDetails]
ON [dbo].[Payments]
    ([PaymentDetail_PaymentDetailId]);
GO

-- Creating foreign key on [Payment_PaymentId] in table 'Bookings'
ALTER TABLE [dbo].[Bookings]
ADD CONSTRAINT [FK_BookingPayment]
    FOREIGN KEY ([Payment_PaymentId])
    REFERENCES [dbo].[Payments]
        ([PaymentId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BookingPayment'
CREATE INDEX [IX_FK_BookingPayment]
ON [dbo].[Bookings]
    ([Payment_PaymentId]);
GO

-- Creating foreign key on [ActivityType_ActivityId] in table 'Activities'
ALTER TABLE [dbo].[Activities]
ADD CONSTRAINT [FK_ActivityActivityType]
    FOREIGN KEY ([ActivityType_ActivityId])
    REFERENCES [dbo].[ActivityTypes]
        ([ActivityId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ActivityActivityType'
CREATE INDEX [IX_FK_ActivityActivityType]
ON [dbo].[Activities]
    ([ActivityType_ActivityId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------