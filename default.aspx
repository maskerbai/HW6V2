<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Recipetable] WHERE [recID] = @recID" InsertCommand="INSERT INTO [Recipetable] ([recName], [submitBy], [ing1], [ing2], [ing3], [ing4], [ing5], [pre], [notes]) VALUES (@recName, @submitBy, @ing1, @ing2, @ing3, @ing4, @ing5, @pre, @notes)" SelectCommand="SELECT * FROM [Recipetable]" UpdateCommand="UPDATE [Recipetable] SET [recName] = @recName, [submitBy] = @submitBy, [ing1] = @ing1, [ing2] = @ing2, [ing3] = @ing3, [ing4] = @ing4, [ing5] = @ing5, [pre] = @pre, [notes] = @notes WHERE [recID] = @recID">
        <DeleteParameters>
            <asp:Parameter Name="recID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="recName" Type="String" />
            <asp:Parameter Name="submitBy" Type="String" />
            <asp:Parameter Name="ing1" Type="String" />
            <asp:Parameter Name="ing2" Type="String" />
            <asp:Parameter Name="ing3" Type="String" />
            <asp:Parameter Name="ing4" Type="String" />
            <asp:Parameter Name="ing5" Type="String" />
            <asp:Parameter Name="pre" Type="String" />
            <asp:Parameter Name="notes" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="recName" Type="String" />
            <asp:Parameter Name="submitBy" Type="String" />
            <asp:Parameter Name="ing1" Type="String" />
            <asp:Parameter Name="ing2" Type="String" />
            <asp:Parameter Name="ing3" Type="String" />
            <asp:Parameter Name="ing4" Type="String" />
            <asp:Parameter Name="ing5" Type="String" />
            <asp:Parameter Name="pre" Type="String" />
            <asp:Parameter Name="notes" Type="String" />
            <asp:Parameter Name="recID" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
    <div class="table">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="recID" DataSourceID="SqlDataSource1" Width="374px">
    <Columns>
        <asp:BoundField DataField="recName" HeaderText="Recipe Name" SortExpression="recName" >
        <HeaderStyle BackColor="Silver" />
        </asp:BoundField>
        <asp:BoundField DataField="submitBy" HeaderText="Submitted By" SortExpression="submitBy" >
        <HeaderStyle BackColor="Silver" />
        </asp:BoundField>
        <asp:HyperLinkField DataNavigateUrlFields="recID" DataNavigateUrlFormatString="detailview.aspx?recID={0}" HeaderText="Details" Text="View Details" >
        <HeaderStyle BackColor="Silver" />
        </asp:HyperLinkField>
    </Columns>
    
    <HeaderStyle BackColor="Coral" />
    
</asp:GridView>
        </div>
</asp:Content>

