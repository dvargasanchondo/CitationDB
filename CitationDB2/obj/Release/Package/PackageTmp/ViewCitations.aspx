<%@ Page Title="Your Citations" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewCitations.aspx.cs" Inherits="CitationDB2.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    
<hr />
   <asp:GridView ID="Citations" runat="server" AutoGenerateColumns="false">

       <AlternatingRowStyle BackColor="#E4E4E4"   Wrap="True" />

       <Columns>
           <asp:BoundField DataField ="fullcite" HeaderText="Citations"/>
       </Columns>
       
   </asp:GridView>
   
</asp:Content>
