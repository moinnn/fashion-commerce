USE [master]
GO
/****** Object:  Database [priv]    Script Date: 05/09/2012 17:21:41 ******/
CREATE DATABASE [priv] ON  PRIMARY 
( NAME = N'priv', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS2008\MSSQL\DATA\priv.mdf' , SIZE = 2816KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'priv_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS2008\MSSQL\DATA\priv_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [priv] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [priv].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [priv] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [priv] SET ANSI_NULLS OFF
GO
ALTER DATABASE [priv] SET ANSI_PADDING OFF
GO
ALTER DATABASE [priv] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [priv] SET ARITHABORT OFF
GO
ALTER DATABASE [priv] SET AUTO_CLOSE ON
GO
ALTER DATABASE [priv] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [priv] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [priv] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [priv] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [priv] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [priv] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [priv] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [priv] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [priv] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [priv] SET  DISABLE_BROKER
GO
ALTER DATABASE [priv] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [priv] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [priv] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [priv] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [priv] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [priv] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [priv] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [priv] SET  READ_WRITE
GO
ALTER DATABASE [priv] SET RECOVERY SIMPLE
GO
ALTER DATABASE [priv] SET  MULTI_USER
GO
ALTER DATABASE [priv] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [priv] SET DB_CHAINING OFF
GO
USE [priv]
GO
/****** Object:  ForeignKey [FK_CUSTOMER_CUSTOMER]    Script Date: 05/09/2012 17:21:43 ******/
ALTER TABLE [dbo].[CUSTOMER] DROP CONSTRAINT [FK_CUSTOMER_CUSTOMER]
GO
/****** Object:  ForeignKey [FK_USER_ROLE]    Script Date: 05/09/2012 17:21:43 ******/
ALTER TABLE [dbo].[USER] DROP CONSTRAINT [FK_USER_ROLE]
GO
/****** Object:  ForeignKey [FK_BONUS_CUSTOMER]    Script Date: 05/09/2012 17:21:43 ******/
ALTER TABLE [dbo].[BONUS] DROP CONSTRAINT [FK_BONUS_CUSTOMER]
GO
/****** Object:  ForeignKey [FK_D_CITY_D_STATE]    Script Date: 05/09/2012 17:21:44 ******/
ALTER TABLE [dbo].[D_CITY] DROP CONSTRAINT [FK_D_CITY_D_STATE]
GO
/****** Object:  ForeignKey [FK_D_ATTRIBUTE_VALUE_D_ATTRIBUTE]    Script Date: 05/09/2012 17:21:44 ******/
ALTER TABLE [dbo].[D_ATTRIBUTE_VALUE] DROP CONSTRAINT [FK_D_ATTRIBUTE_VALUE_D_ATTRIBUTE]
GO
/****** Object:  ForeignKey [FK_STAT_CUSTOMER]    Script Date: 05/09/2012 17:21:44 ******/
ALTER TABLE [dbo].[CUSTOMER_AUDIT] DROP CONSTRAINT [FK_STAT_CUSTOMER]
GO
/****** Object:  ForeignKey [FK_INVITATION_CUSTOMER]    Script Date: 05/09/2012 17:21:44 ******/
ALTER TABLE [dbo].[INVITATION] DROP CONSTRAINT [FK_INVITATION_CUSTOMER]
GO
/****** Object:  ForeignKey [FK_PRODUCT_USER]    Script Date: 05/09/2012 17:21:44 ******/
ALTER TABLE [dbo].[PRODUCT] DROP CONSTRAINT [FK_PRODUCT_USER]
GO
/****** Object:  ForeignKey [FK_CAMPAIGN_BRAND]    Script Date: 05/09/2012 17:21:44 ******/
ALTER TABLE [dbo].[CAMPAIGN] DROP CONSTRAINT [FK_CAMPAIGN_BRAND]
GO
/****** Object:  ForeignKey [FK_CAMPAIGN_USER]    Script Date: 05/09/2012 17:21:44 ******/
ALTER TABLE [dbo].[CAMPAIGN] DROP CONSTRAINT [FK_CAMPAIGN_USER]
GO
/****** Object:  ForeignKey [FK_AUDIT_USER]    Script Date: 05/09/2012 17:21:45 ******/
ALTER TABLE [dbo].[AUDIT] DROP CONSTRAINT [FK_AUDIT_USER]
GO
/****** Object:  ForeignKey [FK_ADDRESSINFO_D_ADDRESS_TYPE]    Script Date: 05/09/2012 17:21:45 ******/
ALTER TABLE [dbo].[ADDRESSINFO] DROP CONSTRAINT [FK_ADDRESSINFO_D_ADDRESS_TYPE]
GO
/****** Object:  ForeignKey [FK_ADDRESSINFO_D_CITY]    Script Date: 05/09/2012 17:21:45 ******/
ALTER TABLE [dbo].[ADDRESSINFO] DROP CONSTRAINT [FK_ADDRESSINFO_D_CITY]
GO
/****** Object:  ForeignKey [FK_ADDRESS_CUSTOMER]    Script Date: 05/09/2012 17:21:45 ******/
ALTER TABLE [dbo].[ADDRESS] DROP CONSTRAINT [FK_ADDRESS_CUSTOMER]
GO
/****** Object:  ForeignKey [FK_ADDRESS_D_ADDRESS_TYPE]    Script Date: 05/09/2012 17:21:45 ******/
ALTER TABLE [dbo].[ADDRESS] DROP CONSTRAINT [FK_ADDRESS_D_ADDRESS_TYPE]
GO
/****** Object:  ForeignKey [FK_ADDRESS_D_CITY]    Script Date: 05/09/2012 17:21:45 ******/
ALTER TABLE [dbo].[ADDRESS] DROP CONSTRAINT [FK_ADDRESS_D_CITY]
GO
/****** Object:  ForeignKey [FK_CATEGORY_CAMPAIGN]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[CATEGORY] DROP CONSTRAINT [FK_CATEGORY_CAMPAIGN]
GO
/****** Object:  ForeignKey [FK_CATEGORY_CATEGORY]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[CATEGORY] DROP CONSTRAINT [FK_CATEGORY_CATEGORY]
GO
/****** Object:  ForeignKey [FK_CATEGORY_D_ATTRIBUTE]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[CATEGORY] DROP CONSTRAINT [FK_CATEGORY_D_ATTRIBUTE]
GO
/****** Object:  ForeignKey [FK_PROD_IMAGES_PRODUCT]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[PROD_IMAGES] DROP CONSTRAINT [FK_PROD_IMAGES_PRODUCT]
GO
/****** Object:  ForeignKey [FK_PRODUCT_ATTRIBUTE_D_ATTRIBUTE_VALUE]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[PRODUCT_ATTRIBUTE] DROP CONSTRAINT [FK_PRODUCT_ATTRIBUTE_D_ATTRIBUTE_VALUE]
GO
/****** Object:  ForeignKey [FK_PRODUCT_ATTRIBUTE_PRODUCT]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[PRODUCT_ATTRIBUTE] DROP CONSTRAINT [FK_PRODUCT_ATTRIBUTE_PRODUCT]
GO
/****** Object:  ForeignKey [FK_ORDERS_ADDRESSINFO]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[ORDERS] DROP CONSTRAINT [FK_ORDERS_ADDRESSINFO]
GO
/****** Object:  ForeignKey [FK_ORDERS_ADDRESSINFO1]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[ORDERS] DROP CONSTRAINT [FK_ORDERS_ADDRESSINFO1]
GO
/****** Object:  ForeignKey [FK_ORDERS_CUSTOMER]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[ORDERS] DROP CONSTRAINT [FK_ORDERS_CUSTOMER]
GO
/****** Object:  ForeignKey [FK_ORDERS_D_ORDER_STATUS]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[ORDERS] DROP CONSTRAINT [FK_ORDERS_D_ORDER_STATUS]
GO
/****** Object:  ForeignKey [FK_ORDERS_SHIPPING]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[ORDERS] DROP CONSTRAINT [FK_ORDERS_SHIPPING]
GO
/****** Object:  ForeignKey [FK_ORDER_NOTES_ORDERS]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[ORDER_NOTES] DROP CONSTRAINT [FK_ORDER_NOTES_ORDERS]
GO
/****** Object:  ForeignKey [FK_ORDER_DETAIL_CAMPAIGN]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[ORDER_DETAIL] DROP CONSTRAINT [FK_ORDER_DETAIL_CAMPAIGN]
GO
/****** Object:  ForeignKey [FK_PURCHASE_DETAIL_PRODUCT_ATTRIBUTE]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[ORDER_DETAIL] DROP CONSTRAINT [FK_PURCHASE_DETAIL_PRODUCT_ATTRIBUTE]
GO
/****** Object:  ForeignKey [FK_PURCHASE_DETAIL_PURCHASE]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[ORDER_DETAIL] DROP CONSTRAINT [FK_PURCHASE_DETAIL_PURCHASE]
GO
/****** Object:  ForeignKey [FK_ORDER_BONUS_BONUS]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[ORDER_BONUS] DROP CONSTRAINT [FK_ORDER_BONUS_BONUS]
GO
/****** Object:  ForeignKey [FK_ORDER_BONUS_ORDERS]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[ORDER_BONUS] DROP CONSTRAINT [FK_ORDER_BONUS_ORDERS]
GO
/****** Object:  ForeignKey [FK_PAYMENT_ORDERS]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[PAYMENT] DROP CONSTRAINT [FK_PAYMENT_ORDERS]
GO
/****** Object:  ForeignKey [FK_RETURN_ORDERS]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[RETURN] DROP CONSTRAINT [FK_RETURN_ORDERS]
GO
/****** Object:  ForeignKey [FK_PRODUCT_CATEGORY_CATEGORY]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[PRODUCT_CATEGORY] DROP CONSTRAINT [FK_PRODUCT_CATEGORY_CATEGORY]
GO
/****** Object:  ForeignKey [FK_PRODUCT_CATEGORY_PRODUCT]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[PRODUCT_CATEGORY] DROP CONSTRAINT [FK_PRODUCT_CATEGORY_PRODUCT]
GO
/****** Object:  ForeignKey [FK_SHOPPING_CART_CAMPAIGN]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[SHOPPING_CART] DROP CONSTRAINT [FK_SHOPPING_CART_CAMPAIGN]
GO
/****** Object:  ForeignKey [FK_SHOPPING_CART_CUSTOMER]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[SHOPPING_CART] DROP CONSTRAINT [FK_SHOPPING_CART_CUSTOMER]
GO
/****** Object:  ForeignKey [FK_SHOPPING_CART_PRODUCT_ATTRIBUTE]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[SHOPPING_CART] DROP CONSTRAINT [FK_SHOPPING_CART_PRODUCT_ATTRIBUTE]
GO
/****** Object:  ForeignKey [FK_RETURN_DETAILS_D_RETURN_MOTIVATION]    Script Date: 05/09/2012 17:21:48 ******/
ALTER TABLE [dbo].[RETURN_DETAILS] DROP CONSTRAINT [FK_RETURN_DETAILS_D_RETURN_MOTIVATION]
GO
/****** Object:  ForeignKey [FK_RETURN_DETAILS_ORDER_DETAIL]    Script Date: 05/09/2012 17:21:48 ******/
ALTER TABLE [dbo].[RETURN_DETAILS] DROP CONSTRAINT [FK_RETURN_DETAILS_ORDER_DETAIL]
GO
/****** Object:  ForeignKey [FK_RETURN_DETAILS_RETURN]    Script Date: 05/09/2012 17:21:48 ******/
ALTER TABLE [dbo].[RETURN_DETAILS] DROP CONSTRAINT [FK_RETURN_DETAILS_RETURN]
GO
/****** Object:  ForeignKey [FK_PAYPAL_PAYMENT_PAYMENT1]    Script Date: 05/09/2012 17:21:48 ******/
ALTER TABLE [dbo].[PAYPAL_PAYMENT] DROP CONSTRAINT [FK_PAYPAL_PAYMENT_PAYMENT1]
GO
/****** Object:  ForeignKey [FK_CASH_PAYMENT_PAYMENT]    Script Date: 05/09/2012 17:21:48 ******/
ALTER TABLE [dbo].[CASH_PAYMENT] DROP CONSTRAINT [FK_CASH_PAYMENT_PAYMENT]
GO
/****** Object:  Table [dbo].[CASH_PAYMENT]    Script Date: 05/09/2012 17:21:48 ******/
ALTER TABLE [dbo].[CASH_PAYMENT] DROP CONSTRAINT [FK_CASH_PAYMENT_PAYMENT]
GO
DROP TABLE [dbo].[CASH_PAYMENT]
GO
/****** Object:  StoredProcedure [dbo].[GetCampaignProducts]    Script Date: 05/09/2012 17:21:48 ******/
DROP PROCEDURE [dbo].[GetCampaignProducts]
GO
/****** Object:  StoredProcedure [dbo].[GetShoppingCartTotalAmount]    Script Date: 05/09/2012 17:21:48 ******/
DROP PROCEDURE [dbo].[GetShoppingCartTotalAmount]
GO
/****** Object:  Table [dbo].[PAYPAL_PAYMENT]    Script Date: 05/09/2012 17:21:48 ******/
ALTER TABLE [dbo].[PAYPAL_PAYMENT] DROP CONSTRAINT [FK_PAYPAL_PAYMENT_PAYMENT1]
GO
DROP TABLE [dbo].[PAYPAL_PAYMENT]
GO
/****** Object:  Table [dbo].[RETURN_DETAILS]    Script Date: 05/09/2012 17:21:48 ******/
ALTER TABLE [dbo].[RETURN_DETAILS] DROP CONSTRAINT [FK_RETURN_DETAILS_D_RETURN_MOTIVATION]
GO
ALTER TABLE [dbo].[RETURN_DETAILS] DROP CONSTRAINT [FK_RETURN_DETAILS_ORDER_DETAIL]
GO
ALTER TABLE [dbo].[RETURN_DETAILS] DROP CONSTRAINT [FK_RETURN_DETAILS_RETURN]
GO
DROP TABLE [dbo].[RETURN_DETAILS]
GO
/****** Object:  Table [dbo].[SHOPPING_CART]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[SHOPPING_CART] DROP CONSTRAINT [FK_SHOPPING_CART_CAMPAIGN]
GO
ALTER TABLE [dbo].[SHOPPING_CART] DROP CONSTRAINT [FK_SHOPPING_CART_CUSTOMER]
GO
ALTER TABLE [dbo].[SHOPPING_CART] DROP CONSTRAINT [FK_SHOPPING_CART_PRODUCT_ATTRIBUTE]
GO
ALTER TABLE [dbo].[SHOPPING_CART] DROP CONSTRAINT [DF_SHOPPING_CART_Quantity]
GO
DROP TABLE [dbo].[SHOPPING_CART]
GO
/****** Object:  Table [dbo].[PRODUCT_CATEGORY]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[PRODUCT_CATEGORY] DROP CONSTRAINT [FK_PRODUCT_CATEGORY_CATEGORY]
GO
ALTER TABLE [dbo].[PRODUCT_CATEGORY] DROP CONSTRAINT [FK_PRODUCT_CATEGORY_PRODUCT]
GO
DROP TABLE [dbo].[PRODUCT_CATEGORY]
GO
/****** Object:  Table [dbo].[RETURN]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[RETURN] DROP CONSTRAINT [FK_RETURN_ORDERS]
GO
DROP TABLE [dbo].[RETURN]
GO
/****** Object:  Table [dbo].[PAYMENT]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[PAYMENT] DROP CONSTRAINT [FK_PAYMENT_ORDERS]
GO
DROP TABLE [dbo].[PAYMENT]
GO
/****** Object:  Table [dbo].[ORDER_BONUS]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[ORDER_BONUS] DROP CONSTRAINT [FK_ORDER_BONUS_BONUS]
GO
ALTER TABLE [dbo].[ORDER_BONUS] DROP CONSTRAINT [FK_ORDER_BONUS_ORDERS]
GO
DROP TABLE [dbo].[ORDER_BONUS]
GO
/****** Object:  Table [dbo].[ORDER_DETAIL]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[ORDER_DETAIL] DROP CONSTRAINT [FK_ORDER_DETAIL_CAMPAIGN]
GO
ALTER TABLE [dbo].[ORDER_DETAIL] DROP CONSTRAINT [FK_PURCHASE_DETAIL_PRODUCT_ATTRIBUTE]
GO
ALTER TABLE [dbo].[ORDER_DETAIL] DROP CONSTRAINT [FK_PURCHASE_DETAIL_PURCHASE]
GO
DROP TABLE [dbo].[ORDER_DETAIL]
GO
/****** Object:  Table [dbo].[ORDER_NOTES]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[ORDER_NOTES] DROP CONSTRAINT [FK_ORDER_NOTES_ORDERS]
GO
DROP TABLE [dbo].[ORDER_NOTES]
GO
/****** Object:  Table [dbo].[ORDERS]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[ORDERS] DROP CONSTRAINT [FK_ORDERS_ADDRESSINFO]
GO
ALTER TABLE [dbo].[ORDERS] DROP CONSTRAINT [FK_ORDERS_ADDRESSINFO1]
GO
ALTER TABLE [dbo].[ORDERS] DROP CONSTRAINT [FK_ORDERS_CUSTOMER]
GO
ALTER TABLE [dbo].[ORDERS] DROP CONSTRAINT [FK_ORDERS_D_ORDER_STATUS]
GO
ALTER TABLE [dbo].[ORDERS] DROP CONSTRAINT [FK_ORDERS_SHIPPING]
GO
ALTER TABLE [dbo].[ORDERS] DROP CONSTRAINT [DF_PURCHASE_DateCreated]
GO
ALTER TABLE [dbo].[ORDERS] DROP CONSTRAINT [DF_ORDERS_Verified]
GO
ALTER TABLE [dbo].[ORDERS] DROP CONSTRAINT [DF_ORDERS_Completed]
GO
ALTER TABLE [dbo].[ORDERS] DROP CONSTRAINT [DF_ORDERS_Canceled]
GO
ALTER TABLE [dbo].[ORDERS] DROP CONSTRAINT [DF_ORDERS_AmountPaid]
GO
ALTER TABLE [dbo].[ORDERS] DROP CONSTRAINT [DF_ORDERS_BonusUsed]
GO
ALTER TABLE [dbo].[ORDERS] DROP CONSTRAINT [DF_ORDERS_Status]
GO
ALTER TABLE [dbo].[ORDERS] DROP CONSTRAINT [DF_ORDERS_TotalAmount]
GO
DROP TABLE [dbo].[ORDERS]
GO
/****** Object:  StoredProcedure [dbo].[GetProductApprovalStatus]    Script Date: 05/09/2012 17:21:46 ******/
DROP PROCEDURE [dbo].[GetProductApprovalStatus]
GO
/****** Object:  StoredProcedure [dbo].[DeActivatePastCampaigns]    Script Date: 05/09/2012 17:21:46 ******/
DROP PROCEDURE [dbo].[DeActivatePastCampaigns]
GO
/****** Object:  StoredProcedure [dbo].[GetCampaignApprovalStatus]    Script Date: 05/09/2012 17:21:46 ******/
DROP PROCEDURE [dbo].[GetCampaignApprovalStatus]
GO
/****** Object:  Table [dbo].[PRODUCT_ATTRIBUTE]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[PRODUCT_ATTRIBUTE] DROP CONSTRAINT [FK_PRODUCT_ATTRIBUTE_D_ATTRIBUTE_VALUE]
GO
ALTER TABLE [dbo].[PRODUCT_ATTRIBUTE] DROP CONSTRAINT [FK_PRODUCT_ATTRIBUTE_PRODUCT]
GO
DROP TABLE [dbo].[PRODUCT_ATTRIBUTE]
GO
/****** Object:  Table [dbo].[PROD_IMAGES]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[PROD_IMAGES] DROP CONSTRAINT [FK_PROD_IMAGES_PRODUCT]
GO
DROP TABLE [dbo].[PROD_IMAGES]
GO
/****** Object:  Table [dbo].[CATEGORY]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[CATEGORY] DROP CONSTRAINT [FK_CATEGORY_CAMPAIGN]
GO
ALTER TABLE [dbo].[CATEGORY] DROP CONSTRAINT [FK_CATEGORY_CATEGORY]
GO
ALTER TABLE [dbo].[CATEGORY] DROP CONSTRAINT [FK_CATEGORY_D_ATTRIBUTE]
GO
DROP TABLE [dbo].[CATEGORY]
GO
/****** Object:  StoredProcedure [dbo].[ActivateActualCampaigns]    Script Date: 05/09/2012 17:21:46 ******/
DROP PROCEDURE [dbo].[ActivateActualCampaigns]
GO
/****** Object:  Table [dbo].[ADDRESS]    Script Date: 05/09/2012 17:21:45 ******/
ALTER TABLE [dbo].[ADDRESS] DROP CONSTRAINT [FK_ADDRESS_CUSTOMER]
GO
ALTER TABLE [dbo].[ADDRESS] DROP CONSTRAINT [FK_ADDRESS_D_ADDRESS_TYPE]
GO
ALTER TABLE [dbo].[ADDRESS] DROP CONSTRAINT [FK_ADDRESS_D_CITY]
GO
DROP TABLE [dbo].[ADDRESS]
GO
/****** Object:  Table [dbo].[ADDRESSINFO]    Script Date: 05/09/2012 17:21:45 ******/
ALTER TABLE [dbo].[ADDRESSINFO] DROP CONSTRAINT [FK_ADDRESSINFO_D_ADDRESS_TYPE]
GO
ALTER TABLE [dbo].[ADDRESSINFO] DROP CONSTRAINT [FK_ADDRESSINFO_D_CITY]
GO
DROP TABLE [dbo].[ADDRESSINFO]
GO
/****** Object:  Table [dbo].[AUDIT]    Script Date: 05/09/2012 17:21:45 ******/
ALTER TABLE [dbo].[AUDIT] DROP CONSTRAINT [FK_AUDIT_USER]
GO
DROP TABLE [dbo].[AUDIT]
GO
/****** Object:  Table [dbo].[CAMPAIGN]    Script Date: 05/09/2012 17:21:44 ******/
ALTER TABLE [dbo].[CAMPAIGN] DROP CONSTRAINT [FK_CAMPAIGN_BRAND]
GO
ALTER TABLE [dbo].[CAMPAIGN] DROP CONSTRAINT [FK_CAMPAIGN_USER]
GO
ALTER TABLE [dbo].[CAMPAIGN] DROP CONSTRAINT [DF_CAMPAIGN_Active]
GO
ALTER TABLE [dbo].[CAMPAIGN] DROP CONSTRAINT [DF_CAMPAIGN_Approved]
GO
DROP TABLE [dbo].[CAMPAIGN]
GO
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 05/09/2012 17:21:44 ******/
ALTER TABLE [dbo].[PRODUCT] DROP CONSTRAINT [FK_PRODUCT_USER]
GO
ALTER TABLE [dbo].[PRODUCT] DROP CONSTRAINT [DF_PRODUCT_Approved]
GO
ALTER TABLE [dbo].[PRODUCT] DROP CONSTRAINT [DF_PRODUCT_ReadOnly]
GO
DROP TABLE [dbo].[PRODUCT]
GO
/****** Object:  Table [dbo].[INVITATION]    Script Date: 05/09/2012 17:21:44 ******/
ALTER TABLE [dbo].[INVITATION] DROP CONSTRAINT [FK_INVITATION_CUSTOMER]
GO
DROP TABLE [dbo].[INVITATION]
GO
/****** Object:  Table [dbo].[CUSTOMER_AUDIT]    Script Date: 05/09/2012 17:21:44 ******/
ALTER TABLE [dbo].[CUSTOMER_AUDIT] DROP CONSTRAINT [FK_STAT_CUSTOMER]
GO
DROP TABLE [dbo].[CUSTOMER_AUDIT]
GO
/****** Object:  Table [dbo].[D_ATTRIBUTE_VALUE]    Script Date: 05/09/2012 17:21:44 ******/
ALTER TABLE [dbo].[D_ATTRIBUTE_VALUE] DROP CONSTRAINT [FK_D_ATTRIBUTE_VALUE_D_ATTRIBUTE]
GO
DROP TABLE [dbo].[D_ATTRIBUTE_VALUE]
GO
/****** Object:  Table [dbo].[D_CITY]    Script Date: 05/09/2012 17:21:44 ******/
ALTER TABLE [dbo].[D_CITY] DROP CONSTRAINT [FK_D_CITY_D_STATE]
GO
DROP TABLE [dbo].[D_CITY]
GO
/****** Object:  Table [dbo].[BONUS]    Script Date: 05/09/2012 17:21:43 ******/
ALTER TABLE [dbo].[BONUS] DROP CONSTRAINT [FK_BONUS_CUSTOMER]
GO
DROP TABLE [dbo].[BONUS]
GO
/****** Object:  Table [dbo].[USER]    Script Date: 05/09/2012 17:21:43 ******/
ALTER TABLE [dbo].[USER] DROP CONSTRAINT [FK_USER_ROLE]
GO
ALTER TABLE [dbo].[USER] DROP CONSTRAINT [DF_USER_Enabled]
GO
DROP TABLE [dbo].[USER]
GO
/****** Object:  Table [dbo].[ROLE]    Script Date: 05/09/2012 17:21:43 ******/
DROP TABLE [dbo].[ROLE]
GO
/****** Object:  Table [dbo].[SHIPPING]    Script Date: 05/09/2012 17:21:43 ******/
DROP TABLE [dbo].[SHIPPING]
GO
/****** Object:  Table [dbo].[BRAND]    Script Date: 05/09/2012 17:21:43 ******/
DROP TABLE [dbo].[BRAND]
GO
/****** Object:  Table [dbo].[CONFIG]    Script Date: 05/09/2012 17:21:43 ******/
DROP TABLE [dbo].[CONFIG]
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 05/09/2012 17:21:43 ******/
ALTER TABLE [dbo].[CUSTOMER] DROP CONSTRAINT [FK_CUSTOMER_CUSTOMER]
GO
ALTER TABLE [dbo].[CUSTOMER] DROP CONSTRAINT [DF_CUSTOMER_Active]
GO
ALTER TABLE [dbo].[CUSTOMER] DROP CONSTRAINT [DF_CUSTOMER_Newsletter]
GO
DROP TABLE [dbo].[CUSTOMER]
GO
/****** Object:  Table [dbo].[D_ORDER_STATUS]    Script Date: 05/09/2012 17:21:42 ******/
DROP TABLE [dbo].[D_ORDER_STATUS]
GO
/****** Object:  Table [dbo].[D_RETURN_MOTIVATION]    Script Date: 05/09/2012 17:21:42 ******/
DROP TABLE [dbo].[D_RETURN_MOTIVATION]
GO
/****** Object:  Table [dbo].[D_STATE]    Script Date: 05/09/2012 17:21:42 ******/
ALTER TABLE [dbo].[D_STATE] DROP CONSTRAINT [DF_D_STATE_Enabled]
GO
DROP TABLE [dbo].[D_STATE]
GO
/****** Object:  Table [dbo].[D_ADDRESS_TYPE]    Script Date: 05/09/2012 17:21:42 ******/
DROP TABLE [dbo].[D_ADDRESS_TYPE]
GO
/****** Object:  Table [dbo].[D_ATTRIBUTE]    Script Date: 05/09/2012 17:21:42 ******/
DROP TABLE [dbo].[D_ATTRIBUTE]
GO
/****** Object:  Table [dbo].[LOG]    Script Date: 05/09/2012 17:21:42 ******/
DROP TABLE [dbo].[LOG]
GO
/****** Object:  User [privalb]    Script Date: 05/09/2012 17:21:41 ******/
DROP USER [privalb]
GO
/****** Object:  User [privalb]    Script Date: 05/09/2012 17:21:41 ******/
CREATE USER [privalb] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[LOG]    Script Date: 05/09/2012 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LOG](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NULL,
	[Message] [varchar](250) NULL,
	[StackTrace] [varchar](500) NULL,
	[Class] [varchar](50) NULL,
	[Method] [varchar](50) NULL,
	[LineNumber] [int] NULL,
 CONSTRAINT [PK_LOG] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[D_ATTRIBUTE]    Script Date: 05/09/2012 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[D_ATTRIBUTE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](150) NULL,
 CONSTRAINT [PK_D_ATTRIBUTE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[D_ATTRIBUTE] ON
INSERT [dbo].[D_ATTRIBUTE] ([ID], [Name], [Description]) VALUES (1, N'Taglia jeans', NULL)
INSERT [dbo].[D_ATTRIBUTE] ([ID], [Name], [Description]) VALUES (2, N'Taglia maglie', NULL)
INSERT [dbo].[D_ATTRIBUTE] ([ID], [Name], [Description]) VALUES (3, N'Taglia scarpe', NULL)
INSERT [dbo].[D_ATTRIBUTE] ([ID], [Name], [Description]) VALUES (4, N'Taglia cintura2', NULL)
INSERT [dbo].[D_ATTRIBUTE] ([ID], [Name], [Description]) VALUES (7, N'Colore', N'Atributi per ngjyren.')
INSERT [dbo].[D_ATTRIBUTE] ([ID], [Name], [Description]) VALUES (9, N'prova', NULL)
INSERT [dbo].[D_ATTRIBUTE] ([ID], [Name], [Description]) VALUES (10, N'prova2', NULL)
INSERT [dbo].[D_ATTRIBUTE] ([ID], [Name], [Description]) VALUES (11, N'jhgfjfhjfghjf', NULL)
INSERT [dbo].[D_ATTRIBUTE] ([ID], [Name], [Description]) VALUES (12, N'gsgfsdg', NULL)
INSERT [dbo].[D_ATTRIBUTE] ([ID], [Name], [Description]) VALUES (13, N'prova', N'prova')
INSERT [dbo].[D_ATTRIBUTE] ([ID], [Name], [Description]) VALUES (14, N'lalalalla', N'prova')
SET IDENTITY_INSERT [dbo].[D_ATTRIBUTE] OFF
/****** Object:  Table [dbo].[D_ADDRESS_TYPE]    Script Date: 05/09/2012 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[D_ADDRESS_TYPE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_D_ADDRESS_TYPE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[D_ADDRESS_TYPE] ON
INSERT [dbo].[D_ADDRESS_TYPE] ([ID], [Name]) VALUES (1, N'Home')
INSERT [dbo].[D_ADDRESS_TYPE] ([ID], [Name]) VALUES (2, N'Office')
INSERT [dbo].[D_ADDRESS_TYPE] ([ID], [Name]) VALUES (3, N'Other')
SET IDENTITY_INSERT [dbo].[D_ADDRESS_TYPE] OFF
/****** Object:  Table [dbo].[D_STATE]    Script Date: 05/09/2012 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[D_STATE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Enabled] [bit] NULL CONSTRAINT [DF_D_STATE_Enabled]  DEFAULT ((1)),
 CONSTRAINT [PK_D_STATE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[D_STATE] ON
INSERT [dbo].[D_STATE] ([ID], [Name], [Enabled]) VALUES (1, N'Shqiperi', 1)
INSERT [dbo].[D_STATE] ([ID], [Name], [Enabled]) VALUES (2, N'Kosove', 0)
INSERT [dbo].[D_STATE] ([ID], [Name], [Enabled]) VALUES (3, N'Maqedoni', 0)
INSERT [dbo].[D_STATE] ([ID], [Name], [Enabled]) VALUES (4, N'Mal i Zi', 0)
SET IDENTITY_INSERT [dbo].[D_STATE] OFF
/****** Object:  Table [dbo].[D_RETURN_MOTIVATION]    Script Date: 05/09/2012 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[D_RETURN_MOTIVATION](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](70) NULL,
 CONSTRAINT [PK_D_RETURN_MOTIVATION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[D_RETURN_MOTIVATION] ON
INSERT [dbo].[D_RETURN_MOTIVATION] ([ID], [Name]) VALUES (1, N'The item purchased is not what I had requested')
INSERT [dbo].[D_RETURN_MOTIVATION] ([ID], [Name]) VALUES (2, N'I have not received all the products I had bought')
INSERT [dbo].[D_RETURN_MOTIVATION] ([ID], [Name]) VALUES (3, N'My order arrived too late')
INSERT [dbo].[D_RETURN_MOTIVATION] ([ID], [Name]) VALUES (4, N'The product is disappointing compared to how it appeared on the site')
INSERT [dbo].[D_RETURN_MOTIVATION] ([ID], [Name]) VALUES (5, N'The size is too large / too small')
INSERT [dbo].[D_RETURN_MOTIVATION] ([ID], [Name]) VALUES (6, N'The product is defective')
INSERT [dbo].[D_RETURN_MOTIVATION] ([ID], [Name]) VALUES (7, N'The item arrived broken or in poor condition')
INSERT [dbo].[D_RETURN_MOTIVATION] ([ID], [Name]) VALUES (8, N'Other')
SET IDENTITY_INSERT [dbo].[D_RETURN_MOTIVATION] OFF
/****** Object:  Table [dbo].[D_ORDER_STATUS]    Script Date: 05/09/2012 17:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[D_ORDER_STATUS](
	[ID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_D_ORDER_STATUS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[D_ORDER_STATUS] ([ID], [Name]) VALUES (1, N'Open')
INSERT [dbo].[D_ORDER_STATUS] ([ID], [Name]) VALUES (2, N'Waiting Brand')
INSERT [dbo].[D_ORDER_STATUS] ([ID], [Name]) VALUES (3, N'In warehouse')
INSERT [dbo].[D_ORDER_STATUS] ([ID], [Name]) VALUES (4, N'On delivery')
INSERT [dbo].[D_ORDER_STATUS] ([ID], [Name]) VALUES (5, N'Delivered')
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 05/09/2012 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Surname] [varchar](50) NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [nvarchar](250) NOT NULL,
	[BirthDate] [date] NULL,
	[Gender] [char](1) NULL,
	[Active] [bit] NOT NULL CONSTRAINT [DF_CUSTOMER_Active]  DEFAULT ((1)),
	[Newsletter] [bit] NULL CONSTRAINT [DF_CUSTOMER_Newsletter]  DEFAULT ((1)),
	[RegistrationDate] [date] NULL,
	[InvitedFrom] [int] NULL,
 CONSTRAINT [PK_CUSTOMER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_CUSTOMER] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CUSTOMER] ON
INSERT [dbo].[CUSTOMER] ([ID], [Name], [Surname], [Email], [Password], [BirthDate], [Gender], [Active], [Newsletter], [RegistrationDate], [InvitedFrom]) VALUES (1, N'Alda', N'Hasani', N'alda.hasani@gmail.com', N'701b389b848a2b1cfab867093101d8d5ac56addd', CAST(0x03350B00 AS Date), N'F', 1, 0, CAST(0x03350B00 AS Date), NULL)
INSERT [dbo].[CUSTOMER] ([ID], [Name], [Surname], [Email], [Password], [BirthDate], [Gender], [Active], [Newsletter], [RegistrationDate], [InvitedFrom]) VALUES (2, N'Gerti', N'Gjoka', N'gertgjoka@gmail.com', N'b6f226aca83ce90cbc57aa8dd9d5f6c347484ad5', CAST(0x600D0B00 AS Date), N'M', 1, 1, CAST(0x04350B00 AS Date), NULL)
INSERT [dbo].[CUSTOMER] ([ID], [Name], [Surname], [Email], [Password], [BirthDate], [Gender], [Active], [Newsletter], [RegistrationDate], [InvitedFrom]) VALUES (3, N'Ermal', N'Aliraj', N'ermal.aliraj@gmail.com', N'6367c48dd193d56ea7b0baad25b19455e529f5ee', CAST(0xD20D0B00 AS Date), N'M', 1, 0, CAST(0x05350B00 AS Date), NULL)
INSERT [dbo].[CUSTOMER] ([ID], [Name], [Surname], [Email], [Password], [BirthDate], [Gender], [Active], [Newsletter], [RegistrationDate], [InvitedFrom]) VALUES (4, N'Alda', N'Hasani', N'gertgjoka@yahoo.com', N'90795a0ffaa8b88c0e250546d8439bc9c31e5a5e', CAST(0x86350B00 AS Date), N'F', 1, 1, CAST(0x87350B00 AS Date), NULL)
INSERT [dbo].[CUSTOMER] ([ID], [Name], [Surname], [Email], [Password], [BirthDate], [Gender], [Active], [Newsletter], [RegistrationDate], [InvitedFrom]) VALUES (5, N'Gerti', N'Gjoka', N'gertgjoka@hotmail.com', N'90795a0ffaa8b88c0e250546d8439bc9c31e5a5e', CAST(0x88350B00 AS Date), N'M', 1, 1, CAST(0x87350B00 AS Date), NULL)
SET IDENTITY_INSERT [dbo].[CUSTOMER] OFF
/****** Object:  Table [dbo].[CONFIG]    Script Date: 05/09/2012 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONFIG](
	[ConfigKey] [varchar](10) NOT NULL,
	[ConfigValue] [varchar](150) NULL,
	[ConfigEngValue] [varchar](150) NULL,
 CONSTRAINT [PK_CONFIG] PRIMARY KEY CLUSTERED 
(
	[ConfigKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BRAND]    Script Date: 05/09/2012 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BRAND](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ShowName] [nvarchar](50) NOT NULL,
	[Description] [varchar](250) NULL,
	[Contact] [varchar](50) NULL,
	[Telephone] [nvarchar](50) NULL,
	[Website] [varchar](150) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_BRAND] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BRAND] ON
INSERT [dbo].[BRAND] ([ID], [Name], [ShowName], [Description], [Contact], [Telephone], [Website], [Email]) VALUES (9, N'CK', N'CK', N'Calvin Klein
lalaa', N'Mr Calvin', N'1111111', N'http://www.ck.com', N'info@ck.com')
INSERT [dbo].[BRAND] ([ID], [Name], [ShowName], [Description], [Contact], [Telephone], [Website], [Email]) VALUES (10, N'D&G', N'D&G', N'Dolce and Gabbana', N'Domenico Dolce', N'222222', N'www.dg.com', N'info@dg.com')
INSERT [dbo].[BRAND] ([ID], [Name], [ShowName], [Description], [Contact], [Telephone], [Website], [Email]) VALUES (11, N'Valentino', N'Valentino', N'Valentino moda', N'Mr. Valentino', N'3333333', N'www.valentino.com', N'info@valentino.com')
INSERT [dbo].[BRAND] ([ID], [Name], [ShowName], [Description], [Contact], [Telephone], [Website], [Email]) VALUES (13, N'Christian Dior', N'Dior', N'The Christian Dior brand.', N'Mr Christian', N'4739275843', N'http://www.dior.com', N'info@dior.com')
INSERT [dbo].[BRAND] ([ID], [Name], [ShowName], [Description], [Contact], [Telephone], [Website], [Email]) VALUES (14, N'Prada', N'Prada', N'The Prada brand.', N'Mr Prada', N'5943859349', N'http://www.prada.com', N'info@prada.com')
INSERT [dbo].[BRAND] ([ID], [Name], [ShowName], [Description], [Contact], [Telephone], [Website], [Email]) VALUES (15, N'Armani ', N'Emporio Armani', N'the emporio armani brand', N'Mr Giorgio', N'42354225', N'http://www.armani.it', N'info@armani.it')
SET IDENTITY_INSERT [dbo].[BRAND] OFF
/****** Object:  Table [dbo].[SHIPPING]    Script Date: 05/09/2012 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SHIPPING](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ShippingType] [varchar](50) NOT NULL,
	[ShippingCost] [decimal](6, 2) NOT NULL,
 CONSTRAINT [PK_SHIPPING] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SHIPPING] ON
INSERT [dbo].[SHIPPING] ([ID], [ShippingType], [ShippingCost]) VALUES (1, N'In-Store Pickup', CAST(0.00 AS Decimal(6, 2)))
INSERT [dbo].[SHIPPING] ([ID], [ShippingType], [ShippingCost]) VALUES (2, N'Postal', CAST(5.00 AS Decimal(6, 2)))
INSERT [dbo].[SHIPPING] ([ID], [ShippingType], [ShippingCost]) VALUES (3, N'Carrier', CAST(5.00 AS Decimal(6, 2)))
SET IDENTITY_INSERT [dbo].[SHIPPING] OFF
/****** Object:  Table [dbo].[ROLE]    Script Date: 05/09/2012 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ROLE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](250) NULL,
 CONSTRAINT [PK_ROLE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ROLE] ON
INSERT [dbo].[ROLE] ([ID], [Name], [Description]) VALUES (1, N'Administrator', N'Maximum power')
INSERT [dbo].[ROLE] ([ID], [Name], [Description]) VALUES (2, N'Moderator', N'Medium power')
INSERT [dbo].[ROLE] ([ID], [Name], [Description]) VALUES (3, N'User', N'Common user')
SET IDENTITY_INSERT [dbo].[ROLE] OFF
/****** Object:  Table [dbo].[USER]    Script Date: 05/09/2012 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USER](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Login] [varchar](50) NOT NULL,
	[Password] [nvarchar](250) NOT NULL,
	[RoleID] [int] NULL,
	[Enabled] [bit] NOT NULL CONSTRAINT [DF_USER_Enabled]  DEFAULT ((1)),
	[LastIP] [nvarchar](50) NULL,
 CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_USER] UNIQUE NONCLUSTERED 
(
	[Login] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[USER] ON
INSERT [dbo].[USER] ([ID], [Name], [Email], [Login], [Password], [RoleID], [Enabled], [LastIP]) VALUES (1, N'Gerti', N'gertgjoka@gmail.com', N'gerti', N'90795a0ffaa8b88c0e250546d8439bc9c31e5a5e', 1, 1, NULL)
INSERT [dbo].[USER] ([ID], [Name], [Email], [Login], [Password], [RoleID], [Enabled], [LastIP]) VALUES (2, N'Holti', N'holtiony@gmail.com', N'holti', N'90795a0ffaa8b88c0e250546d8439bc9c31e5a5e', 2, 1, NULL)
INSERT [dbo].[USER] ([ID], [Name], [Email], [Login], [Password], [RoleID], [Enabled], [LastIP]) VALUES (3, N'Ermal', N'ermal.aliraj@gmail.com', N'ermal', N'90795a0ffaa8b88c0e250546d8439bc9c31e5a5e', 3, 1, NULL)
INSERT [dbo].[USER] ([ID], [Name], [Email], [Login], [Password], [RoleID], [Enabled], [LastIP]) VALUES (4, N'Alda2', N'alda.hasani@gmail.com', N'alda', N'90da50a01224eea90d4fda090376bd42402c1757', 3, 1, NULL)
INSERT [dbo].[USER] ([ID], [Name], [Email], [Login], [Password], [RoleID], [Enabled], [LastIP]) VALUES (5, N'Aida Xhaxho', N'aida.xhaxho@gmail.com', N'aida', N'355276b52949740769b353fb1fcac58b9d37820d', 1, 1, NULL)
INSERT [dbo].[USER] ([ID], [Name], [Email], [Login], [Password], [RoleID], [Enabled], [LastIP]) VALUES (6, N'gdsa', N'gfds@fasd.com', N'gds', N'58e9d0e4808c7b43fdc17aa52cd1ed46d7012fc8', 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[USER] OFF
/****** Object:  Table [dbo].[BONUS]    Script Date: 05/09/2012 17:21:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BONUS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[Value] [decimal](6, 2) NULL,
	[ValueRemainder] [decimal](6, 2) NULL,
	[DateAssigned] [date] NULL,
	[Validity] [date] NULL,
	[Description] [varchar](250) NULL,
	[Version] [timestamp] NULL,
 CONSTRAINT [PK_BONUS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BONUS] ON
INSERT [dbo].[BONUS] ([ID], [CustomerID], [Value], [ValueRemainder], [DateAssigned], [Validity], [Description]) VALUES (16, 1, CAST(7.00 AS Decimal(6, 2)), CAST(7.00 AS Decimal(6, 2)), CAST(0x1B360B00 AS Date), CAST(0x80350B00 AS Date), N'gsdgfdgfdgfsdgs')
INSERT [dbo].[BONUS] ([ID], [CustomerID], [Value], [ValueRemainder], [DateAssigned], [Validity], [Description]) VALUES (17, 3, CAST(7.00 AS Decimal(6, 2)), CAST(0.00 AS Decimal(6, 2)), CAST(0x1B360B00 AS Date), CAST(0x4D360B00 AS Date), N'gsdgfdgfdgfsdgs')
INSERT [dbo].[BONUS] ([ID], [CustomerID], [Value], [ValueRemainder], [DateAssigned], [Validity], [Description]) VALUES (18, 2, CAST(7.00 AS Decimal(6, 2)), CAST(0.00 AS Decimal(6, 2)), CAST(0x1B360B00 AS Date), CAST(0x4D360B00 AS Date), N'heyyyy1234')
INSERT [dbo].[BONUS] ([ID], [CustomerID], [Value], [ValueRemainder], [DateAssigned], [Validity], [Description]) VALUES (19, 1, CAST(17.00 AS Decimal(6, 2)), CAST(0.00 AS Decimal(6, 2)), CAST(0x1B360B00 AS Date), CAST(0x8A360B00 AS Date), N'vsdgdsfgfdgsdfgsfdgs')
INSERT [dbo].[BONUS] ([ID], [CustomerID], [Value], [ValueRemainder], [DateAssigned], [Validity], [Description]) VALUES (20, 3, CAST(17.00 AS Decimal(6, 2)), CAST(0.00 AS Decimal(6, 2)), CAST(0x1B360B00 AS Date), CAST(0x8A360B00 AS Date), N'vsdgdsfgfdgsdfgsfdgs')
INSERT [dbo].[BONUS] ([ID], [CustomerID], [Value], [ValueRemainder], [DateAssigned], [Validity], [Description]) VALUES (21, 2, CAST(17.00 AS Decimal(6, 2)), CAST(0.00 AS Decimal(6, 2)), CAST(0x1B360B00 AS Date), CAST(0x8A360B00 AS Date), N'vsdgdsfgfdgsdfgsfdgs')
INSERT [dbo].[BONUS] ([ID], [CustomerID], [Value], [ValueRemainder], [DateAssigned], [Validity], [Description]) VALUES (22, 1, CAST(11.00 AS Decimal(6, 2)), CAST(0.00 AS Decimal(6, 2)), CAST(0x63350B00 AS Date), CAST(0x58360B00 AS Date), N'correcting bonusfd')
INSERT [dbo].[BONUS] ([ID], [CustomerID], [Value], [ValueRemainder], [DateAssigned], [Validity], [Description]) VALUES (23, 3, CAST(12.00 AS Decimal(6, 2)), CAST(0.00 AS Decimal(6, 2)), CAST(0x63350B00 AS Date), CAST(0x58360B00 AS Date), N'ahahhahahdh1')
INSERT [dbo].[BONUS] ([ID], [CustomerID], [Value], [ValueRemainder], [DateAssigned], [Validity], [Description]) VALUES (24, 2, CAST(12.00 AS Decimal(6, 2)), CAST(0.00 AS Decimal(6, 2)), CAST(0x63350B00 AS Date), CAST(0x58360B00 AS Date), N'fsdafsda')
INSERT [dbo].[BONUS] ([ID], [CustomerID], [Value], [ValueRemainder], [DateAssigned], [Validity], [Description]) VALUES (25, 1, CAST(15.00 AS Decimal(6, 2)), CAST(0.00 AS Decimal(6, 2)), CAST(0x69350B00 AS Date), CAST(0x9D350B00 AS Date), N'fdsfdfsdfds')
INSERT [dbo].[BONUS] ([ID], [CustomerID], [Value], [ValueRemainder], [DateAssigned], [Validity], [Description]) VALUES (26, 3, CAST(15.00 AS Decimal(6, 2)), CAST(15.00 AS Decimal(6, 2)), CAST(0x69350B00 AS Date), CAST(0x9D350B00 AS Date), N'fdsfdfsdfds')
INSERT [dbo].[BONUS] ([ID], [CustomerID], [Value], [ValueRemainder], [DateAssigned], [Validity], [Description]) VALUES (27, 2, CAST(15.00 AS Decimal(6, 2)), CAST(0.00 AS Decimal(6, 2)), CAST(0x69350B00 AS Date), CAST(0x9D350B00 AS Date), N'fdsfdfsdfds')
SET IDENTITY_INSERT [dbo].[BONUS] OFF
/****** Object:  Table [dbo].[D_CITY]    Script Date: 05/09/2012 17:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[D_CITY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[StateID] [int] NOT NULL,
 CONSTRAINT [PK_D_CITY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[D_CITY] ON
INSERT [dbo].[D_CITY] ([ID], [Name], [StateID]) VALUES (1, N'Tirane', 1)
INSERT [dbo].[D_CITY] ([ID], [Name], [StateID]) VALUES (2, N'Durres', 1)
INSERT [dbo].[D_CITY] ([ID], [Name], [StateID]) VALUES (3, N'Vlore', 1)
INSERT [dbo].[D_CITY] ([ID], [Name], [StateID]) VALUES (4, N'Shkoder', 1)
INSERT [dbo].[D_CITY] ([ID], [Name], [StateID]) VALUES (5, N'Korce', 1)
INSERT [dbo].[D_CITY] ([ID], [Name], [StateID]) VALUES (6, N'Gjirokaster', 1)
INSERT [dbo].[D_CITY] ([ID], [Name], [StateID]) VALUES (7, N'Elbasan', 1)
SET IDENTITY_INSERT [dbo].[D_CITY] OFF
/****** Object:  Table [dbo].[D_ATTRIBUTE_VALUE]    Script Date: 05/09/2012 17:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[D_ATTRIBUTE_VALUE](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AttributeID] [int] NOT NULL,
	[Value] [varchar](50) NULL,
	[ShowOrder] [int] NOT NULL,
 CONSTRAINT [PK_ATTRIBUTE_VALUE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[D_ATTRIBUTE_VALUE] ON
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (1, 1, N'29', 1)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (2, 1, N'30', 2)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (5, 1, N'31', 3)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (6, 1, N'32', 4)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (7, 1, N'33', 5)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (8, 1, N'34', 6)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (9, 1, N'36', 7)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (11, 1, N'37', 8)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (12, 3, N'39', 9)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (15, 3, N'42', 10)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (18, 2, N'S', 1)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (19, 2, N'M', 2)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (20, 7, N'Verde', 1)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (22, 7, N'Fuxia', 6)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (23, 7, N'Blue', 4)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (24, 7, N'Nero', 5)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (28, 4, N'101cm', 1)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (29, 4, N'200cm', 2)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (30, 9, N'fda', 1)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (31, 9, N'das', 2)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (32, 9, N'da', 3)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (33, 10, N'gafsda', 1)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (34, 10, N'fdsfsa', 2)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (35, 10, N'fdsfa', 3)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (36, 10, N'fdsafdas', 4)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (37, 10, N'fdsfdsfa', 5)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (38, 10, N'fdfads', 6)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (39, 10, N'fdfdas', 100)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (40, 10, N'fdfdsa', 8)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (41, 10, N'jghj', 9)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (42, 10, N'jhgjf', 10)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (43, 10, N'jhjf', 11)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (44, 10, N'jghfyu', 12)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (45, 10, N'6546', 13)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (46, 1, N'39', 10)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (47, 7, N'Marrone', 2)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (48, 12, N'lala', 1)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (49, 12, N'gfsg', 2)
INSERT [dbo].[D_ATTRIBUTE_VALUE] ([ID], [AttributeID], [Value], [ShowOrder]) VALUES (50, 9, N'rew', 1)
SET IDENTITY_INSERT [dbo].[D_ATTRIBUTE_VALUE] OFF
/****** Object:  Table [dbo].[CUSTOMER_AUDIT]    Script Date: 05/09/2012 17:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CUSTOMER_AUDIT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[IP] [varchar](50) NULL,
	[CustomerID] [int] NULL,
 CONSTRAINT [PK_STAT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INVITATION]    Script Date: 05/09/2012 17:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[INVITATION](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[InvitedMail] [varchar](50) NULL,
	[Registered] [bit] NULL,
	[RegistrationDate] [date] NULL,
	[IP] [nvarchar](50) NULL,
	[Cookie] [nvarchar](50) NULL,
 CONSTRAINT [PK_INVITATION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[INVITATION] ON
INSERT [dbo].[INVITATION] ([ID], [CustomerID], [InvitedMail], [Registered], [RegistrationDate], [IP], [Cookie]) VALUES (1, 1, N'gertgjoka@yahoo.com', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[INVITATION] OFF
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 05/09/2012 17:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[OurPrice] [decimal](6, 2) NOT NULL,
	[OriginalPrice] [decimal](6, 2) NOT NULL,
	[Discount]  AS (CONVERT([int],(([OriginalPrice]-[OurPrice])/[OriginalPrice])*(100),(0))),
	[Approved] [bit] NULL CONSTRAINT [DF_PRODUCT_Approved]  DEFAULT ((0)),
	[ApprovedBy] [int] NULL,
	[Closed] [bit] NULL CONSTRAINT [DF_PRODUCT_ReadOnly]  DEFAULT ((0)),
 CONSTRAINT [PK_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[PRODUCT] ON
INSERT [dbo].[PRODUCT] ([ID], [Name], [Description], [OurPrice], [OriginalPrice], [Approved], [ApprovedBy], [Closed]) VALUES (6, N'Product 1 CK maglia', N'gfdsgfd<br />
gdfsgfsdgfdg<br />', CAST(120.00 AS Decimal(6, 2)), CAST(235.25 AS Decimal(6, 2)), 1, 1, 1)
INSERT [dbo].[PRODUCT] ([ID], [Name], [Description], [OurPrice], [OriginalPrice], [Approved], [ApprovedBy], [Closed]) VALUES (7, N'Product 2 DG scarpe', N'gfggffdsg<br />', CAST(120.00 AS Decimal(6, 2)), CAST(250.00 AS Decimal(6, 2)), NULL, NULL, NULL)
INSERT [dbo].[PRODUCT] ([ID], [Name], [Description], [OurPrice], [OriginalPrice], [Approved], [ApprovedBy], [Closed]) VALUES (8, N'Maglia CK', N'gfsggreg<br />', CAST(11.00 AS Decimal(6, 2)), CAST(22.00 AS Decimal(6, 2)), NULL, NULL, NULL)
INSERT [dbo].[PRODUCT] ([ID], [Name], [Description], [OurPrice], [OriginalPrice], [Approved], [ApprovedBy], [Closed]) VALUES (9, N'Product valentino cintura', N'', CAST(11.00 AS Decimal(6, 2)), CAST(22.00 AS Decimal(6, 2)), NULL, NULL, NULL)
INSERT [dbo].[PRODUCT] ([ID], [Name], [Description], [OurPrice], [OriginalPrice], [Approved], [ApprovedBy], [Closed]) VALUES (11, N'Jeans 1 Valentino', N'Beautiful jeans from Valentino<br />', CAST(50.00 AS Decimal(6, 2)), CAST(120.00 AS Decimal(6, 2)), NULL, NULL, NULL)
INSERT [dbo].[PRODUCT] ([ID], [Name], [Description], [OurPrice], [OriginalPrice], [Approved], [ApprovedBy], [Closed]) VALUES (12, N'Portafoglio CK', N'Bellissimo portafoglio in pelle', CAST(23.00 AS Decimal(6, 2)), CAST(46.00 AS Decimal(6, 2)), NULL, NULL, NULL)
INSERT [dbo].[PRODUCT] ([ID], [Name], [Description], [OurPrice], [OriginalPrice], [Approved], [ApprovedBy], [Closed]) VALUES (13, N'Zaino D&G', N'Fake product desc', CAST(15.00 AS Decimal(6, 2)), CAST(30.00 AS Decimal(6, 2)), NULL, NULL, NULL)
INSERT [dbo].[PRODUCT] ([ID], [Name], [Description], [OurPrice], [OriginalPrice], [Approved], [ApprovedBy], [Closed]) VALUES (14, N'Maglia CK 2', N'Fake product desc', CAST(15.00 AS Decimal(6, 2)), CAST(30.00 AS Decimal(6, 2)), NULL, NULL, NULL)
INSERT [dbo].[PRODUCT] ([ID], [Name], [Description], [OurPrice], [OriginalPrice], [Approved], [ApprovedBy], [Closed]) VALUES (15, N'FakeProduct2', N'Fake product desc', CAST(15.00 AS Decimal(6, 2)), CAST(30.00 AS Decimal(6, 2)), NULL, NULL, NULL)
INSERT [dbo].[PRODUCT] ([ID], [Name], [Description], [OurPrice], [OriginalPrice], [Approved], [ApprovedBy], [Closed]) VALUES (16, N'FakeProduct2', N'Fake product desc', CAST(0.00 AS Decimal(6, 2)), CAST(30.00 AS Decimal(6, 2)), NULL, NULL, NULL)
INSERT [dbo].[PRODUCT] ([ID], [Name], [Description], [OurPrice], [OriginalPrice], [Approved], [ApprovedBy], [Closed]) VALUES (19, N'FakeProduct2', N'Fake product desc', CAST(15.00 AS Decimal(6, 2)), CAST(30.00 AS Decimal(6, 2)), NULL, NULL, NULL)
INSERT [dbo].[PRODUCT] ([ID], [Name], [Description], [OurPrice], [OriginalPrice], [Approved], [ApprovedBy], [Closed]) VALUES (20, N'Test 1 Produkt', N'vxzvcxz<br />', CAST(15.00 AS Decimal(6, 2)), CAST(50.00 AS Decimal(6, 2)), NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PRODUCT] OFF
/****** Object:  Table [dbo].[CAMPAIGN]    Script Date: 05/09/2012 17:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CAMPAIGN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BrandID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](250) NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[DeliveryStartDate] [date] NULL,
	[DeliveryEndDate] [date] NULL,
	[Logo] [nvarchar](100) NULL,
	[ImageHome] [nvarchar](100) NULL,
	[ImageDetail] [nvarchar](100) NULL,
	[ImageListHeader] [nvarchar](100) NULL,
	[Active] [bit] NOT NULL CONSTRAINT [DF_CAMPAIGN_Active]  DEFAULT ((1)),
	[GenericFile] [nvarchar](100) NULL,
	[Approved] [bit] NULL CONSTRAINT [DF_CAMPAIGN_Approved]  DEFAULT ((0)),
	[ApprovedBy] [int] NULL,
 CONSTRAINT [PK_CAMPAIGN_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CAMPAIGN] ON
INSERT [dbo].[CAMPAIGN] ([ID], [BrandID], [Name], [Description], [StartDate], [EndDate], [DeliveryStartDate], [DeliveryEndDate], [Logo], [ImageHome], [ImageDetail], [ImageListHeader], [Active], [GenericFile], [Approved], [ApprovedBy]) VALUES (2, 9, N'Vendita CK', N'Vendita di prodotti CK', CAST(0x00009F9500735B40 AS DateTime), CAST(0x00009F980062E080 AS DateTime), CAST(0x07350B00 AS Date), CAST(0x10350B00 AS Date), N'4863b1f9-1c1f-446e-b9a4-384a82b2ac53__Robbie_Rivera_Aquadrom.jpg', N'881ae62e-552d-4bb9-b16c-a9b5355bcd7e__paradise.jpg', N'7d250dfb-0c82-4cf1-868c-c33b3c607d7c__final_fantasy.jpg', N'82a31d62-69bf-40bd-9738-89c8e464b300__DSC00230.JPG', 0, N'9055a27b-26ad-4135-a399-187167a6fe6a__ermal.pdf', NULL, NULL)
INSERT [dbo].[CAMPAIGN] ([ID], [BrandID], [Name], [Description], [StartDate], [EndDate], [DeliveryStartDate], [DeliveryEndDate], [Logo], [ImageHome], [ImageDetail], [ImageListHeader], [Active], [GenericFile], [Approved], [ApprovedBy]) VALUES (3, 9, N'Seconda Vendita CK', N'Vendita di prodotti CK, seconda fase', CAST(0x00009F9600000000 AS DateTime), CAST(0x00009F9900000000 AS DateTime), CAST(0x09350B00 AS Date), CAST(0x0F350B00 AS Date), N'd552607b-c4a7-4de9-9b64-c37467ea209f__338995_6.JPG', N'e2394688-ddb4-4250-b65a-9c4ccc1a0023__356620_1.JPG', N'c933eaf7-b5d3-4cf9-a0d5-253ffc5a699c__308420_1.JPG', N'bd4d6e44-1e52-4abe-855d-a318220ec4ae__359205_2.JPG', 0, N'145fd378-d2d1-4595-994c-3dcc514d0cb9__Hotel Santa Lucia - Deposito Gerti Gjoka.pdf', 1, 2)
INSERT [dbo].[CAMPAIGN] ([ID], [BrandID], [Name], [Description], [StartDate], [EndDate], [DeliveryStartDate], [DeliveryEndDate], [Logo], [ImageHome], [ImageDetail], [ImageListHeader], [Active], [GenericFile], [Approved], [ApprovedBy]) VALUES (4, 10, N'Vendita D&G', N'Vendita di prodotti D&G', CAST(0x00009F9400000000 AS DateTime), CAST(0x00009F9800000000 AS DateTime), CAST(0x07350B00 AS Date), CAST(0x12350B00 AS Date), NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[CAMPAIGN] ([ID], [BrandID], [Name], [Description], [StartDate], [EndDate], [DeliveryStartDate], [DeliveryEndDate], [Logo], [ImageHome], [ImageDetail], [ImageListHeader], [Active], [GenericFile], [Approved], [ApprovedBy]) VALUES (5, 11, N'Vendita Valentino', N'Vendita di prodotti Valentino', CAST(0x00009F9600000000 AS DateTime), CAST(0x00009F9900000000 AS DateTime), CAST(0x0A350B00 AS Date), CAST(0x11350B00 AS Date), NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[CAMPAIGN] ([ID], [BrandID], [Name], [Description], [StartDate], [EndDate], [DeliveryStartDate], [DeliveryEndDate], [Logo], [ImageHome], [ImageDetail], [ImageListHeader], [Active], [GenericFile], [Approved], [ApprovedBy]) VALUES (6, 10, N'Vendita D&G 2', N'Vendita di prodotti D&G', CAST(0x00009F9400735B40 AS DateTime), CAST(0x00009F980062E080 AS DateTime), CAST(0x07350B00 AS Date), CAST(0x12350B00 AS Date), NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL)
INSERT [dbo].[CAMPAIGN] ([ID], [BrandID], [Name], [Description], [StartDate], [EndDate], [DeliveryStartDate], [DeliveryEndDate], [Logo], [ImageHome], [ImageDetail], [ImageListHeader], [Active], [GenericFile], [Approved], [ApprovedBy]) VALUES (7, 9, N'gfdgsgdfs3', N'gfsdgfsdrrr1', CAST(0x00009FF30062E080 AS DateTime), CAST(0x0000A00200735B40 AS DateTime), CAST(0x5B350B00 AS Date), CAST(0x61350B00 AS Date), N'd9d4a62b-e051-4049-a5a9-a7884c25c74b__autumn landascape.jpg', N'aa133715-7483-4a54-b060-5ab2994d0e72__fractal2.jpg', N'80e4968a-4587-42b5-9114-e3533927e65a__geyser_pool.jpg', N'38a6cd8c-f53d-43bc-b732-bff32e5911bd__heart_on_wood.jpg', 0, NULL, 1, 2)
INSERT [dbo].[CAMPAIGN] ([ID], [BrandID], [Name], [Description], [StartDate], [EndDate], [DeliveryStartDate], [DeliveryEndDate], [Logo], [ImageHome], [ImageDetail], [ImageListHeader], [Active], [GenericFile], [Approved], [ApprovedBy]) VALUES (8, 9, N'Fashion campaign', N'vgvdsfgsfdgsd', CAST(0x00009FF100735B40 AS DateTime), CAST(0x0000A0020062E080 AS DateTime), CAST(0x70350B00 AS Date), CAST(0x77350B00 AS Date), N'c424e4a5-7116-45b5-bdcd-0d80d7bab8b5__paradise2.jpg', N'e091921a-b000-4299-b81d-a788817c5a86__paradise.jpg', N'4f58e736-3a90-4676-bba3-c46800935be9__autumn landascape.jpg', N'1f320596-ec95-4e62-9d6b-c60409146963__landscape_bali.jpg', 0, N'a668273b-af8a-4a24-add3-60f114c86f99__Fattura Aruba Gerti.pdf', 1, 1)
INSERT [dbo].[CAMPAIGN] ([ID], [BrandID], [Name], [Description], [StartDate], [EndDate], [DeliveryStartDate], [DeliveryEndDate], [Logo], [ImageHome], [ImageDetail], [ImageListHeader], [Active], [GenericFile], [Approved], [ApprovedBy]) VALUES (9, 10, N'Campaign test 1-1', N'fgfgsgsgfsddsada', CAST(0x0000A02C0083D600 AS DateTime), CAST(0x0000A03E00735B40 AS DateTime), CAST(0x8C350B00 AS Date), CAST(0x93350B00 AS Date), N'dbc8a0f3-f9c1-43cc-ba5a-b510bef6f7d6__music3.jpg', N'9978a887-766f-465b-8dbd-374e340a452b__DGfinal.jpg', N'b43db0f7-4821-433e-a0a8-5af0f6b2a0bb__eden.jpg', N'e798e788-1cc3-4bbd-8642-c03b71da859f__bridge.jpg', 1, N'206fb4fe-ec6a-41c9-9a0b-4bf013cdefa3__cascadingdropdown3CS.pdf', 1, 1)
INSERT [dbo].[CAMPAIGN] ([ID], [BrandID], [Name], [Description], [StartDate], [EndDate], [DeliveryStartDate], [DeliveryEndDate], [Logo], [ImageHome], [ImageDetail], [ImageListHeader], [Active], [GenericFile], [Approved], [ApprovedBy]) VALUES (10, 9, N'Task Testing CK Campaign', N'Task testing', CAST(0x0000A02C00C5C100 AS DateTime), CAST(0x0000A03D00B54640 AS DateTime), CAST(0x94350B00 AS Date), CAST(0x9C350B00 AS Date), N'99526f1f-c94b-466b-8a51-a7ac1399b264__waterfalls in paradise.jpg', N'989f5c82-eac9-4b16-92c9-1b12429fd54c__CKFinal.jpg', N'f4be7f8a-f1af-4a28-9880-039c317e9e58__brown_green_blueTHUMB.jpg', N'ecb64f75-e0fe-40ae-908d-6794d03f0e0e__landscape_bali.jpg', 1, N'8bc1be94-c43a-415f-a430-930995a260cd__Bonifico Italianfashion - Valentino ferre.pdf', 1, 1)
INSERT [dbo].[CAMPAIGN] ([ID], [BrandID], [Name], [Description], [StartDate], [EndDate], [DeliveryStartDate], [DeliveryEndDate], [Logo], [ImageHome], [ImageDetail], [ImageListHeader], [Active], [GenericFile], [Approved], [ApprovedBy]) VALUES (11, 15, N'Task Testing Emporio Armani Task', N'Task testing', CAST(0x0000A02C00C5C100 AS DateTime), CAST(0x0000A03C0062E080 AS DateTime), CAST(0x94350B00 AS Date), CAST(0x98350B00 AS Date), N'5e5f0dcb-e06b-461b-8a84-9a11fd1c0ee7__lemonTHUMB.jpg', N'e3219133-8d97-46c3-9204-b3081851b37d__LogoEmporioArmani.jpg', N'41b26b8b-4fb9-4c25-84ce-48a399a9d680__brown_green_blueTHUMB.jpg', N'7a0b21b6-faa7-4353-ac3c-247690f02671__waterfalls in paradiseTHUMB.jpg', 1, NULL, 1, 1)
SET IDENTITY_INSERT [dbo].[CAMPAIGN] OFF
/****** Object:  Table [dbo].[AUDIT]    Script Date: 05/09/2012 17:21:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AUDIT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Action] [varchar](50) NULL,
	[Description] [varchar](500) NULL,
	[TimeStamp] [datetime] NULL,
 CONSTRAINT [PK_AUDIT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ADDRESSINFO]    Script Date: 05/09/2012 17:21:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADDRESSINFO](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](150) NULL,
	[Telephone] [varchar](20) NULL,
	[Location] [varchar](50) NULL,
	[City] [int] NULL,
	[PostCode] [varchar](10) NULL,
	[Type] [int] NULL,
 CONSTRAINT [PK_ADDRESSINFO_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ADDRESSINFO] ON
INSERT [dbo].[ADDRESSINFO] ([ID], [Name], [Address], [Telephone], [Location], [City], [PostCode], [Type]) VALUES (1, N'Alda Hasani', N'Rruga G. Masini 139-7', N'21111', N'Castelfiorentino', 3, N'1001', 1)
INSERT [dbo].[ADDRESSINFO] ([ID], [Name], [Address], [Telephone], [Location], [City], [PostCode], [Type]) VALUES (2, N'Fejzi Hasancja', N'Lalallalalalal3', N'888', N'gfdgfd', 4, N'gfdgfdgfd', 2)
INSERT [dbo].[ADDRESSINFO] ([ID], [Name], [Address], [Telephone], [Location], [City], [PostCode], [Type]) VALUES (3, N'Gerti Gjoka', N'Rr. Sami Frasheri 55', N'0692146615', N'Tirane e re', 1, N'1001', 1)
INSERT [dbo].[ADDRESSINFO] ([ID], [Name], [Address], [Telephone], [Location], [City], [PostCode], [Type]) VALUES (4, N'Gerti Gjoka', N'Zone Sh.p.k Rruga e Bogdaneve', N'1224142', N'Tirane', 1, N'1029', 2)
INSERT [dbo].[ADDRESSINFO] ([ID], [Name], [Address], [Telephone], [Location], [City], [PostCode], [Type]) VALUES (5, N'Gerti Gjoka', N'Rr. Sami Frasheri 55', N'0692146615', N'Tirane e re', 1, N'1001', 1)
INSERT [dbo].[ADDRESSINFO] ([ID], [Name], [Address], [Telephone], [Location], [City], [PostCode], [Type]) VALUES (6, N'Gerti Gjoka', N'Zone Sh.p.k Rruga e Bogdaneve', N'1224142', N'Tirane', 1, N'1029', 2)
INSERT [dbo].[ADDRESSINFO] ([ID], [Name], [Address], [Telephone], [Location], [City], [PostCode], [Type]) VALUES (7, N'Alda Hasani', N'Rruga G. Masini 139-5', N'21111', N'Castelfiorentino', 3, N'1001', 1)
INSERT [dbo].[ADDRESSINFO] ([ID], [Name], [Address], [Telephone], [Location], [City], [PostCode], [Type]) VALUES (8, N'Aldina Hasani', N'Rr. Marko Bocari 55', N'1111221', N'Tirane', 1, N'1001', 1)
INSERT [dbo].[ADDRESSINFO] ([ID], [Name], [Address], [Telephone], [Location], [City], [PostCode], [Type]) VALUES (9, N'fsadgfsdgsd', N'gdfgsdf124', N'gfdgsd', N'gfdgsd', 4, N'gfdgdfs', 2)
INSERT [dbo].[ADDRESSINFO] ([ID], [Name], [Address], [Telephone], [Location], [City], [PostCode], [Type]) VALUES (10, N'fds', N'fds', N'fdsfsdf', N'fdf', 1, N'sdfdsfghg', 2)
INSERT [dbo].[ADDRESSINFO] ([ID], [Name], [Address], [Telephone], [Location], [City], [PostCode], [Type]) VALUES (11, N'Ermalos Alirajos', N'flkafsdlfksdl', N'34224324', N'Korce', 5, N'2121', 2)
INSERT [dbo].[ADDRESSINFO] ([ID], [Name], [Address], [Telephone], [Location], [City], [PostCode], [Type]) VALUES (12, N'fds', N'fds', N'fdsfsdf', N'fdf', 1, N'sdfdsfghg', 2)
INSERT [dbo].[ADDRESSINFO] ([ID], [Name], [Address], [Telephone], [Location], [City], [PostCode], [Type]) VALUES (13, N'Gerti Gjoka', N'Zone Sh.p.k Rruga e Bogdaneve', N'1224142', N'Tirane', 1, N'1029', 2)
INSERT [dbo].[ADDRESSINFO] ([ID], [Name], [Address], [Telephone], [Location], [City], [PostCode], [Type]) VALUES (14, N'Gerti Gjoka', N'Rr. Sami Frasheri 55', N'0692146615', N'Tirane e re', 1, N'1001', 1)
INSERT [dbo].[ADDRESSINFO] ([ID], [Name], [Address], [Telephone], [Location], [City], [PostCode], [Type]) VALUES (15, N'Aldina Hasani', N'Rr. Marko Bocari 55', N'1111221', N'Tirane', 1, N'1001', 1)
INSERT [dbo].[ADDRESSINFO] ([ID], [Name], [Address], [Telephone], [Location], [City], [PostCode], [Type]) VALUES (16, N'Alda Hasani', N'Rruga G. Masini 139-5', N'21111', N'Castelfiorentino', 3, N'1001', 1)
INSERT [dbo].[ADDRESSINFO] ([ID], [Name], [Address], [Telephone], [Location], [City], [PostCode], [Type]) VALUES (21, N'Gerti Gjoka', N'Rr. Sami Frasheri 55', N'0692146615', N'Tirane e re', 1, N'1001', 1)
INSERT [dbo].[ADDRESSINFO] ([ID], [Name], [Address], [Telephone], [Location], [City], [PostCode], [Type]) VALUES (22, N'Gerti Gjoka', N'Zone Sh.p.k Rruga e Bogdaneve', N'1224142', N'Tirane', 1, N'1029', 2)
INSERT [dbo].[ADDRESSINFO] ([ID], [Name], [Address], [Telephone], [Location], [City], [PostCode], [Type]) VALUES (23, N'Gerti Gjoka', N'Rr. Sami Frasheri 55', N'0692146615', N'Tirane e re', 1, N'1001', 1)
INSERT [dbo].[ADDRESSINFO] ([ID], [Name], [Address], [Telephone], [Location], [City], [PostCode], [Type]) VALUES (24, N'Gerti Gjoka', N'Zone Sh.p.k Rruga e Bogdaneve', N'1224142', N'Tirane', 1, N'1029', 2)
INSERT [dbo].[ADDRESSINFO] ([ID], [Name], [Address], [Telephone], [Location], [City], [PostCode], [Type]) VALUES (25, N'Ermalos Alirajos', N'flkafsdlfksdl', N'34224324', N'Korce', 5, N'2121', 2)
INSERT [dbo].[ADDRESSINFO] ([ID], [Name], [Address], [Telephone], [Location], [City], [PostCode], [Type]) VALUES (26, N'fds', N'fds', N'fdsfsdf', N'fdf', 1, N'sdfdsfghg', 2)
SET IDENTITY_INSERT [dbo].[ADDRESSINFO] OFF
/****** Object:  Table [dbo].[ADDRESS]    Script Date: 05/09/2012 17:21:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADDRESS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[CustomerID] [int] NOT NULL,
	[Address] [varchar](150) NULL,
	[Location] [varchar](50) NULL,
	[CityID] [int] NULL,
	[Telephone] [varchar](20) NULL,
	[TypeID] [int] NULL,
	[PostCode] [varchar](10) NULL,
 CONSTRAINT [PK_ADDRESS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ADDRESS] ON
INSERT [dbo].[ADDRESS] ([ID], [Name], [CustomerID], [Address], [Location], [CityID], [Telephone], [TypeID], [PostCode]) VALUES (23, N'fsadgfsdgsd', 3, N'gdfgsdf', N'gfdgsd', 4, N'gfdgsd', 2, N'gfdgdfs')
INSERT [dbo].[ADDRESS] ([ID], [Name], [CustomerID], [Address], [Location], [CityID], [Telephone], [TypeID], [PostCode]) VALUES (27, N'Alda Hasani', 1, N'Rruga G. Masini 139-5', N'Castelfiorentino', 3, N'21111', 1, N'1001')
INSERT [dbo].[ADDRESS] ([ID], [Name], [CustomerID], [Address], [Location], [CityID], [Telephone], [TypeID], [PostCode]) VALUES (33, N'Fejzi Hasani', 1, N'Vaqar prane shkolles fillore', N'gfdgfd', 2, N'888', 2, N'gfdgfdgfd')
INSERT [dbo].[ADDRESS] ([ID], [Name], [CustomerID], [Address], [Location], [CityID], [Telephone], [TypeID], [PostCode]) VALUES (37, N'fdsfsdfsa1', 1, N'fds fsdlfksfksdò', N'fdsfdsfs1', 2, N'fdsfsdfsdfs1', 3, N'fdsfds1sfs')
INSERT [dbo].[ADDRESS] ([ID], [Name], [CustomerID], [Address], [Location], [CityID], [Telephone], [TypeID], [PostCode]) VALUES (38, N'fds', 3, N'fds', N'fdf', 1, N'fdsfsdf', 2, N'sdfdsfghg')
INSERT [dbo].[ADDRESS] ([ID], [Name], [CustomerID], [Address], [Location], [CityID], [Telephone], [TypeID], [PostCode]) VALUES (39, N'Aldina Hasani', 1, N'Rr. Marko Bocari 55', N'Tirane', 1, N'1111221', 1, N'1001')
INSERT [dbo].[ADDRESS] ([ID], [Name], [CustomerID], [Address], [Location], [CityID], [Telephone], [TypeID], [PostCode]) VALUES (40, N'Ermalos Alirajos', 3, N'flkafsdlfksdl', N'Korce', 5, N'34224324', 2, N'2121')
INSERT [dbo].[ADDRESS] ([ID], [Name], [CustomerID], [Address], [Location], [CityID], [Telephone], [TypeID], [PostCode]) VALUES (41, N'Gerti Gjoka', 2, N'Rr. Sami Frasheri 55', N'Tirane e re', 1, N'0692146615', 1, N'1001')
INSERT [dbo].[ADDRESS] ([ID], [Name], [CustomerID], [Address], [Location], [CityID], [Telephone], [TypeID], [PostCode]) VALUES (42, N'Gerti Gjoka', 2, N'Zone Sh.p.k Rruga e Bogdaneve', N'Tirane', 1, N'1224142', 2, N'1029')
INSERT [dbo].[ADDRESS] ([ID], [Name], [CustomerID], [Address], [Location], [CityID], [Telephone], [TypeID], [PostCode]) VALUES (43, N'fsdfsda', 1, N'fsadfa', N'fsdafdsa', 4, N'fdsafas', 2, N'fsdfas')
SET IDENTITY_INSERT [dbo].[ADDRESS] OFF
/****** Object:  StoredProcedure [dbo].[ActivateActualCampaigns]    Script Date: 05/09/2012 17:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[ActivateActualCampaigns]
AS
BEGIN

UPDATE CAMPAIGN
set Active = 1
where CONVERT(VARCHAR(10),StartDate,111)= CONVERT(VARCHAR(10),GETDATE(),111) and Approved = 1
and Active = 0;
SELECT @@ROWCOUNT

END
GO
/****** Object:  Table [dbo].[CATEGORY]    Script Date: 05/09/2012 17:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CATEGORY](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CampaignID] [int] NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](250) NULL,
	[ParentID] [int] NULL,
	[AttributeID] [int] NULL,
	[Ordering] [int] NULL,
 CONSTRAINT [PK_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CATEGORY] ON
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (3, 4, N'Cat Root DG', N'fadffds', NULL, NULL, NULL)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (4, 4, N'Cat Root2 DG', N'gsgfsg', NULL, NULL, NULL)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (5, 4, N'Cat Child DG', N'safdafsdfs', 3, NULL, NULL)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (6, 2, N'Cat CK', N'flòfldsòflds', NULL, NULL, 1)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (7, 2, N'Cat Child CK', N'fmldsmkfòls', 6, NULL, NULL)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (10, 2, N'Cat Root CK', N'm,.gmfsd,mgfsd.', NULL, NULL, NULL)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (11, 5, N'All', N'All cat', NULL, NULL, NULL)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (12, 5, N'Man', N'Man cat', 11, NULL, 2)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (13, 5, N'Woman', N'Woman cat', 11, NULL, 3)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (15, 3, N'Cat root 2 vendita CK', N'ffdsdafsdafa', NULL, NULL, 1)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (16, 3, N'Cat child 2 CK', N'gbshgjhdgdj', 15, NULL, 2)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (17, 3, N'Cat root 2 vendita CK 2', N'v,vclv,clvxc', NULL, NULL, 2)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (19, 3, N'Cat root 2 vendita CK 4', N'glfdgldf', NULL, NULL, 4)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (20, 3, N'Cat root 2 vendita CK 3', N'bflbkf', NULL, NULL, 3)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (21, 3, N'Cat child 2 CK 1', N'hgfhfghjfghf', 15, NULL, 1)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (22, 4, N'cat child child dg 2', N'mlkmnkmklmlkml', 5, NULL, 2)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (23, 4, N'cat child child dg 1', N'fgsgfsgfdsgsdf', 5, NULL, 1)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (24, 3, N'cat child child 2 ck 1', N'gsgfsgfgsd', 21, NULL, 1)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (25, 3, N'dfsa', N'fdfsd', 17, 2, NULL)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (26, 5, N'Jeans', N'Jeans uomo valentino', 12, NULL, 1)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (27, 10, N'Man', N'man category', NULL, 7, 1)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (28, 10, N'Jeans', N'jeans category', 27, 1, 1)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (29, 10, N'Polo', N'polo man', 27, 2, 2)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (30, 10, N'Woman', N'woman cat', NULL, NULL, 2)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (31, 10, N'Shirts', N'shirts woman', 30, 2, 1)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (32, 9, N'Child', N'child cat', NULL, NULL, 1)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (33, 9, N'Man', N'man cat', NULL, NULL, 2)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (34, 9, N'Woman', N'dsdsa', NULL, NULL, 3)
INSERT [dbo].[CATEGORY] ([ID], [CampaignID], [Name], [Description], [ParentID], [AttributeID], [Ordering]) VALUES (35, 9, N'Trousers', N'trousers cat', 33, 1, 1)
SET IDENTITY_INSERT [dbo].[CATEGORY] OFF
/****** Object:  Table [dbo].[PROD_IMAGES]    Script Date: 05/09/2012 17:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROD_IMAGES](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Image] [nvarchar](100) NULL,
	[Thumbnail] [nvarchar](100) NULL,
	[Principal] [bit] NULL,
	[LargeImage] [nvarchar](100) NULL,
 CONSTRAINT [PK_PROD_IMAGES_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PROD_IMAGES] ON
INSERT [dbo].[PROD_IMAGES] ([ID], [ProductID], [Image], [Thumbnail], [Principal], [LargeImage]) VALUES (35, 11, N'889a9fb4-d709-4d85-8a5a-e7c747109549__waterfalls in paradise.jpg', N'bdf6f3a5-7256-4ce1-b5fe-6ac2f28ced54__waterfalls in paradiseTHUMB.jpg', 1, N'4a3554be-23fa-44c5-87ec-6b25322790ad__paradise2.jpg')
INSERT [dbo].[PROD_IMAGES] ([ID], [ProductID], [Image], [Thumbnail], [Principal], [LargeImage]) VALUES (36, 8, N'7c64064a-4787-4ab3-a130-e0594f15fda4__paradise2.jpg', N'1f2e23b5-e2a5-4058-b753-203608f67f57__paradise2THUMB.jpg', 0, N'45ebcaf9-f250-4e5f-bbf7-52793a88d2e8__fractal.jpg')
INSERT [dbo].[PROD_IMAGES] ([ID], [ProductID], [Image], [Thumbnail], [Principal], [LargeImage]) VALUES (37, 8, N'7c64064a-4787-4ab3-a130-e0594f15fda4__paradise2.jpg', N'1f2e23b5-e2a5-4058-b753-203608f67f57__paradise2THUMB.jpg', 1, N'45ebcaf9-f250-4e5f-bbf7-52793a88d2e8__fractal.jpg')
INSERT [dbo].[PROD_IMAGES] ([ID], [ProductID], [Image], [Thumbnail], [Principal], [LargeImage]) VALUES (38, 12, N'6ac5daef-0e2f-4ba2-9eee-06e7e7745147__lemon.jpg', N'a2de03fd-469f-4f70-a19e-8bad7a8cf065__lemonTHUMB.jpg', 1, N'202fab63-ca02-4107-bafc-9be7b70c2251__geyser_pool.jpg')
INSERT [dbo].[PROD_IMAGES] ([ID], [ProductID], [Image], [Thumbnail], [Principal], [LargeImage]) VALUES (39, 11, N'f798e0b4-4c17-4cad-8fec-dc7985f30e20__lemon.jpg', N'a91196b6-6df1-4bc4-8e0a-3cbcf68d3bf9__brown_green_blueTHUMB.jpg', 0, N'd156cea9-53e5-491c-9699-baa33bb13b01__fall.jpg')
INSERT [dbo].[PROD_IMAGES] ([ID], [ProductID], [Image], [Thumbnail], [Principal], [LargeImage]) VALUES (40, 6, N'd895607c-4c08-4c9e-acc0-735272100654__love_background.jpg', N'67b651da-1cd5-4d5f-9614-f1de69821f92__brown_green_blueTHUMB.jpg', 1, N'b7049af9-5c2d-4b67-afd4-c9ea0f24d21a__the good earth.jpg')
INSERT [dbo].[PROD_IMAGES] ([ID], [ProductID], [Image], [Thumbnail], [Principal], [LargeImage]) VALUES (41, 20, N'7dd7416a-6879-4559-a7e5-e8f1c12c63bf__the good earth.jpg', N'404cb28d-e588-4595-8641-4298884e0bee__waterfalls in paradiseTHUMB.jpg', 0, N'b60b8b1b-95fe-4e2a-aa21-f72d39fd98a5__bridge.jpg')
INSERT [dbo].[PROD_IMAGES] ([ID], [ProductID], [Image], [Thumbnail], [Principal], [LargeImage]) VALUES (43, 20, N'7500d506-e9d1-49f9-a03c-73fec0c4b889__eden.jpg', N'216a2d6a-8fd9-4da7-a074-023333fcde2f__brown_green_blueTHUMB.jpg', 0, N'e86709aa-8624-40e8-82f4-56ccfa6dbfda__paradise2.jpg')
INSERT [dbo].[PROD_IMAGES] ([ID], [ProductID], [Image], [Thumbnail], [Principal], [LargeImage]) VALUES (53, 20, N'8cef284a-d012-4e7d-8eb4-728a56742ff1__spring dream.jpg', N'75593c53-2927-4283-a1ed-550ee4847dec__brown_green_blueTHUMB.jpg', 0, N'218b3984-c789-4f1d-95c8-d1b44985ec2d__eden.jpg')
INSERT [dbo].[PROD_IMAGES] ([ID], [ProductID], [Image], [Thumbnail], [Principal], [LargeImage]) VALUES (54, 11, N'85b44132-3498-4cbf-b909-f1a6f4b6951e__paradise2.jpg', N'7d3aabe1-7ce1-4d93-b5d9-209daa5835a6__autumn landascape.jpg', 0, N'98d50286-e475-4f01-9987-3680f31db8fc__bridge.jpg')
INSERT [dbo].[PROD_IMAGES] ([ID], [ProductID], [Image], [Thumbnail], [Principal], [LargeImage]) VALUES (55, 11, N'0df99383-8697-4e3b-b3cd-77c220326b16__bridge.jpg', N'8a093df3-e098-4571-ab77-3a95c616c493__geyser_pool.jpg', 0, N'29b4d5db-8ade-4ac4-853a-b792f1cfc386__942132_60792404.jpg')
INSERT [dbo].[PROD_IMAGES] ([ID], [ProductID], [Image], [Thumbnail], [Principal], [LargeImage]) VALUES (56, 11, N'606b9f5d-350e-4c9a-8920-d2e643c6965b__D&G final.jpg', N'379a0a50-7e9c-4123-bb07-309510034eba__D&G-SS-09.preview.jpg', 0, N'd9037f5b-ddc1-4c64-82c3-0a340edd2cba__CKFinal.jpg')
INSERT [dbo].[PROD_IMAGES] ([ID], [ProductID], [Image], [Thumbnail], [Principal], [LargeImage]) VALUES (57, 7, N'51fa224f-71e0-42b0-92bc-47f3e1add9f6__the good earth.jpg', N'861d2830-6c56-4d94-be9f-2cf0f6be40ab__lemonTHUMB.jpg', 1, N'322da210-7b7f-4001-81e7-ce61a062dc75__bridge.jpg')
SET IDENTITY_INSERT [dbo].[PROD_IMAGES] OFF
/****** Object:  Table [dbo].[PRODUCT_ATTRIBUTE]    Script Date: 05/09/2012 17:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT_ATTRIBUTE](
	[ProductID] [int] NOT NULL,
	[AttributeValueID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Availability] [int] NOT NULL,
	[Version] [timestamp] NULL,
 CONSTRAINT [PK_PRODUCT_ATTRIBUTE_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_PRODUCT_ATTRIBUTE] UNIQUE NONCLUSTERED 
(
	[ProductID] ASC,
	[AttributeValueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PRODUCT_ATTRIBUTE] ON
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (11, 1, 0, 1, 11)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (11, 2, 20, 2, 117)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (11, 5, 21, 3, 7)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (11, 9, 26, 4, 24)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (11, 6, 1, 8, 1)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (11, 8, 2, 9, 2)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (6, 18, 12, 11, 12)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (6, 19, 11, 12, 11)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (7, 12, 15, 13, 12)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (9, 28, 14, 15, 15)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (9, 29, 12, 16, 10)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (8, 18, 4, 17, 1)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (12, 33, 100, 18, 99)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (12, 35, 50, 19, 50)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (11, 7, 55, 20, 0)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (11, 11, 123, 21, 1)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (11, 46, 7, 22, 7)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (13, 23, 1, 23, 8)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (13, 24, 1, 24, 6)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (13, 47, 1, 25, 1)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (13, 20, 3, 26, 0)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (14, 18, 5, 27, 3)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (20, 18, 4, 28, 2)
INSERT [dbo].[PRODUCT_ATTRIBUTE] ([ProductID], [AttributeValueID], [Quantity], [ID], [Availability]) VALUES (20, 19, 3, 29, 10)
SET IDENTITY_INSERT [dbo].[PRODUCT_ATTRIBUTE] OFF
/****** Object:  StoredProcedure [dbo].[GetCampaignApprovalStatus]    Script Date: 05/09/2012 17:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCampaignApprovalStatus]
@ID int
AS
BEGIN

SET NOCOUNT ON;

Select Approved
From CAMPAIGN
where ID = @ID;

END
GO
/****** Object:  StoredProcedure [dbo].[DeActivatePastCampaigns]    Script Date: 05/09/2012 17:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeActivatePastCampaigns]
AS
BEGIN

UPDATE CAMPAIGN
set Active = 0
where EndDate <= GETDATE()
and Active = 1;

SELECT @@ROWCOUNT

END
GO
/****** Object:  StoredProcedure [dbo].[GetProductApprovalStatus]    Script Date: 05/09/2012 17:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetProductApprovalStatus]
@ID int
AS
BEGIN

SET NOCOUNT ON;

Select Approved
From PRODUCT
where ID = @ID;

END
GO
/****** Object:  Table [dbo].[ORDERS]    Script Date: 05/09/2012 17:21:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORDERS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DateCreated] [smalldatetime] NOT NULL CONSTRAINT [DF_PURCHASE_DateCreated]  DEFAULT (getdate()),
	[DateShipped] [smalldatetime] NULL,
	[Verified] [bit] NOT NULL CONSTRAINT [DF_ORDERS_Verified]  DEFAULT ((0)),
	[Completed] [bit] NOT NULL CONSTRAINT [DF_ORDERS_Completed]  DEFAULT ((0)),
	[Canceled] [bit] NOT NULL CONSTRAINT [DF_ORDERS_Canceled]  DEFAULT ((0)),
	[Comments] [varchar](1000) NULL,
	[CustomerID] [int] NULL,
	[ShippingID] [int] NULL,
	[AmountPaid] [decimal](6, 2) NOT NULL CONSTRAINT [DF_ORDERS_AmountPaid]  DEFAULT ((0)),
	[BonusUsed] [decimal](6, 2) NULL CONSTRAINT [DF_ORDERS_BonusUsed]  DEFAULT ((0)),
	[ShippingAddress] [int] NULL,
	[BillingAddress] [int] NULL,
	[Status] [int] NULL CONSTRAINT [DF_ORDERS_Status]  DEFAULT ((1)),
	[ShippingDetails] [varchar](150) NULL,
	[TotalAmount] [decimal](6, 2) NOT NULL CONSTRAINT [DF_ORDERS_TotalAmount]  DEFAULT ((0)),
	[DateDelivered] [smalldatetime] NULL,
	[TrackingNumber] [varchar](50) NULL,
 CONSTRAINT [PK_PURCHASE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ORDERS] ON
INSERT [dbo].[ORDERS] ([ID], [DateCreated], [DateShipped], [Verified], [Completed], [Canceled], [Comments], [CustomerID], [ShippingID], [AmountPaid], [BonusUsed], [ShippingAddress], [BillingAddress], [Status], [ShippingDetails], [TotalAmount], [DateDelivered], [TrackingNumber]) VALUES (22, CAST(0x9FF2035C AS SmallDateTime), NULL, 1, 0, 0, N'ikanej', 2, NULL, CAST(-7.00 AS Decimal(6, 2)), CAST(7.00 AS Decimal(6, 2)), NULL, NULL, 2, NULL, CAST(0.00 AS Decimal(6, 2)), NULL, NULL)
INSERT [dbo].[ORDERS] ([ID], [DateCreated], [DateShipped], [Verified], [Completed], [Canceled], [Comments], [CustomerID], [ShippingID], [AmountPaid], [BonusUsed], [ShippingAddress], [BillingAddress], [Status], [ShippingDetails], [TotalAmount], [DateDelivered], [TrackingNumber]) VALUES (24, CAST(0x9FF30420 AS SmallDateTime), NULL, 1, 0, 0, N'gdgfsdgfsdg', 1, NULL, CAST(-20.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(6, 2)), NULL, NULL, 1, NULL, CAST(0.00 AS Decimal(6, 2)), NULL, NULL)
INSERT [dbo].[ORDERS] ([ID], [DateCreated], [DateShipped], [Verified], [Completed], [Canceled], [Comments], [CustomerID], [ShippingID], [AmountPaid], [BonusUsed], [ShippingAddress], [BillingAddress], [Status], [ShippingDetails], [TotalAmount], [DateDelivered], [TrackingNumber]) VALUES (25, CAST(0x9FF30420 AS SmallDateTime), NULL, 1, 0, 0, N'fdfdfdsfsd', 1, NULL, CAST(-8.00 AS Decimal(6, 2)), CAST(8.00 AS Decimal(6, 2)), NULL, NULL, 3, NULL, CAST(0.00 AS Decimal(6, 2)), NULL, NULL)
INSERT [dbo].[ORDERS] ([ID], [DateCreated], [DateShipped], [Verified], [Completed], [Canceled], [Comments], [CustomerID], [ShippingID], [AmountPaid], [BonusUsed], [ShippingAddress], [BillingAddress], [Status], [ShippingDetails], [TotalAmount], [DateDelivered], [TrackingNumber]) VALUES (26, CAST(0x9FF30436 AS SmallDateTime), NULL, 0, 0, 0, N'gfggfd', 3, NULL, CAST(-20.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(6, 2)), NULL, NULL, 4, NULL, CAST(0.00 AS Decimal(6, 2)), NULL, NULL)
INSERT [dbo].[ORDERS] ([ID], [DateCreated], [DateShipped], [Verified], [Completed], [Canceled], [Comments], [CustomerID], [ShippingID], [AmountPaid], [BonusUsed], [ShippingAddress], [BillingAddress], [Status], [ShippingDetails], [TotalAmount], [DateDelivered], [TrackingNumber]) VALUES (27, CAST(0x9FFB0419 AS SmallDateTime), NULL, 1, 0, 0, N'hfhsfhggfhdf', 2, NULL, CAST(-20.00 AS Decimal(6, 2)), CAST(20.00 AS Decimal(6, 2)), NULL, NULL, 1, NULL, CAST(0.00 AS Decimal(6, 2)), NULL, NULL)
INSERT [dbo].[ORDERS] ([ID], [DateCreated], [DateShipped], [Verified], [Completed], [Canceled], [Comments], [CustomerID], [ShippingID], [AmountPaid], [BonusUsed], [ShippingAddress], [BillingAddress], [Status], [ShippingDetails], [TotalAmount], [DateDelivered], [TrackingNumber]) VALUES (28, CAST(0xA0090296 AS SmallDateTime), NULL, 0, 1, 0, N'', 1, NULL, CAST(0.00 AS Decimal(6, 2)), NULL, NULL, NULL, 2, NULL, CAST(100.00 AS Decimal(6, 2)), NULL, NULL)
INSERT [dbo].[ORDERS] ([ID], [DateCreated], [DateShipped], [Verified], [Completed], [Canceled], [Comments], [CustomerID], [ShippingID], [AmountPaid], [BonusUsed], [ShippingAddress], [BillingAddress], [Status], [ShippingDetails], [TotalAmount], [DateDelivered], [TrackingNumber]) VALUES (29, CAST(0xA0090389 AS SmallDateTime), NULL, 1, 0, 1, N'skkdkdkk', 2, NULL, CAST(0.00 AS Decimal(6, 2)), NULL, NULL, NULL, 2, NULL, CAST(61.00 AS Decimal(6, 2)), NULL, NULL)
INSERT [dbo].[ORDERS] ([ID], [DateCreated], [DateShipped], [Verified], [Completed], [Canceled], [Comments], [CustomerID], [ShippingID], [AmountPaid], [BonusUsed], [ShippingAddress], [BillingAddress], [Status], [ShippingDetails], [TotalAmount], [DateDelivered], [TrackingNumber]) VALUES (30, CAST(0xA0090426 AS SmallDateTime), NULL, 1, 1, 0, N'lalalalal', 3, NULL, CAST(0.00 AS Decimal(6, 2)), CAST(11.00 AS Decimal(6, 2)), NULL, NULL, 1, NULL, CAST(11.00 AS Decimal(6, 2)), NULL, NULL)
INSERT [dbo].[ORDERS] ([ID], [DateCreated], [DateShipped], [Verified], [Completed], [Canceled], [Comments], [CustomerID], [ShippingID], [AmountPaid], [BonusUsed], [ShippingAddress], [BillingAddress], [Status], [ShippingDetails], [TotalAmount], [DateDelivered], [TrackingNumber]) VALUES (31, CAST(0xA00D02FB AS SmallDateTime), NULL, 1, 0, 0, N'ggfdgsdgsd', 1, NULL, CAST(15.00 AS Decimal(6, 2)), CAST(0.00 AS Decimal(6, 2)), NULL, NULL, 2, NULL, CAST(15.00 AS Decimal(6, 2)), NULL, NULL)
INSERT [dbo].[ORDERS] ([ID], [DateCreated], [DateShipped], [Verified], [Completed], [Canceled], [Comments], [CustomerID], [ShippingID], [AmountPaid], [BonusUsed], [ShippingAddress], [BillingAddress], [Status], [ShippingDetails], [TotalAmount], [DateDelivered], [TrackingNumber]) VALUES (32, CAST(0xA00D0322 AS SmallDateTime), NULL, 1, 0, 0, N'Ordine valentino con bonus di 15€.
', 1, NULL, CAST(35.00 AS Decimal(6, 2)), CAST(15.00 AS Decimal(6, 2)), NULL, NULL, 2, NULL, CAST(50.00 AS Decimal(6, 2)), NULL, NULL)
INSERT [dbo].[ORDERS] ([ID], [DateCreated], [DateShipped], [Verified], [Completed], [Canceled], [Comments], [CustomerID], [ShippingID], [AmountPaid], [BonusUsed], [ShippingAddress], [BillingAddress], [Status], [ShippingDetails], [TotalAmount], [DateDelivered], [TrackingNumber]) VALUES (33, CAST(0xA00D0424 AS SmallDateTime), NULL, 1, 0, 0, N'Ordine di ermal per jeans e cintura valentino', 3, NULL, CAST(67.00 AS Decimal(6, 2)), CAST(5.00 AS Decimal(6, 2)), NULL, NULL, 3, NULL, CAST(72.00 AS Decimal(6, 2)), NULL, NULL)
INSERT [dbo].[ORDERS] ([ID], [DateCreated], [DateShipped], [Verified], [Completed], [Canceled], [Comments], [CustomerID], [ShippingID], [AmountPaid], [BonusUsed], [ShippingAddress], [BillingAddress], [Status], [ShippingDetails], [TotalAmount], [DateDelivered], [TrackingNumber]) VALUES (34, CAST(0xA011036E AS SmallDateTime), NULL, 0, 0, 0, N'xfdsfdsafs

13-03-2012 In warehouse', 1, 1, CAST(50.00 AS Decimal(6, 2)), CAST(0.00 AS Decimal(6, 2)), 1, 2, 3, NULL, CAST(50.00 AS Decimal(6, 2)), NULL, NULL)
INSERT [dbo].[ORDERS] ([ID], [DateCreated], [DateShipped], [Verified], [Completed], [Canceled], [Comments], [CustomerID], [ShippingID], [AmountPaid], [BonusUsed], [ShippingAddress], [BillingAddress], [Status], [ShippingDetails], [TotalAmount], [DateDelivered], [TrackingNumber]) VALUES (35, CAST(0xA0170408 AS SmallDateTime), NULL, 1, 0, 0, N'Primo ordine CK di Gerti Gjoka', 2, 2, CAST(41.00 AS Decimal(6, 2)), CAST(0.00 AS Decimal(6, 2)), 3, 4, 1, NULL, CAST(41.00 AS Decimal(6, 2)), NULL, NULL)
INSERT [dbo].[ORDERS] ([ID], [DateCreated], [DateShipped], [Verified], [Completed], [Canceled], [Comments], [CustomerID], [ShippingID], [AmountPaid], [BonusUsed], [ShippingAddress], [BillingAddress], [Status], [ShippingDetails], [TotalAmount], [DateDelivered], [TrackingNumber]) VALUES (36, CAST(0xA017042D AS SmallDateTime), NULL, 1, 0, 0, N'Secondo ordine Gerti', 2, 2, CAST(24.00 AS Decimal(6, 2)), CAST(15.00 AS Decimal(6, 2)), 5, 6, 1, NULL, CAST(39.00 AS Decimal(6, 2)), NULL, NULL)
INSERT [dbo].[ORDERS] ([ID], [DateCreated], [DateShipped], [Verified], [Completed], [Canceled], [Comments], [CustomerID], [ShippingID], [AmountPaid], [BonusUsed], [ShippingAddress], [BillingAddress], [Status], [ShippingDetails], [TotalAmount], [DateDelivered], [TrackingNumber]) VALUES (37, CAST(0xA0170436 AS SmallDateTime), CAST(0xA019030C AS SmallDateTime), 1, 0, 0, N'aldina ordine', 1, 1, CAST(135.00 AS Decimal(6, 2)), CAST(0.00 AS Decimal(6, 2)), 7, 8, 1, N'derguar me UPS', CAST(135.00 AS Decimal(6, 2)), CAST(0xA01A0000 AS SmallDateTime), N'tr1212dsmdksamflsl')
INSERT [dbo].[ORDERS] ([ID], [DateCreated], [DateShipped], [Verified], [Completed], [Canceled], [Comments], [CustomerID], [ShippingID], [AmountPaid], [BonusUsed], [ShippingAddress], [BillingAddress], [Status], [ShippingDetails], [TotalAmount], [DateDelivered], [TrackingNumber]) VALUES (38, CAST(0xA017043D AS SmallDateTime), NULL, 0, 0, 0, N'', 3, 2, CAST(125.00 AS Decimal(6, 2)), CAST(0.00 AS Decimal(6, 2)), 9, 10, 1, NULL, CAST(125.00 AS Decimal(6, 2)), NULL, NULL)
INSERT [dbo].[ORDERS] ([ID], [DateCreated], [DateShipped], [Verified], [Completed], [Canceled], [Comments], [CustomerID], [ShippingID], [AmountPaid], [BonusUsed], [ShippingAddress], [BillingAddress], [Status], [ShippingDetails], [TotalAmount], [DateDelivered], [TrackingNumber]) VALUES (39, CAST(0xA017043F AS SmallDateTime), NULL, 1, 0, 0, N'gagfdsgfd', 3, 2, CAST(55.00 AS Decimal(6, 2)), CAST(0.00 AS Decimal(6, 2)), 11, 12, 1, NULL, CAST(55.00 AS Decimal(6, 2)), NULL, NULL)
INSERT [dbo].[ORDERS] ([ID], [DateCreated], [DateShipped], [Verified], [Completed], [Canceled], [Comments], [CustomerID], [ShippingID], [AmountPaid], [BonusUsed], [ShippingAddress], [BillingAddress], [Status], [ShippingDetails], [TotalAmount], [DateDelivered], [TrackingNumber]) VALUES (40, CAST(0xA0170442 AS SmallDateTime), NULL, 0, 0, 0, N'hhgkfkfgfsgsfdgs', 2, 3, CAST(16.00 AS Decimal(6, 2)), CAST(0.00 AS Decimal(6, 2)), 13, 14, 1, NULL, CAST(16.00 AS Decimal(6, 2)), NULL, NULL)
INSERT [dbo].[ORDERS] ([ID], [DateCreated], [DateShipped], [Verified], [Completed], [Canceled], [Comments], [CustomerID], [ShippingID], [AmountPaid], [BonusUsed], [ShippingAddress], [BillingAddress], [Status], [ShippingDetails], [TotalAmount], [DateDelivered], [TrackingNumber]) VALUES (41, CAST(0xA0170449 AS SmallDateTime), NULL, 0, 0, 0, N'', 1, 1, CAST(120.00 AS Decimal(6, 2)), CAST(0.00 AS Decimal(6, 2)), 15, 16, 1, NULL, CAST(120.00 AS Decimal(6, 2)), NULL, NULL)
INSERT [dbo].[ORDERS] ([ID], [DateCreated], [DateShipped], [Verified], [Completed], [Canceled], [Comments], [CustomerID], [ShippingID], [AmountPaid], [BonusUsed], [ShippingAddress], [BillingAddress], [Status], [ShippingDetails], [TotalAmount], [DateDelivered], [TrackingNumber]) VALUES (44, CAST(0xA0200504 AS SmallDateTime), NULL, 1, 0, 0, N'gsdgsdfgfsdfdfsdfdf', 2, 1, CAST(135.00 AS Decimal(6, 2)), CAST(0.00 AS Decimal(6, 2)), 21, 22, 4, N'in store', CAST(135.00 AS Decimal(6, 2)), NULL, N'')
INSERT [dbo].[ORDERS] ([ID], [DateCreated], [DateShipped], [Verified], [Completed], [Canceled], [Comments], [CustomerID], [ShippingID], [AmountPaid], [BonusUsed], [ShippingAddress], [BillingAddress], [Status], [ShippingDetails], [TotalAmount], [DateDelivered], [TrackingNumber]) VALUES (45, CAST(0xA0200534 AS SmallDateTime), CAST(0xA0200000 AS SmallDateTime), 0, 0, 0, N'fsfdfds', 2, 2, CAST(16.00 AS Decimal(6, 2)), CAST(0.00 AS Decimal(6, 2)), 23, 24, 1, N'gadaaaa', CAST(16.00 AS Decimal(6, 2)), NULL, N'')
INSERT [dbo].[ORDERS] ([ID], [DateCreated], [DateShipped], [Verified], [Completed], [Canceled], [Comments], [CustomerID], [ShippingID], [AmountPaid], [BonusUsed], [ShippingAddress], [BillingAddress], [Status], [ShippingDetails], [TotalAmount], [DateDelivered], [TrackingNumber]) VALUES (46, CAST(0xA0210359 AS SmallDateTime), CAST(0xA0210258 AS SmallDateTime), 1, 0, 0, N'lalalal', 3, 3, CAST(31.00 AS Decimal(6, 2)), CAST(0.00 AS Decimal(6, 2)), 25, 26, 2, N'avcxvcxz', CAST(31.00 AS Decimal(6, 2)), CAST(0xA02103FC AS SmallDateTime), N'fsdfdsf')
SET IDENTITY_INSERT [dbo].[ORDERS] OFF
/****** Object:  Table [dbo].[ORDER_NOTES]    Script Date: 05/09/2012 17:21:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORDER_NOTES](
	[OrderID] [int] NOT NULL,
	[CreatedOn] [smalldatetime] NULL,
	[DisplayToCustomer] [bit] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Text] [varchar](150) NULL,
 CONSTRAINT [PK_ORDER_NOTES] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ORDER_NOTES] ON
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (34, CAST(0xA01502C8 AS SmallDateTime), 0, 1, N'Order validated from Admin')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (34, CAST(0xA01502C9 AS SmallDateTime), 0, 2, N'Another note')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (34, CAST(0xA01502CF AS SmallDateTime), 0, 3, N'ciao')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (34, CAST(0xA01502CF AS SmallDateTime), 0, 4, N'hey')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (34, CAST(0xA01502D3 AS SmallDateTime), 0, 5, N'aha')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (34, CAST(0xA01502D4 AS SmallDateTime), 0, 6, N'yes')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (35, CAST(0xA0170422 AS SmallDateTime), 0, 8, N'gszg')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (41, CAST(0xA017044A AS SmallDateTime), 0, 9, N'gsdgdfs')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (38, CAST(0xA017044B AS SmallDateTime), 0, 10, N'fdsfsd')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (37, CAST(0xA0190334 AS SmallDateTime), 0, 11, N'arerew')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (37, CAST(0xA0190334 AS SmallDateTime), 0, 12, N'rewr')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (37, CAST(0xA0190335 AS SmallDateTime), 0, 13, N'gagas')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (37, CAST(0xA0190335 AS SmallDateTime), 0, 14, N'hhgjhdf')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (37, CAST(0xA0190336 AS SmallDateTime), 0, 15, N'13213')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (37, CAST(0xA0190337 AS SmallDateTime), 0, 16, N'13232312')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (37, CAST(0xA0190339 AS SmallDateTime), 0, 17, N'lala')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (37, CAST(0xA019033A AS SmallDateTime), 0, 18, N'fadsfa')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (37, CAST(0xA019033A AS SmallDateTime), 0, 19, N'gfsgsdg')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (37, CAST(0xA0190343 AS SmallDateTime), 0, 20, N'ggagfgsdgfdgdfs')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (37, CAST(0xA0190344 AS SmallDateTime), 0, 21, N'gfdg')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (37, CAST(0xA0190344 AS SmallDateTime), 0, 22, N'etre')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (37, CAST(0xA0190360 AS SmallDateTime), 0, 23, N'fdsfs')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (37, CAST(0xA0190361 AS SmallDateTime), 0, 24, N'fd')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (37, CAST(0xA0190361 AS SmallDateTime), 0, 25, N'fda')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (37, CAST(0xA0190361 AS SmallDateTime), 0, 26, N'vcxz')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (37, CAST(0xA0190361 AS SmallDateTime), 0, 27, N'5435435423')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (44, CAST(0xA0200533 AS SmallDateTime), 0, 28, N'fdsfasd')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (46, CAST(0xA02804AE AS SmallDateTime), 0, 29, N'gsgsfd')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (46, CAST(0xA02804AE AS SmallDateTime), 0, 30, N'gdfgfsd')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (46, CAST(0xA02804AE AS SmallDateTime), 0, 31, N'gsdgsdadsxzcz')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (46, CAST(0xA02804AE AS SmallDateTime), 0, 32, N'5435342')
INSERT [dbo].[ORDER_NOTES] ([OrderID], [CreatedOn], [DisplayToCustomer], [ID], [Text]) VALUES (46, CAST(0xA02804AE AS SmallDateTime), 0, 33, N'65464756')
SET IDENTITY_INSERT [dbo].[ORDER_NOTES] OFF
/****** Object:  Table [dbo].[ORDER_DETAIL]    Script Date: 05/09/2012 17:21:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_DETAIL](
	[OrderID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProdAttrID] [int] NOT NULL,
	[CampaignID] [int] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_ORDER_DETAIL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_ORDER_DETAIL] ON [dbo].[ORDER_DETAIL] 
(
	[OrderID] ASC,
	[ProdAttrID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ORDER_DETAIL] ON
INSERT [dbo].[ORDER_DETAIL] ([OrderID], [Quantity], [ProdAttrID], [CampaignID], [ID]) VALUES (30, 1, 15, 5, 1)
INSERT [dbo].[ORDER_DETAIL] ([OrderID], [Quantity], [ProdAttrID], [CampaignID], [ID]) VALUES (31, 1, 28, 3, 2)
INSERT [dbo].[ORDER_DETAIL] ([OrderID], [Quantity], [ProdAttrID], [CampaignID], [ID]) VALUES (32, 1, 9, 5, 3)
INSERT [dbo].[ORDER_DETAIL] ([OrderID], [Quantity], [ProdAttrID], [CampaignID], [ID]) VALUES (33, 1, 21, 5, 4)
INSERT [dbo].[ORDER_DETAIL] ([OrderID], [Quantity], [ProdAttrID], [CampaignID], [ID]) VALUES (33, 2, 16, 5, 5)
INSERT [dbo].[ORDER_DETAIL] ([OrderID], [Quantity], [ProdAttrID], [CampaignID], [ID]) VALUES (34, 1, 9, 5, 6)
INSERT [dbo].[ORDER_DETAIL] ([OrderID], [Quantity], [ProdAttrID], [CampaignID], [ID]) VALUES (35, 1, 17, 3, 7)
INSERT [dbo].[ORDER_DETAIL] ([OrderID], [Quantity], [ProdAttrID], [CampaignID], [ID]) VALUES (35, 1, 27, 3, 8)
INSERT [dbo].[ORDER_DETAIL] ([OrderID], [Quantity], [ProdAttrID], [CampaignID], [ID]) VALUES (35, 1, 28, 3, 9)
INSERT [dbo].[ORDER_DETAIL] ([OrderID], [Quantity], [ProdAttrID], [CampaignID], [ID]) VALUES (36, 1, 17, 3, 10)
INSERT [dbo].[ORDER_DETAIL] ([OrderID], [Quantity], [ProdAttrID], [CampaignID], [ID]) VALUES (36, 1, 18, 3, 11)
INSERT [dbo].[ORDER_DETAIL] ([OrderID], [Quantity], [ProdAttrID], [CampaignID], [ID]) VALUES (37, 1, 25, 4, 12)
INSERT [dbo].[ORDER_DETAIL] ([OrderID], [Quantity], [ProdAttrID], [CampaignID], [ID]) VALUES (37, 1, 13, 4, 13)
INSERT [dbo].[ORDER_DETAIL] ([OrderID], [Quantity], [ProdAttrID], [CampaignID], [ID]) VALUES (38, 1, 13, 4, 14)
INSERT [dbo].[ORDER_DETAIL] ([OrderID], [Quantity], [ProdAttrID], [CampaignID], [ID]) VALUES (39, 1, 2, 5, 15)
INSERT [dbo].[ORDER_DETAIL] ([OrderID], [Quantity], [ProdAttrID], [CampaignID], [ID]) VALUES (40, 1, 15, 5, 16)
INSERT [dbo].[ORDER_DETAIL] ([OrderID], [Quantity], [ProdAttrID], [CampaignID], [ID]) VALUES (41, 1, 13, 4, 17)
INSERT [dbo].[ORDER_DETAIL] ([OrderID], [Quantity], [ProdAttrID], [CampaignID], [ID]) VALUES (44, 1, 26, 4, 20)
INSERT [dbo].[ORDER_DETAIL] ([OrderID], [Quantity], [ProdAttrID], [CampaignID], [ID]) VALUES (44, 1, 13, 4, 21)
INSERT [dbo].[ORDER_DETAIL] ([OrderID], [Quantity], [ProdAttrID], [CampaignID], [ID]) VALUES (45, 1, 17, 3, 22)
INSERT [dbo].[ORDER_DETAIL] ([OrderID], [Quantity], [ProdAttrID], [CampaignID], [ID]) VALUES (46, 1, 17, 3, 23)
INSERT [dbo].[ORDER_DETAIL] ([OrderID], [Quantity], [ProdAttrID], [CampaignID], [ID]) VALUES (46, 1, 27, 3, 24)
SET IDENTITY_INSERT [dbo].[ORDER_DETAIL] OFF
/****** Object:  Table [dbo].[ORDER_BONUS]    Script Date: 05/09/2012 17:21:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDER_BONUS](
	[OrderID] [int] NOT NULL,
	[BonusID] [int] NOT NULL,
	[Value] [decimal](6, 2) NULL,
 CONSTRAINT [PK_ORDER_BONUS] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[BonusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ORDER_BONUS] ([OrderID], [BonusID], [Value]) VALUES (22, 18, CAST(7.00 AS Decimal(6, 2)))
INSERT [dbo].[ORDER_BONUS] ([OrderID], [BonusID], [Value]) VALUES (24, 19, CAST(9.00 AS Decimal(6, 2)))
INSERT [dbo].[ORDER_BONUS] ([OrderID], [BonusID], [Value]) VALUES (24, 22, CAST(11.00 AS Decimal(6, 2)))
INSERT [dbo].[ORDER_BONUS] ([OrderID], [BonusID], [Value]) VALUES (25, 19, CAST(8.00 AS Decimal(6, 2)))
INSERT [dbo].[ORDER_BONUS] ([OrderID], [BonusID], [Value]) VALUES (26, 20, CAST(17.00 AS Decimal(6, 2)))
INSERT [dbo].[ORDER_BONUS] ([OrderID], [BonusID], [Value]) VALUES (26, 23, CAST(3.00 AS Decimal(6, 2)))
INSERT [dbo].[ORDER_BONUS] ([OrderID], [BonusID], [Value]) VALUES (27, 21, CAST(17.00 AS Decimal(6, 2)))
INSERT [dbo].[ORDER_BONUS] ([OrderID], [BonusID], [Value]) VALUES (27, 24, CAST(3.00 AS Decimal(6, 2)))
INSERT [dbo].[ORDER_BONUS] ([OrderID], [BonusID], [Value]) VALUES (28, 22, CAST(11.00 AS Decimal(6, 2)))
INSERT [dbo].[ORDER_BONUS] ([OrderID], [BonusID], [Value]) VALUES (29, 24, CAST(9.00 AS Decimal(6, 2)))
INSERT [dbo].[ORDER_BONUS] ([OrderID], [BonusID], [Value]) VALUES (30, 17, CAST(2.00 AS Decimal(6, 2)))
INSERT [dbo].[ORDER_BONUS] ([OrderID], [BonusID], [Value]) VALUES (30, 23, CAST(9.00 AS Decimal(6, 2)))
INSERT [dbo].[ORDER_BONUS] ([OrderID], [BonusID], [Value]) VALUES (32, 25, CAST(15.00 AS Decimal(6, 2)))
INSERT [dbo].[ORDER_BONUS] ([OrderID], [BonusID], [Value]) VALUES (33, 17, CAST(5.00 AS Decimal(6, 2)))
INSERT [dbo].[ORDER_BONUS] ([OrderID], [BonusID], [Value]) VALUES (36, 27, CAST(15.00 AS Decimal(6, 2)))
/****** Object:  Table [dbo].[PAYMENT]    Script Date: 05/09/2012 17:21:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAYMENT](
	[ID] [int] NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_PAYMENT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PAYMENT] ([ID], [Type]) VALUES (44, 1)
INSERT [dbo].[PAYMENT] ([ID], [Type]) VALUES (45, 1)
INSERT [dbo].[PAYMENT] ([ID], [Type]) VALUES (46, 1)
/****** Object:  Table [dbo].[RETURN]    Script Date: 05/09/2012 17:21:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RETURN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[VerificationNumber] [varchar](20) NULL,
	[RequestDate] [date] NULL,
	[ReceivedDate] [date] NULL,
	[Received] [nchar](10) NULL,
	[Comments] [varchar](250) NULL,
 CONSTRAINT [PK_RETURN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_RETURN] UNIQUE NONCLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[RETURN] ON
INSERT [dbo].[RETURN] ([ID], [OrderID], [VerificationNumber], [RequestDate], [ReceivedDate], [Received], [Comments]) VALUES (4, 33, N'PPTTMWOVFJUX', CAST(0x6E350B00 AS Date), NULL, NULL, N'djdjdg')
INSERT [dbo].[RETURN] ([ID], [OrderID], [VerificationNumber], [RequestDate], [ReceivedDate], [Received], [Comments]) VALUES (8, 37, N'VXFFYCRGFAYX', CAST(0x77350B00 AS Date), CAST(0x77350B00 AS Date), NULL, N'ffdasfsadvccvzc')
INSERT [dbo].[RETURN] ([ID], [OrderID], [VerificationNumber], [RequestDate], [ReceivedDate], [Received], [Comments]) VALUES (9, 38, N'VRVDOMDFJDYB', CAST(0x77350B00 AS Date), NULL, NULL, N'gbfdgfdsgsgsgd')
INSERT [dbo].[RETURN] ([ID], [OrderID], [VerificationNumber], [RequestDate], [ReceivedDate], [Received], [Comments]) VALUES (10, 31, N'KSPLTPYWPWBN', CAST(0x79350B00 AS Date), CAST(0x78350B00 AS Date), NULL, N'gkjghjk23')
INSERT [dbo].[RETURN] ([ID], [OrderID], [VerificationNumber], [RequestDate], [ReceivedDate], [Received], [Comments]) VALUES (11, 35, N'NPNOKLRMCCGS', CAST(0x7D350B00 AS Date), NULL, NULL, N'ggfsgsdgsd')
SET IDENTITY_INSERT [dbo].[RETURN] OFF
/****** Object:  Table [dbo].[PRODUCT_CATEGORY]    Script Date: 05/09/2012 17:21:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT_CATEGORY](
	[ProductID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
 CONSTRAINT [PK_PRODUCT_CATEGORY_1] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[PRODUCT_CATEGORY] ([ProductID], [CategoryID]) VALUES (6, 6)
INSERT [dbo].[PRODUCT_CATEGORY] ([ProductID], [CategoryID]) VALUES (6, 7)
INSERT [dbo].[PRODUCT_CATEGORY] ([ProductID], [CategoryID]) VALUES (7, 3)
INSERT [dbo].[PRODUCT_CATEGORY] ([ProductID], [CategoryID]) VALUES (8, 17)
INSERT [dbo].[PRODUCT_CATEGORY] ([ProductID], [CategoryID]) VALUES (8, 24)
INSERT [dbo].[PRODUCT_CATEGORY] ([ProductID], [CategoryID]) VALUES (11, 26)
INSERT [dbo].[PRODUCT_CATEGORY] ([ProductID], [CategoryID]) VALUES (12, 24)
INSERT [dbo].[PRODUCT_CATEGORY] ([ProductID], [CategoryID]) VALUES (13, 4)
INSERT [dbo].[PRODUCT_CATEGORY] ([ProductID], [CategoryID]) VALUES (13, 23)
INSERT [dbo].[PRODUCT_CATEGORY] ([ProductID], [CategoryID]) VALUES (14, 25)
INSERT [dbo].[PRODUCT_CATEGORY] ([ProductID], [CategoryID]) VALUES (20, 16)
INSERT [dbo].[PRODUCT_CATEGORY] ([ProductID], [CategoryID]) VALUES (20, 21)
/****** Object:  Table [dbo].[SHOPPING_CART]    Script Date: 05/09/2012 17:21:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SHOPPING_CART](
	[ID] [char](36) NOT NULL,
	[Quantity] [int] NOT NULL CONSTRAINT [DF_SHOPPING_CART_Quantity]  DEFAULT ((0)),
	[DateAdded] [smalldatetime] NOT NULL,
	[ProdAttrID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[CampaignID] [int] NOT NULL,
	[FrontEnd] [bit] NULL,
 CONSTRAINT [PK_SHOPPING_CART] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[ProdAttrID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RETURN_DETAILS]    Script Date: 05/09/2012 17:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RETURN_DETAILS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ReturnID] [int] NULL,
	[OrderDetailID] [int] NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](6, 2) NULL,
	[MotivationID] [int] NOT NULL,
 CONSTRAINT [PK_RETURN_DETAILS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RETURN_DETAILS] ON
INSERT [dbo].[RETURN_DETAILS] ([ID], [ReturnID], [OrderDetailID], [Quantity], [Price], [MotivationID]) VALUES (7, 8, 12, 1, CAST(15.00 AS Decimal(6, 2)), 5)
INSERT [dbo].[RETURN_DETAILS] ([ID], [ReturnID], [OrderDetailID], [Quantity], [Price], [MotivationID]) VALUES (8, 9, 14, 1, CAST(120.00 AS Decimal(6, 2)), 8)
INSERT [dbo].[RETURN_DETAILS] ([ID], [ReturnID], [OrderDetailID], [Quantity], [Price], [MotivationID]) VALUES (9, 10, 2, 1, CAST(15.00 AS Decimal(6, 2)), 6)
INSERT [dbo].[RETURN_DETAILS] ([ID], [ReturnID], [OrderDetailID], [Quantity], [Price], [MotivationID]) VALUES (10, 11, 7, 1, CAST(11.00 AS Decimal(6, 2)), 8)
INSERT [dbo].[RETURN_DETAILS] ([ID], [ReturnID], [OrderDetailID], [Quantity], [Price], [MotivationID]) VALUES (11, 11, 8, 1, CAST(15.00 AS Decimal(6, 2)), 6)
SET IDENTITY_INSERT [dbo].[RETURN_DETAILS] OFF
/****** Object:  Table [dbo].[PAYPAL_PAYMENT]    Script Date: 05/09/2012 17:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PAYPAL_PAYMENT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Amount] [decimal](18, 2) NULL,
	[PaidOn] [datetime] NULL,
	[Currency] [char](3) NULL,
	[PaypalEmail] [varchar](50) NULL,
	[PayerEmail] [varchar](50) NULL,
	[TransactionKey] [varchar](17) NULL,
	[TransactionStatus] [varchar](50) NULL,
 CONSTRAINT [PK_PAYPAL_PAYMENT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[GetShoppingCartTotalAmount]    Script Date: 05/09/2012 17:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetShoppingCartTotalAmount]
	@ID char(36)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	Select SUM(S.Quantity * P.OurPrice)
	from SHOPPING_CART S Join PRODUCT_ATTRIBUTE A On S.ProdAttrID = A.ID Join PRODUCT P on A.ProductID = P.ID
	where S.ID = @ID
	group by S.ID;
END
GO
/****** Object:  StoredProcedure [dbo].[GetCampaignProducts]    Script Date: 05/09/2012 17:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCampaignProducts]
@CampaignID int,
@CategoryID int = null
AS
BEGIN

SET NOCOUNT ON;

select distinct P.* 
from PRODUCT P left join PRODUCT_CATEGORY PC on P.ID = PC.ProductID left join CATEGORY C ON PC.CategoryID = C.ID
where CampaignID = @CampaignID AND PC.CategoryID = COALESCE(NULLIF(@CategoryID, ''), PC.CategoryID)

END
GO
/****** Object:  Table [dbo].[CASH_PAYMENT]    Script Date: 05/09/2012 17:21:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CASH_PAYMENT](
	[ID] [int] NOT NULL,
	[Receiver] [varchar](50) NULL,
	[Amount] [decimal](18, 2) NULL,
	[PaidOn] [smalldatetime] NULL,
	[Comments] [varchar](250) NULL,
 CONSTRAINT [PK_CASH_PAYMENT_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CASH_PAYMENT] ([ID], [Receiver], [Amount], [PaidOn], [Comments]) VALUES (44, N'Ermal Aliraj', CAST(135.00 AS Decimal(18, 2)), CAST(0xA0200504 AS SmallDateTime), N'gsdgsdfgfsd')
INSERT [dbo].[CASH_PAYMENT] ([ID], [Receiver], [Amount], [PaidOn], [Comments]) VALUES (45, N'Tili', CAST(16.00 AS Decimal(18, 2)), CAST(0xA0200534 AS SmallDateTime), N'fsfdfds')
INSERT [dbo].[CASH_PAYMENT] ([ID], [Receiver], [Amount], [PaidOn], [Comments]) VALUES (46, N'Ermali', CAST(31.00 AS Decimal(18, 2)), CAST(0xA0210359 AS SmallDateTime), N'lalalal')
/****** Object:  ForeignKey [FK_CUSTOMER_CUSTOMER]    Script Date: 05/09/2012 17:21:43 ******/
ALTER TABLE [dbo].[CUSTOMER]  WITH CHECK ADD  CONSTRAINT [FK_CUSTOMER_CUSTOMER] FOREIGN KEY([InvitedFrom])
REFERENCES [dbo].[CUSTOMER] ([ID])
GO
ALTER TABLE [dbo].[CUSTOMER] CHECK CONSTRAINT [FK_CUSTOMER_CUSTOMER]
GO
/****** Object:  ForeignKey [FK_USER_ROLE]    Script Date: 05/09/2012 17:21:43 ******/
ALTER TABLE [dbo].[USER]  WITH CHECK ADD  CONSTRAINT [FK_USER_ROLE] FOREIGN KEY([RoleID])
REFERENCES [dbo].[ROLE] ([ID])
GO
ALTER TABLE [dbo].[USER] CHECK CONSTRAINT [FK_USER_ROLE]
GO
/****** Object:  ForeignKey [FK_BONUS_CUSTOMER]    Script Date: 05/09/2012 17:21:43 ******/
ALTER TABLE [dbo].[BONUS]  WITH CHECK ADD  CONSTRAINT [FK_BONUS_CUSTOMER] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CUSTOMER] ([ID])
GO
ALTER TABLE [dbo].[BONUS] CHECK CONSTRAINT [FK_BONUS_CUSTOMER]
GO
/****** Object:  ForeignKey [FK_D_CITY_D_STATE]    Script Date: 05/09/2012 17:21:44 ******/
ALTER TABLE [dbo].[D_CITY]  WITH CHECK ADD  CONSTRAINT [FK_D_CITY_D_STATE] FOREIGN KEY([StateID])
REFERENCES [dbo].[D_STATE] ([ID])
GO
ALTER TABLE [dbo].[D_CITY] CHECK CONSTRAINT [FK_D_CITY_D_STATE]
GO
/****** Object:  ForeignKey [FK_D_ATTRIBUTE_VALUE_D_ATTRIBUTE]    Script Date: 05/09/2012 17:21:44 ******/
ALTER TABLE [dbo].[D_ATTRIBUTE_VALUE]  WITH CHECK ADD  CONSTRAINT [FK_D_ATTRIBUTE_VALUE_D_ATTRIBUTE] FOREIGN KEY([AttributeID])
REFERENCES [dbo].[D_ATTRIBUTE] ([ID])
GO
ALTER TABLE [dbo].[D_ATTRIBUTE_VALUE] CHECK CONSTRAINT [FK_D_ATTRIBUTE_VALUE_D_ATTRIBUTE]
GO
/****** Object:  ForeignKey [FK_STAT_CUSTOMER]    Script Date: 05/09/2012 17:21:44 ******/
ALTER TABLE [dbo].[CUSTOMER_AUDIT]  WITH CHECK ADD  CONSTRAINT [FK_STAT_CUSTOMER] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CUSTOMER] ([ID])
GO
ALTER TABLE [dbo].[CUSTOMER_AUDIT] CHECK CONSTRAINT [FK_STAT_CUSTOMER]
GO
/****** Object:  ForeignKey [FK_INVITATION_CUSTOMER]    Script Date: 05/09/2012 17:21:44 ******/
ALTER TABLE [dbo].[INVITATION]  WITH CHECK ADD  CONSTRAINT [FK_INVITATION_CUSTOMER] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CUSTOMER] ([ID])
GO
ALTER TABLE [dbo].[INVITATION] CHECK CONSTRAINT [FK_INVITATION_CUSTOMER]
GO
/****** Object:  ForeignKey [FK_PRODUCT_USER]    Script Date: 05/09/2012 17:21:44 ******/
ALTER TABLE [dbo].[PRODUCT]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCT_USER] FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[USER] ([ID])
GO
ALTER TABLE [dbo].[PRODUCT] CHECK CONSTRAINT [FK_PRODUCT_USER]
GO
/****** Object:  ForeignKey [FK_CAMPAIGN_BRAND]    Script Date: 05/09/2012 17:21:44 ******/
ALTER TABLE [dbo].[CAMPAIGN]  WITH CHECK ADD  CONSTRAINT [FK_CAMPAIGN_BRAND] FOREIGN KEY([BrandID])
REFERENCES [dbo].[BRAND] ([ID])
GO
ALTER TABLE [dbo].[CAMPAIGN] CHECK CONSTRAINT [FK_CAMPAIGN_BRAND]
GO
/****** Object:  ForeignKey [FK_CAMPAIGN_USER]    Script Date: 05/09/2012 17:21:44 ******/
ALTER TABLE [dbo].[CAMPAIGN]  WITH CHECK ADD  CONSTRAINT [FK_CAMPAIGN_USER] FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[USER] ([ID])
GO
ALTER TABLE [dbo].[CAMPAIGN] CHECK CONSTRAINT [FK_CAMPAIGN_USER]
GO
/****** Object:  ForeignKey [FK_AUDIT_USER]    Script Date: 05/09/2012 17:21:45 ******/
ALTER TABLE [dbo].[AUDIT]  WITH CHECK ADD  CONSTRAINT [FK_AUDIT_USER] FOREIGN KEY([UserID])
REFERENCES [dbo].[USER] ([ID])
GO
ALTER TABLE [dbo].[AUDIT] CHECK CONSTRAINT [FK_AUDIT_USER]
GO
/****** Object:  ForeignKey [FK_ADDRESSINFO_D_ADDRESS_TYPE]    Script Date: 05/09/2012 17:21:45 ******/
ALTER TABLE [dbo].[ADDRESSINFO]  WITH CHECK ADD  CONSTRAINT [FK_ADDRESSINFO_D_ADDRESS_TYPE] FOREIGN KEY([Type])
REFERENCES [dbo].[D_ADDRESS_TYPE] ([ID])
GO
ALTER TABLE [dbo].[ADDRESSINFO] CHECK CONSTRAINT [FK_ADDRESSINFO_D_ADDRESS_TYPE]
GO
/****** Object:  ForeignKey [FK_ADDRESSINFO_D_CITY]    Script Date: 05/09/2012 17:21:45 ******/
ALTER TABLE [dbo].[ADDRESSINFO]  WITH CHECK ADD  CONSTRAINT [FK_ADDRESSINFO_D_CITY] FOREIGN KEY([City])
REFERENCES [dbo].[D_CITY] ([ID])
GO
ALTER TABLE [dbo].[ADDRESSINFO] CHECK CONSTRAINT [FK_ADDRESSINFO_D_CITY]
GO
/****** Object:  ForeignKey [FK_ADDRESS_CUSTOMER]    Script Date: 05/09/2012 17:21:45 ******/
ALTER TABLE [dbo].[ADDRESS]  WITH CHECK ADD  CONSTRAINT [FK_ADDRESS_CUSTOMER] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CUSTOMER] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ADDRESS] CHECK CONSTRAINT [FK_ADDRESS_CUSTOMER]
GO
/****** Object:  ForeignKey [FK_ADDRESS_D_ADDRESS_TYPE]    Script Date: 05/09/2012 17:21:45 ******/
ALTER TABLE [dbo].[ADDRESS]  WITH CHECK ADD  CONSTRAINT [FK_ADDRESS_D_ADDRESS_TYPE] FOREIGN KEY([TypeID])
REFERENCES [dbo].[D_ADDRESS_TYPE] ([ID])
GO
ALTER TABLE [dbo].[ADDRESS] CHECK CONSTRAINT [FK_ADDRESS_D_ADDRESS_TYPE]
GO
/****** Object:  ForeignKey [FK_ADDRESS_D_CITY]    Script Date: 05/09/2012 17:21:45 ******/
ALTER TABLE [dbo].[ADDRESS]  WITH CHECK ADD  CONSTRAINT [FK_ADDRESS_D_CITY] FOREIGN KEY([CityID])
REFERENCES [dbo].[D_CITY] ([ID])
GO
ALTER TABLE [dbo].[ADDRESS] CHECK CONSTRAINT [FK_ADDRESS_D_CITY]
GO
/****** Object:  ForeignKey [FK_CATEGORY_CAMPAIGN]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[CATEGORY]  WITH CHECK ADD  CONSTRAINT [FK_CATEGORY_CAMPAIGN] FOREIGN KEY([CampaignID])
REFERENCES [dbo].[CAMPAIGN] ([ID])
GO
ALTER TABLE [dbo].[CATEGORY] CHECK CONSTRAINT [FK_CATEGORY_CAMPAIGN]
GO
/****** Object:  ForeignKey [FK_CATEGORY_CATEGORY]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[CATEGORY]  WITH CHECK ADD  CONSTRAINT [FK_CATEGORY_CATEGORY] FOREIGN KEY([ParentID])
REFERENCES [dbo].[CATEGORY] ([ID])
GO
ALTER TABLE [dbo].[CATEGORY] CHECK CONSTRAINT [FK_CATEGORY_CATEGORY]
GO
/****** Object:  ForeignKey [FK_CATEGORY_D_ATTRIBUTE]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[CATEGORY]  WITH CHECK ADD  CONSTRAINT [FK_CATEGORY_D_ATTRIBUTE] FOREIGN KEY([AttributeID])
REFERENCES [dbo].[D_ATTRIBUTE] ([ID])
GO
ALTER TABLE [dbo].[CATEGORY] CHECK CONSTRAINT [FK_CATEGORY_D_ATTRIBUTE]
GO
/****** Object:  ForeignKey [FK_PROD_IMAGES_PRODUCT]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[PROD_IMAGES]  WITH CHECK ADD  CONSTRAINT [FK_PROD_IMAGES_PRODUCT] FOREIGN KEY([ProductID])
REFERENCES [dbo].[PRODUCT] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PROD_IMAGES] CHECK CONSTRAINT [FK_PROD_IMAGES_PRODUCT]
GO
/****** Object:  ForeignKey [FK_PRODUCT_ATTRIBUTE_D_ATTRIBUTE_VALUE]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[PRODUCT_ATTRIBUTE]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCT_ATTRIBUTE_D_ATTRIBUTE_VALUE] FOREIGN KEY([AttributeValueID])
REFERENCES [dbo].[D_ATTRIBUTE_VALUE] ([ID])
GO
ALTER TABLE [dbo].[PRODUCT_ATTRIBUTE] CHECK CONSTRAINT [FK_PRODUCT_ATTRIBUTE_D_ATTRIBUTE_VALUE]
GO
/****** Object:  ForeignKey [FK_PRODUCT_ATTRIBUTE_PRODUCT]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[PRODUCT_ATTRIBUTE]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCT_ATTRIBUTE_PRODUCT] FOREIGN KEY([ProductID])
REFERENCES [dbo].[PRODUCT] ([ID])
GO
ALTER TABLE [dbo].[PRODUCT_ATTRIBUTE] CHECK CONSTRAINT [FK_PRODUCT_ATTRIBUTE_PRODUCT]
GO
/****** Object:  ForeignKey [FK_ORDERS_ADDRESSINFO]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[ORDERS]  WITH CHECK ADD  CONSTRAINT [FK_ORDERS_ADDRESSINFO] FOREIGN KEY([ShippingAddress])
REFERENCES [dbo].[ADDRESSINFO] ([ID])
GO
ALTER TABLE [dbo].[ORDERS] CHECK CONSTRAINT [FK_ORDERS_ADDRESSINFO]
GO
/****** Object:  ForeignKey [FK_ORDERS_ADDRESSINFO1]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[ORDERS]  WITH CHECK ADD  CONSTRAINT [FK_ORDERS_ADDRESSINFO1] FOREIGN KEY([BillingAddress])
REFERENCES [dbo].[ADDRESSINFO] ([ID])
GO
ALTER TABLE [dbo].[ORDERS] CHECK CONSTRAINT [FK_ORDERS_ADDRESSINFO1]
GO
/****** Object:  ForeignKey [FK_ORDERS_CUSTOMER]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[ORDERS]  WITH CHECK ADD  CONSTRAINT [FK_ORDERS_CUSTOMER] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CUSTOMER] ([ID])
GO
ALTER TABLE [dbo].[ORDERS] CHECK CONSTRAINT [FK_ORDERS_CUSTOMER]
GO
/****** Object:  ForeignKey [FK_ORDERS_D_ORDER_STATUS]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[ORDERS]  WITH CHECK ADD  CONSTRAINT [FK_ORDERS_D_ORDER_STATUS] FOREIGN KEY([Status])
REFERENCES [dbo].[D_ORDER_STATUS] ([ID])
GO
ALTER TABLE [dbo].[ORDERS] CHECK CONSTRAINT [FK_ORDERS_D_ORDER_STATUS]
GO
/****** Object:  ForeignKey [FK_ORDERS_SHIPPING]    Script Date: 05/09/2012 17:21:46 ******/
ALTER TABLE [dbo].[ORDERS]  WITH CHECK ADD  CONSTRAINT [FK_ORDERS_SHIPPING] FOREIGN KEY([ShippingID])
REFERENCES [dbo].[SHIPPING] ([ID])
GO
ALTER TABLE [dbo].[ORDERS] CHECK CONSTRAINT [FK_ORDERS_SHIPPING]
GO
/****** Object:  ForeignKey [FK_ORDER_NOTES_ORDERS]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[ORDER_NOTES]  WITH CHECK ADD  CONSTRAINT [FK_ORDER_NOTES_ORDERS] FOREIGN KEY([OrderID])
REFERENCES [dbo].[ORDERS] ([ID])
GO
ALTER TABLE [dbo].[ORDER_NOTES] CHECK CONSTRAINT [FK_ORDER_NOTES_ORDERS]
GO
/****** Object:  ForeignKey [FK_ORDER_DETAIL_CAMPAIGN]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[ORDER_DETAIL]  WITH CHECK ADD  CONSTRAINT [FK_ORDER_DETAIL_CAMPAIGN] FOREIGN KEY([CampaignID])
REFERENCES [dbo].[CAMPAIGN] ([ID])
GO
ALTER TABLE [dbo].[ORDER_DETAIL] CHECK CONSTRAINT [FK_ORDER_DETAIL_CAMPAIGN]
GO
/****** Object:  ForeignKey [FK_PURCHASE_DETAIL_PRODUCT_ATTRIBUTE]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[ORDER_DETAIL]  WITH CHECK ADD  CONSTRAINT [FK_PURCHASE_DETAIL_PRODUCT_ATTRIBUTE] FOREIGN KEY([ProdAttrID])
REFERENCES [dbo].[PRODUCT_ATTRIBUTE] ([ID])
GO
ALTER TABLE [dbo].[ORDER_DETAIL] CHECK CONSTRAINT [FK_PURCHASE_DETAIL_PRODUCT_ATTRIBUTE]
GO
/****** Object:  ForeignKey [FK_PURCHASE_DETAIL_PURCHASE]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[ORDER_DETAIL]  WITH CHECK ADD  CONSTRAINT [FK_PURCHASE_DETAIL_PURCHASE] FOREIGN KEY([OrderID])
REFERENCES [dbo].[ORDERS] ([ID])
GO
ALTER TABLE [dbo].[ORDER_DETAIL] CHECK CONSTRAINT [FK_PURCHASE_DETAIL_PURCHASE]
GO
/****** Object:  ForeignKey [FK_ORDER_BONUS_BONUS]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[ORDER_BONUS]  WITH CHECK ADD  CONSTRAINT [FK_ORDER_BONUS_BONUS] FOREIGN KEY([BonusID])
REFERENCES [dbo].[BONUS] ([ID])
GO
ALTER TABLE [dbo].[ORDER_BONUS] CHECK CONSTRAINT [FK_ORDER_BONUS_BONUS]
GO
/****** Object:  ForeignKey [FK_ORDER_BONUS_ORDERS]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[ORDER_BONUS]  WITH CHECK ADD  CONSTRAINT [FK_ORDER_BONUS_ORDERS] FOREIGN KEY([OrderID])
REFERENCES [dbo].[ORDERS] ([ID])
GO
ALTER TABLE [dbo].[ORDER_BONUS] CHECK CONSTRAINT [FK_ORDER_BONUS_ORDERS]
GO
/****** Object:  ForeignKey [FK_PAYMENT_ORDERS]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[PAYMENT]  WITH CHECK ADD  CONSTRAINT [FK_PAYMENT_ORDERS] FOREIGN KEY([ID])
REFERENCES [dbo].[ORDERS] ([ID])
GO
ALTER TABLE [dbo].[PAYMENT] CHECK CONSTRAINT [FK_PAYMENT_ORDERS]
GO
/****** Object:  ForeignKey [FK_RETURN_ORDERS]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[RETURN]  WITH CHECK ADD  CONSTRAINT [FK_RETURN_ORDERS] FOREIGN KEY([OrderID])
REFERENCES [dbo].[ORDERS] ([ID])
GO
ALTER TABLE [dbo].[RETURN] CHECK CONSTRAINT [FK_RETURN_ORDERS]
GO
/****** Object:  ForeignKey [FK_PRODUCT_CATEGORY_CATEGORY]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[PRODUCT_CATEGORY]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCT_CATEGORY_CATEGORY] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[CATEGORY] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PRODUCT_CATEGORY] CHECK CONSTRAINT [FK_PRODUCT_CATEGORY_CATEGORY]
GO
/****** Object:  ForeignKey [FK_PRODUCT_CATEGORY_PRODUCT]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[PRODUCT_CATEGORY]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCT_CATEGORY_PRODUCT] FOREIGN KEY([ProductID])
REFERENCES [dbo].[PRODUCT] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PRODUCT_CATEGORY] CHECK CONSTRAINT [FK_PRODUCT_CATEGORY_PRODUCT]
GO
/****** Object:  ForeignKey [FK_SHOPPING_CART_CAMPAIGN]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[SHOPPING_CART]  WITH CHECK ADD  CONSTRAINT [FK_SHOPPING_CART_CAMPAIGN] FOREIGN KEY([CampaignID])
REFERENCES [dbo].[CAMPAIGN] ([ID])
GO
ALTER TABLE [dbo].[SHOPPING_CART] CHECK CONSTRAINT [FK_SHOPPING_CART_CAMPAIGN]
GO
/****** Object:  ForeignKey [FK_SHOPPING_CART_CUSTOMER]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[SHOPPING_CART]  WITH CHECK ADD  CONSTRAINT [FK_SHOPPING_CART_CUSTOMER] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[CUSTOMER] ([ID])
GO
ALTER TABLE [dbo].[SHOPPING_CART] CHECK CONSTRAINT [FK_SHOPPING_CART_CUSTOMER]
GO
/****** Object:  ForeignKey [FK_SHOPPING_CART_PRODUCT_ATTRIBUTE]    Script Date: 05/09/2012 17:21:47 ******/
ALTER TABLE [dbo].[SHOPPING_CART]  WITH CHECK ADD  CONSTRAINT [FK_SHOPPING_CART_PRODUCT_ATTRIBUTE] FOREIGN KEY([ProdAttrID])
REFERENCES [dbo].[PRODUCT_ATTRIBUTE] ([ID])
GO
ALTER TABLE [dbo].[SHOPPING_CART] CHECK CONSTRAINT [FK_SHOPPING_CART_PRODUCT_ATTRIBUTE]
GO
/****** Object:  ForeignKey [FK_RETURN_DETAILS_D_RETURN_MOTIVATION]    Script Date: 05/09/2012 17:21:48 ******/
ALTER TABLE [dbo].[RETURN_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_RETURN_DETAILS_D_RETURN_MOTIVATION] FOREIGN KEY([MotivationID])
REFERENCES [dbo].[D_RETURN_MOTIVATION] ([ID])
GO
ALTER TABLE [dbo].[RETURN_DETAILS] CHECK CONSTRAINT [FK_RETURN_DETAILS_D_RETURN_MOTIVATION]
GO
/****** Object:  ForeignKey [FK_RETURN_DETAILS_ORDER_DETAIL]    Script Date: 05/09/2012 17:21:48 ******/
ALTER TABLE [dbo].[RETURN_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_RETURN_DETAILS_ORDER_DETAIL] FOREIGN KEY([OrderDetailID])
REFERENCES [dbo].[ORDER_DETAIL] ([ID])
GO
ALTER TABLE [dbo].[RETURN_DETAILS] CHECK CONSTRAINT [FK_RETURN_DETAILS_ORDER_DETAIL]
GO
/****** Object:  ForeignKey [FK_RETURN_DETAILS_RETURN]    Script Date: 05/09/2012 17:21:48 ******/
ALTER TABLE [dbo].[RETURN_DETAILS]  WITH CHECK ADD  CONSTRAINT [FK_RETURN_DETAILS_RETURN] FOREIGN KEY([ReturnID])
REFERENCES [dbo].[RETURN] ([ID])
GO
ALTER TABLE [dbo].[RETURN_DETAILS] CHECK CONSTRAINT [FK_RETURN_DETAILS_RETURN]
GO
/****** Object:  ForeignKey [FK_PAYPAL_PAYMENT_PAYMENT1]    Script Date: 05/09/2012 17:21:48 ******/
ALTER TABLE [dbo].[PAYPAL_PAYMENT]  WITH CHECK ADD  CONSTRAINT [FK_PAYPAL_PAYMENT_PAYMENT1] FOREIGN KEY([ID])
REFERENCES [dbo].[PAYMENT] ([ID])
GO
ALTER TABLE [dbo].[PAYPAL_PAYMENT] CHECK CONSTRAINT [FK_PAYPAL_PAYMENT_PAYMENT1]
GO
/****** Object:  ForeignKey [FK_CASH_PAYMENT_PAYMENT]    Script Date: 05/09/2012 17:21:48 ******/
ALTER TABLE [dbo].[CASH_PAYMENT]  WITH CHECK ADD  CONSTRAINT [FK_CASH_PAYMENT_PAYMENT] FOREIGN KEY([ID])
REFERENCES [dbo].[PAYMENT] ([ID])
GO
ALTER TABLE [dbo].[CASH_PAYMENT] CHECK CONSTRAINT [FK_CASH_PAYMENT_PAYMENT]
GO
