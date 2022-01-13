using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebClient.scadacellab_01;

namespace WebClient
{
    public partial class ListReports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ReportingService rService = new ReportingService();
                rService.Credentials = System.Net.CredentialCache.DefaultCredentials;
                CatalogItem[] catalogItems;
                catalogItems = rService.ListChildren(global.ReportPath, true);
                BuildTree(catalogItems);
            }
        }

        private void BuildTree(CatalogItem[] catalogItems)
        {
            foreach (CatalogItem item in catalogItems)
            {
                if (item.Type == ItemTypeEnum.Report)
                {
                    string path = item.Path.Remove(0, global.ReportPath.Length);
                    string[] tokens = path.Split(global.PathSeparatorArray);
                    BuildNodesFromTokens(tokens, 0, TreeView1.Nodes);
                }
            }
        }

        private void BuildNodesFromTokens(string[] tokens, int index,
                    TreeNodeCollection nodes)
        {
            TreeNode node = null;

            for (int i = 0; i < nodes.Count; i++)
            {
                if (nodes[i].Text == tokens[index])
                {
                    node = nodes[i];
                    break;
                }
            }

            if (node == null)
            {
                node = new TreeNode();
                node.Text = tokens[index];
                nodes.Add(node);

                if (tokens.Length - 1 == index)
                {
                    node.NavigateUrl = "RenderReport.aspx?Path=" +
                       Server.UrlEncode(
                            String.Join(global.PathSeparatorString.ToString(), tokens)
                       );
                }
            }

            index++;
            if (tokens.Length > index)
            {
                BuildNodesFromTokens(tokens, index, nodes);
            }
        }

    }
}
