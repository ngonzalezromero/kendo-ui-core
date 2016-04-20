﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/aspx/Views/Shared/Web.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">

<%= Html.Kendo().Notification()
    .Name("notification")
    .Width("12em")
    .Events(ev => ev.Show("onShow").Hide("onHide"))
    .Templates(t =>
    {
        t.Add().Type("time").ClientTemplate("<div style='padding: .6em 1em'>Time is: <span class='timeWrap'>#: time #</span></div>");
    })
%>

 <div class="demo-section k-content" style="text-align: center;">
    <p>
        <button id="showNotification" class="k-button k-primary">Show</button> &nbsp; &nbsp;

        <button id="hideAllNotifications" class="k-button">Hide All</button>
    </p>
</div>
 
 <div class="box">                
    <h4>Console log</h4>
    <div class="console"></div>
</div>
           
<script>

    function onShow(e) {
        kendoConsole.log("event :: show (" + $(e.element).find(".timeWrap").text() + ")");
    }

    function onHide(e) {
        kendoConsole.log("event :: hide (" + $(e.element).find(".timeWrap").text() + ")");
    }

    $(document).ready(function () {

        var notification = $("#notification").data("kendoNotification");

        $("#showNotification").click(function () {
            var d = new Date();
            notification.show({ time: kendo.toString(d, 'HH:MM:ss.') + kendo.toString(d.getMilliseconds(), "000") }, "time");
        });

        $("#hideAllNotifications").click(function () {
            notification.hide();
        });
    });
</script>

</asp:Content>