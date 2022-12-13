<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GroupFilter._Default" %>

<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v21.2, Version=21.2.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dx" %>

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
        DataSourceID="SqlDataSource1" EnableTheming="True" Theme="Default" ClientIDMode="AutoID" IsMaterialDesign="False"
        OptionsData-DataProcessingEngine="Optimized">
        <Fields>
            <dx:PivotGridField ID="fieldProductName1" AreaIndex="0" Caption="Product Name" Name="fieldProductName1">
                <DataBindingSerializable>
                    <dx:DataSourceColumnBinding ColumnName="ProductName" />
                </DataBindingSerializable>
            </dx:PivotGridField>
            <dx:PivotGridField ID="fieldExtendedPrice" Area="DataArea" AreaIndex="0" 
                Caption="Extended Price" Name="fieldExtendedPrice">
                <DataBindingSerializable>
                    <dx:DataSourceColumnBinding ColumnName="Extended Price" />
                </DataBindingSerializable>
            </dx:PivotGridField>
            <dx:PivotGridField ID="fieldCategoryName1" Area="RowArea" AreaIndex="0" 
                Caption="Category Name" Name="fieldCategoryName1">
                <DataBindingSerializable>
                    <dx:DataSourceColumnBinding ColumnName="CategoryName" />
                </DataBindingSerializable>
            </dx:PivotGridField>
            <dx:PivotGridField ID="fieldOrderDateYear" Area="ColumnArea" AreaIndex="0" 
                Caption="Year">
                <DataBindingSerializable>
                    <dx:DataSourceColumnBinding ColumnName="OrderDate" GroupInterval="DateYear" />
                </DataBindingSerializable>
            </dx:PivotGridField>
            <dx:PivotGridField ID="fieldOrderDateMonth" Area="ColumnArea" AreaIndex="1" 
                Caption="Month">
                <DataBindingSerializable>
                    <dx:DataSourceColumnBinding ColumnName="OrderDate" GroupInterval="DateMonth" />
                </DataBindingSerializable>
            </dx:PivotGridField>
        </Fields>
        <OptionsData DataProcessingEngine="Optimized" />
    </dx:ASPxPivotGrid>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM [SalesPerson]"></asp:SqlDataSource>

    </form>
</body>
</html>
