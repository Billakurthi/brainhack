<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-xs-12 col-sm-4 col-md-4">  One </div>
        <div class="col-xs-12 col-sm-4 col-md-4"> Two  </div>
        <div class="col-xs-12 col-sm-4 col-md-4"> Three </div>

    </div>
    <div class="giphy results">
        <asp:TextBox runat="server" ID="giphyResults" TextMode="MultiLine">

        </asp:TextBox>
    </div>
    
  

</asp:Content>

