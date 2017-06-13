<%@ Control Language="C#" AutoEventWireup="true" CodeFile="GiphySearchFilterControl.ascx.cs" Inherits="GiphySearchFilterControl" %>

<div class="row">

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#giphy-search-filter" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="fa fa-filter"></span>
                </button>
                <div>
                    <div class="input-group">
                        <%--<label for="searchType">Endpoint:</label>--%>
                        <select name="searchType" 
                            data-ng-model="selectedEndpoint.value" 
                            data-ng-change="searchGiphyDB()" 
                            class="form-control selectEndPoint"
                            data-ng-options="x for x in endPoints track by x">
                        </select>
                    </div>
                </div>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse giphy-filter-container" id="giphy-search-filter">
                <ul class="nav navbar-nav filter-container">
                    <li>
                        <!--  filters container-->
                        {{selectRating.value}}
                <!-- input group for range option -->
                        <div class="input-group">
                            <label for="searchLimit">count:</label>
                            <select 
                                name="searchLimit" 
                                class="selectSearchLimit"
                                data-ng-model="resultsLimit.value" data-ng-change="searchGiphyDB()" data-ng-if="resultsRange" data-ng-options="x for x in resultsRange track by x">
                            </select>
                        </div>

                    </li>
                    <li>

                        <!-- input group for range option -->
                        <div class="input-group">
                            <label for="selectSearchRating">Rating:</label>
                            <select name="selectSearchRating"
                                class="selectSearchRating"
                                data-ng-model="selectedRating.value"
                                data-ng-change="searchGiphyDB()"
                                data-ng-if="ratingOptions"
                                data-ng-options="x for (x,y) in ratingOptions track by y">
                            </select>
                        </div>

                    </li>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>



    <div class="col-xs-12">

        <div class="searchFiltersContainer" data-ng-show="selectedEndpoint.value == 'Search'">
            <!-- /input-group -->
            <div class="input-group">
                <asp:TextBox
                    ID="TextBox1"
                    runat="server"
                    class="form-control"
                    data-ng-model="inputGiphySearch"
                    required="required"
                    placeholder="Search for..."></asp:TextBox>
                <span class="input-group-btn">
                    <button class="btn btn-success" runat="server" data-ng-click="searchGiphyDB()" onclientclick="return false;">
                        <i class="fa fa-search"></i>
                    </button>
                </span>
            </div>
        </div>
    </div>


</div>
