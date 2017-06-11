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
                        <select name="searchType" ng-model="selectedName.value" ng-change="getTrending(selectedName.value)" class="form-control"
                            ng-options="x for x in readEndPoints track by x">
	</select>{{selectedName.value}}
                    </div>



                    <!--search filters container-->
                    <div class="searchFiltersContainer" data-ng-show="selectedName.value == 'Search'">
                        <!-- input group for range option -->
                        <div class="input-group">
                            <label for="searchLimit">Select result count:</label>
                            <select name="searchLimit" ng-model="resultsLimit.value" ng-change="searchGiphyDB()" ng-if="resultsRange" ng-options="x for x in resultsRange track by x">				
	</select>

                            <!-- input group for range option -->
                            <div class="input-group">
                                <label for="selectSearchRating">Select result count:</label>
                                <select name="selectSearchRating" ng-model="selectRating.value" ng-change="searchGiphyDB()" ng-if="ratingOptions" ng-options="x for x in ratingOptions track by x">				
	</select>

                            </div>
                            <a class="btn btn-default" href="whatsapp://send?text=Hello%20World!">Hello, world!</a>
                            <!-- /input-group -->
                            <div class="input-group">
                                <asp:TextBox ID="inputGiphySearch" runat="server" class="form-control" ng-model="inputGiphySearch" required=required></asp:TextBox>
                                <span class="input-group-btn">  
                <asp:Button class="btn btn-success" runat="server" Text="Search Giphy" ng-click="searchGiphyDB()" OnClientClick="return false;" />
            </span>
                            </div>

                        </div>
                    </div>

                    <div class="row">

                        <div class="col-xs-6 col-sm-1" ng-if="results" data-ng-repeat="result in results" style="margin-bottom:20px;">
                            <img style="width: 100%; height: 100%; overflow: none; display:block;" src="{{result.images.downsized.url}}" alt="{{result.type}}"
                                title="{{result.type}}" />
                                <a class="btn btn-default" href="whatsapp://send?text={{result.images.downsized.url}}" data-action="{{result.images.downsized.url}}"><i class="fa fa-whatsapp"></i></a>
                        </div>




                    </div>

    </asp:Content>