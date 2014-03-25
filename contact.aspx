<%@ Page Language="VB" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Web Contact Form</title>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />

    <div id="header">
            <h1 style="text-align:center; font:bold 20px arial, verdana;"> 
                Wicked Easy Recipes</h1>
            <h2 style="text-align:center; font:16px arial, verdana;">
                Using 5 Ingedients or Less!</h2>
            </div>

</head>

<body>
    <form id="form1" runat="server">

        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server"></asp:TextBox>
        <br />
        <br />
       
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine"></asp:TextBox>
        
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>

        <asp:Button ID="Button1" runat="server" Text="Cancel" />

    </form>
</body>
</html>
