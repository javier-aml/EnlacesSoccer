<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="ListReports.aspx.cs" Inherits="WebClient.ListReports" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML>
    <HEAD>
        <title>Reportes</title>
         <link href="css/Style.css" rel="stylesheet" type="text/css"/>    
    </HEAD>
    <body style="body">
        <div id="header" style="header">
        </div>
        <div id="Div1" style="header">
        </div>
        <div id="container" style="container">
            <form id="Form1" method="post" runat="server" onload="Page_Load">
                        <asp:TreeView ID="TreeView1" runat="server" style="content">
                        </asp:TreeView>  
            </form>
        </div>
        <div id="footer" style="footer">
        </div>
    </body>
</HTML>