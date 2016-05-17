<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/aspx/Views/Shared/Web.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
<div class="demo-section k-content">
      <ul id="fieldlist">
        <li>
            <label for="phone_number">Phone number:</label>
            <%= Html.Kendo().MaskedTextBox()
                  .Name("phone_number")
                  .Mask("(999) 000-0000")
                  .Value("555 123 4567")
            %>
        </li>
        <li>
            <label for="credit_card">Credit Card number:</label>
            <%= Html.Kendo().MaskedTextBox()
                  .Name("credit_card")
                  .Mask("0000 0000 0000 0000")
                  .Value("1234 1234 1234 1234")
            %>
        </li>
        <li>
            <label for="ssn">Social security number:</label>
            <%= Html.Kendo().MaskedTextBox()
                  .Name("ssn")
                  .Mask("000-00-0000")
                  .Value("003-12-3456")
            %>
        </li>
        <li>
            <label for="postcode">UK postcode:</label>
            <%= Html.Kendo().MaskedTextBox()
                  .Name("postcode")
                  .Mask("L0L 0LL")
                  .Value("W1N 1AC")
            %>
        </li>
    </ul>
</div>

<style>
    #fieldlist {
        margin: 0 0 -2em;
        padding: 0;
    }

    #fieldlist li {
        list-style: none;
        padding-bottom: 2em;
    }

    #fieldlist label {
        display: block;
        padding-bottom: 1em;
        font-weight: bold;
        text-transform: uppercase;
        font-size: 12px;
        color: #444;
    }

    #fieldlist input {
        width: 100%;
    }
</style>

</asp:Content>