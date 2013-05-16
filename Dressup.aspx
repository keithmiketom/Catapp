<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Dressup.aspx.vb" Inherits="Dressup" %>



<div id="content" class="dressup">

    <h2>Dress up Smoked Cod!</h2>

    <div id="smoky">
    <asp:Image runat="server" ImageUrl="~/images/dressup/smokedcod4.png"></asp:Image>
    </div>
    <div id="images">
        

        
        <asp:Image runat="server" ImageUrl="~/images/dressup/blondbigwig.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressup/blondbluewig.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressup/blondbow.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressup/valentineantenna.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressup/wingshades.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressup/yellowwig.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressup/bettypage.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressup/pippihair.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressup/schoolgirlhair.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressup/valentinesash.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressup/kermitdress.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressup/gummohat.png"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressup/hermeshelmet.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressup/joplinhair.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressup/martianhead.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressup/mm.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressup/valentinetop.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressup/blackdress.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressup/monroedress.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressup/neptunepitchfork.gif"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressup/marl2.gif" Width="220px" Height="100px"></asp:Image>
        <asp:Image runat="server" ImageUrl="~/images/dressup/batteredcod.png" Width="120px" Height="80px"></asp:Image>
        
        
        
    </div>
</div>

<script>
    $("#images img").draggable();
</script>
