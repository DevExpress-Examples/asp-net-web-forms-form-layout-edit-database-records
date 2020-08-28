<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxFormLayout" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v13.2, Version=13.2.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPager" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to edit fields in a data source using the ASPxFormLayout control</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxFormLayout ID="formLayout" runat="server" DataSourceID="SqlDataSource1" OnLayoutItemDataBound="ASPxFormLayout4_LayoutItemDataBound">
                <Items>
                    <dx:LayoutItem FieldName="ProductName">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                <dx:ASPxTextBox ID="ProductNameTextBox" runat="server" Width="170px">
                                </dx:ASPxTextBox>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem FieldName="UnitPrice">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                <dx:ASPxSpinEdit ID="PriceTextBox" runat="server" Height="21px" Number="0">
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem FieldName="QuantityPerUnit">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                <dx:ASPxTextBox ID="QuantityTextBox" runat="server" Width="170px">
                                </dx:ASPxTextBox>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Picture">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server" SupportsDisabledAttribute="True">
                                <dx:ASPxBinaryImage ID="ASPxFormLayout4_E3" runat="server">
                                </dx:ASPxBinaryImage>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                </Items>
            </dx:ASPxFormLayout>
            <dx:ASPxLabel runat="server" ID="errorMessageLabel" Visible="false" ForeColor="Red" EnableViewState="false" EncodeHtml="false" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
                SelectCommand="SELECT Products.ProductName, Products.UnitPrice, Categories.Description, Categories.Picture, Products.QuantityPerUnit, Products.CategoryID, Products.ProductID FROM Products INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID WHERE (Products.ProductID = @ProductID)"
                UpdateCommand="UPDATE Products SET ProductName = @ProductName, UnitPrice=@Price, QuantityPerUnit = @Quantity WHERE (ProductID = @ProductID)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="ProductID" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="formLayout$ProductNameTextBox" Name="ProductName" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="formLayout$PriceTextBox" Name="Price" PropertyName="Number" Type="Decimal" />
                    <asp:ControlParameter ControlID="formLayout$QuantityTextBox" Name="Quantity" PropertyName="Text" Type="String" />
                    <asp:Parameter Name="ProductID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <dx:ASPxButton ID="UpdButton" runat="server" OnClick="UpdButton_Click" Text="Update">
            </dx:ASPxButton>
            <dx:ASPxPager ID="ASPxPager1" runat="server" OnPageIndexChanging="ASPxPager1_PageIndexChanging" ItemsPerPage="1" OnInit="ASPxPager1_Init">
                <LastPageButton Visible="True">
                </LastPageButton>
                <FirstPageButton Visible="True">
                </FirstPageButton>
                <Summary Position="Inside" Text="Page {0} of {1} " />
            </dx:ASPxPager>
        </div>
        <asp:SqlDataSource ID="sdRecordsCount" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT COUNT(*) AS Expr1 FROM Products"></asp:SqlDataSource>
    </form>
</body>
</html>
