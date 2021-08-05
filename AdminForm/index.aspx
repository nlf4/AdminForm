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
            <input type="text" />
            <asp:TextBox ID="id" runat="server"></asp:TextBox>
        </div>

        <div class="district-input">
            <label for="name">Name:</label>
            <input type="text" />
            <asp:TextBox ID="name" runat="server"></asp:TextBox>
        </div>
        

        <div class="district-input">
            <label for="irn">IRN:</label>
            <input type="text" />
            <asp:TextBox ID="irn" runat="server"></asp:TextBox>
        </div>
        

        <button type="submit">Search</button>
        <asp:Button ID="Button1" runat="server" Text="Search2" OnClick="Button1_Click" />
       </form>

</div>

</body>
</html>
