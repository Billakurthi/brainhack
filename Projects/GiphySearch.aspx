<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="GiphySearch.aspx.cs" Inherits="Default2" %>

<%@ Register Src="~/UserControls/GiphySearchFilterControl.ascx" TagPrefix="uc1" TagName="GiphySearchFilterControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="GSContainer" data-ng-controller="giphySearchCtrl">

        <uc1:GiphySearchFilterControl runat="server" ID="GiphySearchFilterControl" />


        <%-- <div class="row">
    
            <div class="col-xs-6">
                <div class="input-group">
                    <label for="searchType">Endpoint:</label>
                    <select name="searchType" data-ng-model="selectedEndpoint.value" data-ng-change="searchGiphyDB()" class="form-control"
                        data-ng-options="x for x in endPoints track by x">
                    </select>
                </div>

                <div class="searchFiltersContainer" data-ng-show="selectedEndpoint.value == 'Search'">
                    <!-- /input-group -->
                    <div class="input-group">
                        <asp:TextBox ID="inputGiphySearch" runat="server" class="form-control" data-ng-model="inputGiphySearch" required="required"></asp:TextBox>
                        <span class="input-group-btn">
                            <asp:Button class="btn btn-success" runat="server" Text="Search Giphy" data-ng-click="searchGiphyDB()" OnClientClick="return false;" />
                        </span>
                    </div>
                </div>
            </div>
            <div class="col-xs-6">
                <!--  filters container-->
                {{selectRating.value}}
                <!-- input group for range option -->
                <div class="input-group">
                    <label for="searchLimit">count:</label>
                    <select name="searchLimit" data-ng-model="resultsLimit.value" data-ng-change="searchGiphyDB()" data-ng-if="resultsRange" data-ng-options="x for x in resultsRange track by x">
                    </select>
                </div>
                <!-- input group for range option -->
                <div class="input-group">
                    <label for="selectSearchRating">Rating:</label>
                    <select name="selectSearchRating"
                        data-ng-model="selectedRating.value"
                        data-ng-change="searchGiphyDB()"
                        data-ng-if="ratingOptions"
                        data-ng-options="x for (x,y) in ratingOptions track by y">
                    </select>
                </div>
            </div>
       
        </div>--%>
        <asp:Label runat="server" data-ng-model="totalResults" data-ng-if="totalResults">Found {{totalResults}} Results</asp:Label>
        <div class="main">
            <div class="row ">
                <div class="col-xs-12  col-sm-3" data-ng-if="results" data-ng-repeat="result in results" style="margin-bottom: 20px;">
                    <div class="giphy-image-container">
                    <img class="img-thumbnail" style="width: auto; height: 100%; overflow: hidden; display: block;" src="{{result.images.downsized.url}}" alt="{{result.slug}}"
                        title="{{result.type}}" />
                    </div>
                    <a class="btn btn-default" href="whatsapp://send?text={{result.images.downsized_large.url}}" data-action="{{result.images.downsized_large.url}}"><i class="fa fa-whatsapp"></i></a>
                    <a class="btn btn-default" target="_blank" href="{{result.images.downsized_large.url}}" data-download="{{result.slug}}"><i class="fa fa-download"></i></a>
                   
                </div>
            </div>
        </div>
    </div>
</asp:Content>
