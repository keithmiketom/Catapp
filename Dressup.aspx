<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Dressup.aspx.vb" Inherits="Dressup" %>



<div id="content" class="dressup">
    <div id="smoky">
    <asp:Image runat="server" ImageUrl="~/images/dressupsmokedcod3.png"></asp:Image>
    </div>
    <div id="images">
        

        <asp:Image runat="server" ImageUrl="~/images/dressupkermitdress.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressupblondbigwig.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressupblondbluewig.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressupblondbow.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressuppinkserpentboots.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressupyellowwig.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressupwingshades.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressupbettypage.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressupgummohat.gif"></asp:Image>
    </div>
</div>

<script>
    $("#images img").draggable();
</script>
