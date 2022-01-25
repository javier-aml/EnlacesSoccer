<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RenderReport.aspx.cs" Inherits="WebClient.RenderReport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
 <HEAD>
        <title>Visor de Reportes</title>
    </HEAD>
    <body>
        <form id="Form1" method="post" runat="server" onload="Page_Load">
            <h3><asp:Label ID="Label1" runat="server" Text="Reporte"></asp:Label></h3>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="800px" 
                Width="800px">
            </rsweb:ReportViewer>
        </form>
    </body>
</html>
