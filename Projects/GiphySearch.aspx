﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="GiphySearch.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    Giphy Search Page
    <div class="row">
        
        <div class="col-xs-12 col-sm-4 col-md-2" data-ng-repeat="result in results" style="border:1px solid;">
            <img style="width:100%; height:auto;overflow:hidden;display:inline-block;" src="{{result.images.downsized.url}}" alt="{{result.type}}" title="{{result.type}}" />
        </div>         

        
    </div>

</asp:Content>

