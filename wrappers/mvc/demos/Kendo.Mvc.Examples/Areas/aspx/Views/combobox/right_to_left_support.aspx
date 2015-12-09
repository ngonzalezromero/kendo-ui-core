<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/aspx/Views/Shared/Web.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
<div class="demo-section k-content"> 
    <div class="k-rtl">
        <h4>RTL ComboBox</h4>
        <%= Html.Kendo().ComboBox()
                .Name("combobox")
                .DataTextField("Text")
                .DataValueField("Value")
                .HtmlAttributes(new { style = "width:100%;" })
                .BindTo(new List<SelectListItem>()
                {
                    new SelectListItem() {
                        Text = "Item 1", Value = "1"  
                    },
                    new SelectListItem() {
                        Text = "Item 2", Value = "2"  
                    },
                    new SelectListItem() {
                        Text = "Item 3", Value = "3"  
                    }
                })
        %>
    </div>
</div>
</asp:Content>