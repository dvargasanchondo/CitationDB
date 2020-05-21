<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CitationEditor.aspx.cs" Inherits="CitationDB2.CitationEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!DOCTYPE html>

<html>

<body>
    
    <h1 style="text-align: center">
Create an APA Website Citation
    
    </h1>
        <style>
div {
  
  margin: 50;
  
}
</style>
    <div>

</div>
    <div>

<table width="100%" cellpadding="0px" cellspacing="0px" >
<tr>
<td style="text-align: center">
    <asp:TextBox ID="TextBox1" runat="server" placeholder="First Name" ></asp:TextBox>
</td>
<td style="width: 211px" style="text-align: center">
    <asp:TextBox ID="TextBox2" runat="server" placeholder="Last Name" ></asp:TextBox>
</td>
<td>
    
    <asp:TextBox ID="TextBox6" runat="server" placeholder="Article Title" style="text-align: center"></asp:TextBox>
    
</td>
<td style="width: 268435456px" style="text-align: center">
    <asp:TextBox ID="TextBox3" runat="server" placeholder="Date Published" ></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Date" />
<asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="100px" NextPrevFormat="FullMonth" Width="150px">
    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
    <OtherMonthDayStyle ForeColor="#999999" />
    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
    <TodayDayStyle BackColor="#CCCCCC" />
    </asp:Calendar>
</td>
<td style="width: 268435456px" style="text-align: center">
  <asp:TextBox ID="TextBox4" runat="server" placeholder="Date Retrieved" ></asp:TextBox>
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Date" />
    <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="100px" NextPrevFormat="FullMonth" Width="150px">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#CCCCCC" />
    </asp:Calendar>
</td>
    <td style="text-align: center">
<asp:TextBox ID="TextBox5" runat="server" placeholder="Website" ></asp:TextBox>
    
    </td>
 
</table>
</div>
    <div style="text-align:right">
<asp:Button ID="Button3" runat="server" Text="Submit" OnClick="Button3_Click" />
    </div>
    <div>
<asp:Label ID="Label4" runat="server" Text="Label" Visible="false"></asp:Label>
    </div>
    <h3>

        <asp:Label ID="Label5" runat="server" Text="Label" Visible="false"></asp:Label>
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Help" />
 
    </h3>
   
</body>
</html>
</asp:Content>
