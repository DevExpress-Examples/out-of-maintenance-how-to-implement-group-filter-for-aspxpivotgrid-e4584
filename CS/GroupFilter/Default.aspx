<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GroupFilter._Default" %>

<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v12.2, Version=12.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" 
        DataSourceID="AccessDataSource1" EnableTheming="True" Theme="Default">
        <Fields>
            <dx:PivotGridField ID="fieldProductName" AreaIndex="0" Caption="Product Name" 
                FieldName="ProductName">
            </dx:PivotGridField>
            <dx:PivotGridField ID="fieldExtendedPrice" Area="DataArea" AreaIndex="0" 
                Caption="Extended Price" FieldName="Extended_Price">
            </dx:PivotGridField>
            <dx:PivotGridField ID="fieldCategoryName" Area="RowArea" AreaIndex="0" 
                Caption="Category Name" FieldName="CategoryName">
            </dx:PivotGridField>
            <dx:PivotGridField ID="fieldOrderDateYear" Area="ColumnArea" AreaIndex="0" 
                Caption="Year" FieldName="OrderDate" GroupInterval="DateYear" 
                UnboundFieldName="fieldOrderDate">
            </dx:PivotGridField>
            <dx:PivotGridField ID="fieldOrderDateMonth" Area="ColumnArea" AreaIndex="1" 
                Caption="Month" FieldName="OrderDate" GroupInterval="DateMonth" 
                UnboundFieldName="fieldOrderDate1">
            </dx:PivotGridField>
        </Fields>
    </dx:ASPxPivotGrid>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/nwind.mdb" 
        SelectCommand="SELECT [ProductName], [Extended Price] AS Extended_Price, [CategoryName], [OrderDate] FROM [SalesPerson]">
    </asp:AccessDataSource>
    </form>
</body>
</html>
