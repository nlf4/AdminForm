<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="AdminForm.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1 id="form-header">Search School District</h1>
<div class="form-container">
   <form runat="server"> 
        <div class="district-input">
            <label for="id">ID:</label>
           <%-- <input type="text" />--%>
            <asp:TextBox ID="id" runat="server"></asp:TextBox>
        </div>

        <div class="district-input">
            <label for="name">Name:</label>
          <%--  <input type="text" />--%>
            <asp:TextBox ID="name" runat="server"></asp:TextBox>
        </div>
        

        <div class="district-input">
            <label for="irn">IRN:</label>
           <%-- <input type="text" />--%>
            <asp:TextBox ID="irn" runat="server"></asp:TextBox>
        </div>
        

       
       <asp:Button ID="Button1" runat="server" Text="Create" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Search" OnClick="Button2_Click" />


       <asp:GridView ID="GridView1" runat="server"></asp:GridView>
       </form>

</div>

</body>
</html>
