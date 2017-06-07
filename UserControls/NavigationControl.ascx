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

            <%--<ul class="nav navbar-nav">
                <li><a href="#">Link <span class="sr-only">(current)</span></a></li>
                <li><a href="../../GiphySearch.aspx">Giphy</a></li>
            </ul>--%>
           <%-- <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" NodeIndent="10" ShowExpandCollapse="False">
                <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="0px" NodeSpacing="0px" VerticalPadding="0px" />
                <ParentNodeStyle Font-Bold="False" />
                <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
            </asp:TreeView>

            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />--%>


                
  

        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>






<%--<form class="navbar-form navbar-left">
    <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
</form>--%>


<%--<ul class="nav navbar-nav navbar-right">
    <li><a href="#">Link</a></li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
        </ul>
    </li>
</ul>--%>



<%--<li class="dropdown">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
    <ul class="dropdown-menu">
        <li><a href="#">Action</a></li>
        <li><a href="#">Another action</a></li>
        <li><a href="#">Something else here</a></li>
        <li role="separator" class="divider"></li>
        <li><a href="#">Separated link</a></li>
        <li role="separator" class="divider"></li>
        <li><a href="#">One more separated link</a></li>
    </ul>
</li>--%>
