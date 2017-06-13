<%@ Control Language="C#" AutoEventWireup="true" CodeFile="NavigationControl.ascx.cs" Inherits="NavigationControl" %>

<nav class="navbar navbar-default navbar-fixed-bottom">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><i class="fa fa-heart"></i> >_</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <%--make navigation with repeater--%>
            <asp:Repeater ID="navBar" runat="server" OnItemDataBound="navBar_OnItemDataBound">
                <HeaderTemplate>
                    <ul class="nav navbar-nav">
                </HeaderTemplate>
                <ItemTemplate>
                    <li><a id="navLink" href="<%# ((SiteMapNode)Container.DataItem).Url %>" runat="server">
                        <%# ((SiteMapNode)Container.DataItem).Title %></a>

                    </li>

                </ItemTemplate>
                <FooterTemplate></ul></FooterTemplate>
            </asp:Repeater>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>


