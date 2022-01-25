using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebClient
{
    public class global
    {
        // Report Server defines the URL to root of the 
        // Reporting Services home page. 
        public static string ReportServer
        {
            get { return "http://scadacellab_01/reportserver"; }
        }

        // ReportPath, when appended to the ReportServer property, 
        // will define the root of the report search. 
        // For example, to view all available reports on the report 
        // server, use "/" as the ReportPath. Setting the value to 
        // "/MyDemoReports", would only show reports and subdirectories
        // under http://ReportServer/MyDemoReports. 
        public static string ReportPath
        {
            get { return "/Reportes Torneo Futbol"; }
        }

        // There are a couple places where we need to do string 
        // manipulation to add and remove path seperators - 
        // sometimes the seperator needs to be passed as an array
        // of char, othertimes as a string. These two properties
        // simply define both so the code is a little cleaner
        // when we do the string munging. 
        public static char[] PathSeparatorArray
        {
            get { return pathSeparatorArray; }
        }

        public static string PathSeparatorString
        {
            get { return pathSeparatorString; }
        }

        protected static char pathSeparator = '/';
        protected static char[] pathSeparatorArray = { pathSeparator };
        protected static string pathSeparatorString = new string(pathSeparator, 1);	

    }
}
