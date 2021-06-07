<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sample.aspx.cs" Inherits="D16Sample1.Sample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="387px">
            <asp:TextBox ID="prid" runat="server">PrId</asp:TextBox>
            <br />
            <br />
            <asp:Label ID="productid" runat="server" Text="ProductId"></asp:Label>
            <br />
            <br />
            <asp:Label ID="productname" runat="server" Text="Enter Product Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="product_text" runat="server" OnTextChanged="product_text_TextChanged"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="price" runat="server" Text="Enter Price"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="price_text" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="quantity" runat="server" Text="Quantity"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="quantity_text" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btn_previous" runat="server" OnClick="btn_previous_Click" Text="Previous" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_next" runat="server" OnClick="btn_next_Click" Text="Next" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_insert" runat="server" Text="Insert records" OnClick="btn_insert_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_delete" runat="server" OnClick="btn_delete_Click" Text="Delete" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_update" runat="server" OnClick="btn_update_Click" Text="Update" />
            &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorks2017ConnectionString %>"
                DeleteCommand="DELETE FROM [ProductInfor] WHERE [ProductId] = @ProductId" 
                InsertCommand="INSERT INTO [ProductInfor] ([Productname], [Price]) VALUES (@Productname, @Price)"
                SelectCommand="SELECT * FROM [ProductInfor]" UpdateCommand="UPDATE [ProductInfor] SET [Productname] = @Productname, [Price] = @Price WHERE [ProductId] = @ProductId">
                <DeleteParameters>
                    <asp:FormParameter Name="ProductId" Type="Int32"  FormField="prid" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:FormParameter Name="Productname" Type="String" FormField="product_text" />
                    <asp:FormParameter Name="Price" Type="Decimal" FormField="price_text"/>
                    <asp:FormParameter Name="quantity" Type="Int32" FormField="quantity_text" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:FormParameter Name="Productname" Type="String" FormField="product_text" />
                    <asp:FormParameter Name="Price" Type="Decimal" FormField="price_text"/>
                    <asp:FormParameter Name="quantity" Type="Int32" FormField="quantity_text" />
                    <asp:FormParameter Name="ProductId" Type="Int32" FormField="prid" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>
    </form>
</body>
</html>
