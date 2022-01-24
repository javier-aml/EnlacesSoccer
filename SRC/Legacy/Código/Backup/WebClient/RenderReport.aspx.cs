using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;

namespace WebClient
{
    public partial class RenderReport : System.Web.UI.Page
    {
        string reporte;

        private string PageName
        {
            get
            {
                return Context.Request.Params["Path"];  
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            CargarInformacionInicial();    
            if (!Page.IsPostBack)
            {
                CargaReporte();
            }
        }

        private void CargarInformacionInicial()
        {
            reporte = PageName;

            this.Label1.Text = "Reporte: " + reporte.Trim();
        }

        private void CargaReporte()
        {
            ReportViewer1.ProcessingMode = ProcessingMode.Remote;
            this.ReportViewer1.Reset();
            try
            {
                this.ReportViewer1.ServerReport.ReportServerUrl = new Uri(global.ReportServer.Trim());
                this.ReportViewer1.ServerReport.ReportPath = global.ReportPath.Trim()  + reporte;
                this.ReportViewer1.ShowParameterPrompts = true;
                this.ReportViewer1.ServerReport.Refresh();
            }
            catch (Exception e)
            {
                throw e;
                  //MsgBox("Error al cargar el reporte")
            }
                  
        }
    }
}
