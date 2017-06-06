using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Web.Script.Serialization;
using System.IO;

public partial class Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //http://api.giphy.com/v1/gifs/search?q=funny+cat&api_key=dc6zaTOxFJmzC
        string appId = "dc6zaTOxFJmzC";
        string url = string.Format("http://api.giphy.com/v1/gifs/search?q=funny+cat&api_key={0}",appId);


        //HttpWebRequest request = (HttpWebRequest)WebRequest.Create("https://api.github.com/users/octocat/orgs");
        //request.UserAgent = "[any words that is more than 5 characters]";
        //WebResponse response = request.GetResponse();

        //MemoryStream stream = (MemoryStream)response.GetResponseStream();
        //StreamReader sr = new StreamReader(stream);
        //string content = sr.ReadToEnd();

        //using (WebClient client = new WebClient())
        //{
            
        //    client.Proxy = new WebProxy("https://isxpxy1.dc.mars", 8080);
        //    string json = client.DownloadString(url);
        //    giphyResults.Text = json.ToString();
        //}

    }
}