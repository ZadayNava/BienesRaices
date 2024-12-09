using System;
using System.Configuration;
using System.IO;
using System.Net;
using System.Text;
using System.Xml.Xsl;
using System.Xml;

namespace BienesRaices
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string tipoMenu = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Hola desde el codeBehide";
            //es la respuesta de una peticion
            if (Request.QueryString["Id"] == null)
            {
                tipoMenu = "0";
            }
            else
            {
                tipoMenu = Request.QueryString["Id"];
            }
            TransformarXML();

        }

        //Metodo para cargar y transformar un XML usando XSLT
        private void TransformarXML()
        {
            string xmlPath = ConfigurationManager.AppSettings["FileServer"].ToString() + "xml/Info.xml";
            string xsltPath = ConfigurationManager.AppSettings["FileServer"].ToString() + "xslt/template.xslt";

            XmlTextReader xmTextReader = new XmlTextReader(xmlPath);

            XmlUrlResolver xmlUrlResolver = new XmlUrlResolver();
            xmlUrlResolver.Credentials = CredentialCache.DefaultCredentials;

            XsltSettings settings = new XsltSettings(true, true);

            XslCompiledTransform xslt = new XslCompiledTransform();
            xslt.Load(xsltPath, settings, xmlUrlResolver);

            //------------ se empieza a crear ------------

            StringBuilder stringBuilder = new StringBuilder();
            TextWriter textWriter = new StringWriter(stringBuilder);

            XsltArgumentList xsltArgumentList = new XsltArgumentList();
            xsltArgumentList.AddParam("TipoMenu", "", tipoMenu);

            xslt.Transform(xmTextReader, xsltArgumentList, textWriter);

            string resultado = stringBuilder.ToString();
            Response.Write(resultado);
        }
    }
}