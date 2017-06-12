<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="GiphySearch.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="GSContainer" data-ng-controller="giphySearchCtrl">
        Giphy Search Page{{count}}
            <%--search control--%>
        <%--    <div class="input-group">
        <input type="text" class="form-control" placeholder="Search for..."/>
        <span class="input-group-btn">
            <button class="btn btn-default" type="button">Go!</button>
        </span>
    </div>--%>
        <!-- input group for select option -->
        <div class="input-group">
            <label for="searchType">Select list:</label>
            <select name="searchType" data-ng-model="selectedName.value" data-ng-change="getTrending(selectedName.value)" class="form-control"
                data-ng-options="x for x in readEndPoints track by x">
            </select>{{selectedName.value}}
        </div>



        <!--  filters container-->

        <!-- input group for range option -->
        <div class="input-group">
            <label for="searchLimit">Result count:</label>
            <select name="searchLimit" data-ng-model="resultsLimit.value" data-ng-change="searchGiphyDB()" data-ng-if="resultsRange" data-ng-options="x for x in resultsRange track by x">
            </select>
            {{selectRating.value}}
            <!-- input group for range option -->
            <div class="input-group">
                <label for="selectSearchRating">Result Rating:</label>
                <select name="selectSearchRating" 
                    data-ng-model="selectRating.value" 
                    data-ng-change="searchGiphyDB()" 
                    data-ng-if="ratingOptions" 
                    data-ng-options="x for (x,y) in ratingOptions track by y">
                </select>
           
            </div>
            <div class="searchFiltersContainer" data-ng-show="selectedName.value == 'Search'">
                <!-- /input-group -->
                <div class="input-group">
                    <asp:TextBox ID="inputGiphySearch" runat="server" class="form-control" data-ng-model="inputGiphySearch" required="required"></asp:TextBox>
                    <span class="input-group-btn">
                        <asp:Button class="btn btn-success" runat="server" Text="Search Giphy" data-ng-click="searchGiphyDB()" OnClientClick="return false;"/>
                    </span>
                </div>

            </div>
    </div>
        <asp:Label runat="server" data-ng-model="totalResults" data-ng-if="totalResults">Found {{totalResults}} Results</asp:Label>
    <div class="row">
        
        <div class="col-xs-12 col-sm-4" data-ng-if="results" data-ng-repeat="result in results" style="margin-bottom: 20px;">
            <img style="width: 100%; height: 100%; overflow: hidden; display: block;" src="{{result.images.fixed_height.url}}" alt="{{result.type}}"
                title="{{result.type}}" />
            <a class="btn btn-default" href="whatsapp://send?text={{result.images.downsized.url}}" data-action="{{result.images.downsized.url}}"><i class="fa fa-whatsapp"></i></a>
            <a class="btn btn-primary" target="_blank" href="{{result.images.downsized.url}}" data-download="{{result.slug}}"><i class="fa fa-download"></i></a>
        </div>
    </div>
</asp:Content>
