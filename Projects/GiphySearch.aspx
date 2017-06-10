<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="GiphySearch.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="GSContainer" data-ng-controller="myCtrl">
        Giphy Search Page{{count}}
    <%--search control--%>
        <%--    <div class="input-group">
        <input type="text" class="form-control" placeholder="Search for..."/>
        <span class="input-group-btn">
            <button class="btn btn-default" type="button">Go!</button>
        </span>
    </div>--%>
        <!-- /input-group -->
        <div class="input-group">
            <asp:TextBox ID="inputGiphySearch" runat="server" class="form-control" ng-model="inputGiphySearch"></asp:TextBox>
            <span class="input-group-btn">
                <asp:Button class="btn btn-de" runat="server" Text="Search Giphy" ng-click="searchGiphyDB()" OnClientClick="return false;" />
            </span>
        </div>
        <div class="row">

            <div class="col-xs-12 col-sm-4 col-md-2" data-ng-repeat="result in results" style="margin-bottom: 20px;">
                <img style="width: 100%; height: auto; overflow: hidden; display: inline-block;" src="{{result.images.downsized.url}}" alt="{{result.type}}" title="{{result.type}}" />
            </div>


        </div>
    </div>
</asp:Content>

