<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="detailview.aspx.vb" Inherits="detailview" %>


        
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Detail Recipes</title>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Recipetable] WHERE [recID] = @recID" InsertCommand="INSERT INTO [Recipetable] ([recName], [submitBy], [ing1], [ing2], [ing3], [ing4], [ing5], [pre], [notes]) VALUES (@recName, @submitBy, @ing1, @ing2, @ing3, @ing4, @ing5, @pre, @notes)" SelectCommand="SELECT * FROM [Recipetable] WHERE ([recID] = @recID)" UpdateCommand="UPDATE [Recipetable] SET [recName] = @recName, [submitBy] = @submitBy, [ing1] = @ing1, [ing2] = @ing2, [ing3] = @ing3, [ing4] = @ing4, [ing5] = @ing5, [pre] = @pre, [notes] = @notes WHERE [recID] = @recID">
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
        <SelectParameters>
            <asp:QueryStringParameter Name="recID" QueryStringField="recID" Type="Int32" />
        </SelectParameters>
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
    <div class="table2">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="recID" DataSourceID="SqlDataSource1" Height="50px" style="margin-right: 77px" Width="263px">
        <Fields>
            <asp:BoundField DataField="recName" HeaderText="Recipe Name" SortExpression="recName" />
            <asp:BoundField DataField="submitBy" HeaderText="Submitted By" SortExpression="submitBy" />
            <asp:BoundField DataField="ing1" HeaderText="Ingredient #1" SortExpression="ing1" />
            <asp:BoundField DataField="ing2" HeaderText="Ingredient #2" SortExpression="ing2" />
            <asp:BoundField DataField="ing3" HeaderText="Ingredient #3" SortExpression="ing3" />
            <asp:BoundField DataField="ing4" HeaderText="Ingredient #4" SortExpression="ing4" />
            <asp:BoundField DataField="ing5" HeaderText="Ingredient #5" SortExpression="ing5" />
            <asp:BoundField DataField="pre" HeaderText="Preparation" SortExpression="pre" />
            <asp:BoundField DataField="notes" HeaderText="Notes" SortExpression="notes" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
        </Fields>
        <HeaderStyle BackColor="Coral" />
    </asp:DetailsView>
        </div>
</asp:Content>

