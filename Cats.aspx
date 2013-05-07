<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Cats.aspx.vb" Inherits="Cats" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title></title>
    <link href="Styles/Catscss.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">

<header id="menu">
    	<h2>The Cat App</h2>
        <nav>
		<ul>
        	<li><a href="cats.html" title="Cat info page">Cats</a></li>
            <li><a href="gallery.html" title="gallery page">Gallery</a></li>
            <li><a href="quiz.html" title="test your knowledge with our quiz">Quiz</a></li>
            <li><a href="#" title="dress up game ">Dress Up Game</a></li>
		</ul>
	</nav>
    </header>
    <div id="cats">
	<div id="content">
	<section class="main">
	<section class="tabs">
	            <input id="tab-1" type="radio" name="radio-set" class="tab-selector-1" checked="checked" />
		        <label for="tab-1" class="tab-label-1">Alice</label>
		
	            <input id="tab-2" type="radio" name="radio-set" class="tab-selector-2" />
		        <label for="tab-2" class="tab-label-2">Smoked Cod</label>
		
	            <input id="tab-3" type="radio" name="radio-set" class="tab-selector-3" />
		        <label for="tab-3" class="tab-label-3">Wigget </label>
			
	            <input id="tab-4" type="radio" name="radio-set" class="tab-selector-4" />
		        <label for="tab-4" class="tab-label-4">Dave Cat</label>
                
                 <input id="tab-5" type="radio" name="radio-set" class="tab-selector-5" />
		        <label for="tab-5" class="tab-label-5">Wispy Cat</label>
		
	            <input id="tab-6" type="radio" name="radio-set" class="tab-selector-6" />
		        <label for="tab-6" class="tab-label-6">Maurice</label>
		
	            <input id="tab-7" type="radio" name="radio-set" class="tab-selector-7" />
		        <label for="tab-7" class="tab-label-7">Sandra Cat</label>
			
	            <input id="tab-8" type="radio" name="radio-set" class="tab-selector-8" />
		        <label for="tab-8" class="tab-label-8">Mr Fluffy</label>

            
			    <div class="clear-shadow"></div>
				
		        <div class="content">
			        <div class="content-1">
<asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            DataFile="~/App_Data/CatDB.mdb" 
            SelectCommand="SELECT * FROM [Cats] WHERE [CatName] LIKE 'Alice'"></asp:AccessDataSource>

    <asp:ListView ID="ListView2" runat="server" DataKeyNames="CatID" 
        DataSourceID="AccessDataSource2" GroupItemCount="3">
        <AlternatingItemTemplate>
            <td id="Td1" runat="server" style="">
                <h2><asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' /></h2>
                <br />
                <asp:Image ID="pictureControlID" runat="server" ControlStyle-Width="220px"  ControlStyle-Height="320px" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                
                <ul class="defs">
                    <li>
                    Color:<asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' /></li>
                    
                    <li>
                    Age:<asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                    </li>

                    <li>
                    Meow:
                    </li>
                
                </ul>
               
                

            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td id="Td2" runat="server" style="">
              <asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' />
                <br />
                <asp:Image ID="pictureControlID" runat="server" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                <br />
                <asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' />
                <br />
                <asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table id="Table1" runat="server" style="">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td id="Td3" runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr ID="itemPlaceholderContainer" runat="server">
                <td ID="itemPlaceholder" runat="server">
                </td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td id="Td4" runat="server" style="">
                ProductName:
                <asp:TextBox ID="CatNameTextBox" runat="server" 
                    Text='<%# Bind("CatName") %>' />
                <br />Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />Price:
                <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                <br />Category:
                <asp:TextBox ID="ColorTextBox" runat="server" 
                    Text='<%# Bind("Color") %>' />
                <br />Image_url:
                <asp:TextBox ID="Image_urlTextBox" runat="server" 
                    Text='<%# Bind("Image_url") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
                <br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td id="Td5" runat="server" style="">
                <h2><asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' /></h2>
                <br />
                <asp:Image ID="pictureControlID" runat="server" ControlStyle-Width="220px"  ControlStyle-Height="320px" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                
                <ul class="defs">
                    <li>
                    Color:<asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' /></li>
                   
                    <li>
                    Age:<asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                    </li>

                    <li>
                    Meow:
                    </li>
                
                </ul>
                
                
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table id="Table2" runat="server">
                <tr id="Tr1" runat="server">
                    <td id="Td6" runat="server">
                        <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr ID="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="Tr2" runat="server">
                    <td id="Td7" runat="server" style="">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td id="Td8" runat="server" style="">
                ProductID:
                <asp:Label ID="CatIDLabel" runat="server" Text='<%# Eval("CatID") %>' />
                <br />CatName:
                <asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' />
                <br />Description:
                <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Eval("Description") %>' />
                <br />Price:
                <asp:Label ID="AgeLabel" runat="server" Text='<%# Bind("Age") %>' />
                <br />Category:
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                <br />Image_url:
                <asp:Label ID="Image_urlLabel" runat="server" Text='<%# Eval("Image_url") %>' />
                <br />
              
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
                        <h3>Description</h3>
						<p>Like you, I used to think the world was this great place where everybody lived by the same standards I did, then some kid with a nail showed me I was living in his world, a world where chaos rules not order, a world where righteousness is not rewarded. That's Cesar's world, and if you're not willing to play by his rules, then you're gonna have to pay the price. </p>
                     
				    </div>
			        <div class="content-2">
            <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
            DataFile="~/App_Data/CatDB.mdb" 
            SelectCommand="SELECT * FROM [Cats] WHERE [CatName] LIKE 'Smoked Cod'"></asp:AccessDataSource>

    <asp:ListView ID="ListView3" runat="server" DataKeyNames="CatID" 
        DataSourceID="AccessDataSource3" GroupItemCount="3">
        <AlternatingItemTemplate>
            <td id="Td1" runat="server" style="">
                <h2><asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' /></h2>
                <br />
                <asp:Image ID="pictureControlID" runat="server" ControlStyle-Width="220px"  ControlStyle-Height="220px" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
               
                <ul class="defs">
                    <li>
                    Color:<asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' /></li>
                    
                    <li>
                    Age:<asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                    
                    </li>
                
                </ul>
               
                

            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td id="Td2" runat="server" style="">
              <asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' />
                <br />
                <asp:Image ID="pictureControlID" runat="server" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                <br />
                <asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' />
                <br />
                <asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table id="Table1" runat="server" style="">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td id="Td3" runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr ID="itemPlaceholderContainer" runat="server">
                <td ID="itemPlaceholder" runat="server">
                </td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td id="Td4" runat="server" style="">
                ProductName:
                <asp:TextBox ID="CatNameTextBox" runat="server" 
                    Text='<%# Bind("CatName") %>' />
                <br />Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />Price:
                <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                <br />Category:
                <asp:TextBox ID="ColorTextBox" runat="server" 
                    Text='<%# Bind("Color") %>' />
                <br />Image_url:
                <asp:TextBox ID="Image_urlTextBox" runat="server" 
                    Text='<%# Bind("Image_url") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
                <br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td id="Td5" runat="server" style="">
                <h2><asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' /></h2>
                <br />
                <asp:Image ID="pictureControlID" runat="server" ControlStyle-Width="220px"  ControlStyle-Height="240px" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                
                <ul class="defs">
                    <li>
                    Color:<asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' /></li>
                    
                    <li>
                    Age:<asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                   
                    </li>
                
                </ul>
                
                
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table id="Table2" runat="server">
                <tr id="Tr1" runat="server">
                    <td id="Td6" runat="server">
                        <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr ID="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="Tr2" runat="server">
                    <td id="Td7" runat="server" style="">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td id="Td8" runat="server" style="">
                ProductID:
                <asp:Label ID="CatIDLabel" runat="server" Text='<%# Eval("CatID") %>' />
                <br />CatName:
                <asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' />
                <br />Description:
                <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Eval("Description") %>' />
                <br />Price:
                <asp:Label ID="AgeLabel" runat="server" Text='<%# Bind("Age") %>' />
                <br />Category:
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                <br />Image_url:
                <asp:Label ID="Image_urlLabel" runat="server" Text='<%# Eval("Image_url") %>' />
                <br />
              
            </td>
        </SelectedItemTemplate>
    </asp:ListView>

                   
                        <h3>Description</h3>
						<p>Like you, I used to think the world was this great place where everybody lived by the same standards I did, then some kid with a nail showed me I was living in his world, a world where chaos rules not order, a world where righteousness is not rewarded. That's Cesar's world, and if you're not willing to play by his rules, then you're gonna have to pay the price. </p>
				    </div>
			        <div class="content-3">
						<asp:AccessDataSource ID="AccessDataSource4" runat="server" 
            DataFile="~/App_Data/CatDB.mdb" 
            SelectCommand="SELECT * FROM [Cats] WHERE [CatName] LIKE 'Wigget'"></asp:AccessDataSource>

    <asp:ListView ID="ListView4" runat="server" DataKeyNames="CatID" 
        DataSourceID="AccessDataSource4" GroupItemCount="3">
        <AlternatingItemTemplate>
            <td id="Td1" runat="server" style="">
                <h2><asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' /></h2>
                <br />
                <asp:Image ID="pictureControlID" runat="server" ControlStyle-Width="200px"  ControlStyle-Height="250px" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                
                <ul class="defs">
                    <li>
                    Color:<asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' /></li>
                    
                    <li>
                    Age:<asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                    
                    </li>
                
                </ul>
               
                

            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td id="Td2" runat="server" style="">
              <asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' />
                <br />
                <asp:Image ID="pictureControlID" runat="server" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                <br />
                <asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' />
                <br />
                <asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table id="Table1" runat="server" style="">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td id="Td3" runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr ID="itemPlaceholderContainer" runat="server">
                <td ID="itemPlaceholder" runat="server">
                </td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td id="Td4" runat="server" style="">
                ProductName:
                <asp:TextBox ID="CatNameTextBox" runat="server" 
                    Text='<%# Bind("CatName") %>' />
                <br />Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />Price:
                <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                <br />Category:
                <asp:TextBox ID="ColorTextBox" runat="server" 
                    Text='<%# Bind("Color") %>' />
                <br />Image_url:
                <asp:TextBox ID="Image_urlTextBox" runat="server" 
                    Text='<%# Bind("Image_url") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
                <br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td id="Td5" runat="server" style="">
                <h2><asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' /></h2>
                <br />
                <asp:Image ID="pictureControlID" runat="server" ControlStyle-Width="200px"  ControlStyle-Height="250px" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                
                <ul class="defs">
                    <li>
                    Color:<asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' /></li>
                   
                    <li>
                    Age:<asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                    
                    </li>
                
                </ul>
                
                
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table id="Table2" runat="server">
                <tr id="Tr1" runat="server">
                    <td id="Td6" runat="server">
                        <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr ID="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="Tr2" runat="server">
                    <td id="Td7" runat="server" style="">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td id="Td8" runat="server" style="">
                ProductID:
                <asp:Label ID="CatIDLabel" runat="server" Text='<%# Eval("CatID") %>' />
                <br />CatName:
                <asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' />
                <br />Description:
                <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Eval("Description") %>' />
                <br />Price:
                <asp:Label ID="AgeLabel" runat="server" Text='<%# Bind("Age") %>' />
                <br />Category:
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                <br />Image_url:
                <asp:Label ID="Image_urlLabel" runat="server" Text='<%# Eval("Image_url") %>' />
                <br />
              
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
                        <h3>Description</h3>
						<p>Like you, I used to think the world was this great place where everybody lived by the same standards I did, then some kid with a nail showed me I was living in his world, a world where chaos rules not order, a world where righteousness is not rewarded. That's Cesar's world, and if you're not willing to play by his rules, then you're gonna have to pay the price. </p>
				    </div>
				    <div class="content-4">
						<asp:AccessDataSource ID="AccessDataSource5" runat="server" 
            DataFile="~/App_Data/CatDB.mdb" 
            SelectCommand="SELECT * FROM [Cats] WHERE [CatName] LIKE 'Dave'"></asp:AccessDataSource>

    <asp:ListView ID="ListView5" runat="server" DataKeyNames="CatID" 
        DataSourceID="AccessDataSource5" GroupItemCount="3">
        <AlternatingItemTemplate>
            <td id="Td1" runat="server" style="">
                <h2><asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' /></h2>
                <br />
                <asp:Image ID="pictureControlID" runat="server" ControlStyle-Width="230px"  ControlStyle-Height="240px" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                
                <ul class="defs">
                    <li>
                    Color:<asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' /></li>
                    
                    <li>
                    Age:<asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                    
                    </li>
                
                </ul>
               
                

            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td id="Td2" runat="server" style="">
              <asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' />
                <br />
                <asp:Image ID="pictureControlID" runat="server" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                <br />
                <asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' />
                <br />
                <asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table id="Table1" runat="server" style="">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td id="Td3" runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr ID="itemPlaceholderContainer" runat="server">
                <td ID="itemPlaceholder" runat="server">
                </td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td id="Td4" runat="server" style="">
                ProductName:
                <asp:TextBox ID="CatNameTextBox" runat="server" 
                    Text='<%# Bind("CatName") %>' />
                <br />Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />Price:
                <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                <br />Category:
                <asp:TextBox ID="ColorTextBox" runat="server" 
                    Text='<%# Bind("Color") %>' />
                <br />Image_url:
                <asp:TextBox ID="Image_urlTextBox" runat="server" 
                    Text='<%# Bind("Image_url") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
                <br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td id="Td5" runat="server" style="">
                <h2><asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' /></h2>
                <br />
                <asp:Image ID="pictureControlID" runat="server" ControlStyle-Width="230px"  ControlStyle-Height="240px" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                
                <ul class="defs">
                    <li>
                    Color:<asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' /></li>
                   
                    <li>
                    Age:<asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                    
                    </li>
                
                </ul>
                
                
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table id="Table2" runat="server">
                <tr id="Tr1" runat="server">
                    <td id="Td6" runat="server">
                        <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr ID="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="Tr2" runat="server">
                    <td id="Td7" runat="server" style="">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td id="Td8" runat="server" style="">
                ProductID:
                <asp:Label ID="CatIDLabel" runat="server" Text='<%# Eval("CatID") %>' />
                <br />CatName:
                <asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' />
                <br />Description:
                <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Eval("Description") %>' />
                <br />Price:
                <asp:Label ID="AgeLabel" runat="server" Text='<%# Bind("Age") %>' />
                <br />Category:
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                <br />Image_url:
                <asp:Label ID="Image_urlLabel" runat="server" Text='<%# Eval("Image_url") %>' />
                <br />
              
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
                        <h3>Description</h3>
						<p>Like you, I used to think the world was this great place where everybody lived by the same standards I did, then some kid with a nail showed me I was living in his world, a world where chaos rules not order, a world where righteousness is not rewarded. That's Cesar's world, and if you're not willing to play by his rules, then you're gonna have to pay the price. </p>
				    </div>
                    <div class="content-5">
						<asp:AccessDataSource ID="AccessDataSource6" runat="server" 
            DataFile="~/App_Data/CatDB.mdb" 
            SelectCommand="SELECT * FROM [Cats] WHERE [CatName] LIKE 'Wispy'"></asp:AccessDataSource>

    <asp:ListView ID="ListView6" runat="server" DataKeyNames="CatID" 
        DataSourceID="AccessDataSource6" GroupItemCount="3">
        <AlternatingItemTemplate>
            <td id="Td1" runat="server" style="">
                <h2><asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' /></h2>
                <br />
                <asp:Image ID="pictureControlID" runat="server" ControlStyle-Width="190px"  ControlStyle-Height="280px" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                
                <ul class="defs">
                    <li>
                    Color:<asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' /></li>
                    
                    <li>
                    Age:<asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                    
                    </li>
                
                </ul>
               
                

            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td id="Td2" runat="server" style="">
              <asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' />
                <br />
                <asp:Image ID="pictureControlID" runat="server" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                <br />
                <asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' />
                <br />
                <asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table id="Table1" runat="server" style="">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td id="Td3" runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr ID="itemPlaceholderContainer" runat="server">
                <td ID="itemPlaceholder" runat="server">
                </td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td id="Td4" runat="server" style="">
                ProductName:
                <asp:TextBox ID="CatNameTextBox" runat="server" 
                    Text='<%# Bind("CatName") %>' />
                <br />Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />Price:
                <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                <br />Category:
                <asp:TextBox ID="ColorTextBox" runat="server" 
                    Text='<%# Bind("Color") %>' />
                <br />Image_url:
                <asp:TextBox ID="Image_urlTextBox" runat="server" 
                    Text='<%# Bind("Image_url") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
                <br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td id="Td5" runat="server" style="">
                <h2><asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' /></h2>
                <br />
                <asp:Image ID="pictureControlID" runat="server" ControlStyle-Width="190px"  ControlStyle-Height="280px" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                
                <ul class="defs">
                    <li>
                    Color:<asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' /></li>
                   
                    <li>
                    Age:<asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                    
                    </li>
                
                </ul>
                
                
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table id="Table2" runat="server">
                <tr id="Tr1" runat="server">
                    <td id="Td6" runat="server">
                        <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr ID="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="Tr2" runat="server">
                    <td id="Td7" runat="server" style="">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td id="Td8" runat="server" style="">
                ProductID:
                <asp:Label ID="CatIDLabel" runat="server" Text='<%# Eval("CatID") %>' />
                <br />CatName:
                <asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' />
                <br />Description:
                <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Eval("Description") %>' />
                <br />Price:
                <asp:Label ID="AgeLabel" runat="server" Text='<%# Bind("Age") %>' />
                <br />Category:
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                <br />Image_url:
                <asp:Label ID="Image_urlLabel" runat="server" Text='<%# Eval("Image_url") %>' />
                <br />
              
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
                        <h3>Description</h3>
						<p>Like you, I used to think the world was this great place where everybody lived by the same standards I did, then some kid with a nail showed me I was living in his world, a world where chaos rules not order, a world where righteousness is not rewarded. That's Cesar's world, and if you're not willing to play by his rules, then you're gonna have to pay the price. </p>
				    </div>
                    <div class="content-6">
						<asp:AccessDataSource ID="AccessDataSource7" runat="server" 
            DataFile="~/App_Data/CatDB.mdb" 
            SelectCommand="SELECT * FROM [Cats] WHERE [CatName] LIKE 'Maurice'"></asp:AccessDataSource>

    <asp:ListView ID="ListView7" runat="server" DataKeyNames="CatID" 
        DataSourceID="AccessDataSource7" GroupItemCount="3">
        <AlternatingItemTemplate>
            <td id="Td1" runat="server" style="">
                <h2><asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' /></h2>
                <br />
                <asp:Image ID="pictureControlID" runat="server" ControlStyle-Width="220px"  ControlStyle-Height="250px" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                
                <ul class="defs">
                    <li>
                    Color:<asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' /></li>
                    
                    <li>
                    Age:<asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                    
                    </li>
                
                </ul>
               
                

            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td id="Td2" runat="server" style="">
              <asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' />
                <br />
                <asp:Image ID="pictureControlID" runat="server" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                <br />
                <asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' />
                <br />
                <asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table id="Table1" runat="server" style="">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td id="Td3" runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr ID="itemPlaceholderContainer" runat="server">
                <td ID="itemPlaceholder" runat="server">
                </td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td id="Td4" runat="server" style="">
                ProductName:
                <asp:TextBox ID="CatNameTextBox" runat="server" 
                    Text='<%# Bind("CatName") %>' />
                <br />Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />Price:
                <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                <br />Category:
                <asp:TextBox ID="ColorTextBox" runat="server" 
                    Text='<%# Bind("Color") %>' />
                <br />Image_url:
                <asp:TextBox ID="Image_urlTextBox" runat="server" 
                    Text='<%# Bind("Image_url") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
                <br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td id="Td5" runat="server" style="">
                <h2><asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' /></h2>
                <br />
                <asp:Image ID="pictureControlID" runat="server" ControlStyle-Width="220px"  ControlStyle-Height="230px" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                
                <ul class="defs">
                    <li>
                    Color:<asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' /></li>
                   
                    <li>
                    Age:<asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                    
                    </li>
                
                </ul>
                
                
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table id="Table2" runat="server">
                <tr id="Tr1" runat="server">
                    <td id="Td6" runat="server">
                        <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr ID="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="Tr2" runat="server">
                    <td id="Td7" runat="server" style="">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td id="Td8" runat="server" style="">
                ProductID:
                <asp:Label ID="CatIDLabel" runat="server" Text='<%# Eval("CatID") %>' />
                <br />CatName:
                <asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' />
                <br />Description:
                <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Eval("Description") %>' />
                <br />Price:
                <asp:Label ID="AgeLabel" runat="server" Text='<%# Bind("Age") %>' />
                <br />Category:
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                <br />Image_url:
                <asp:Label ID="Image_urlLabel" runat="server" Text='<%# Eval("Image_url") %>' />
                <br />
              
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
                        <h3>Description</h3>
						<p>Like you, I used to think the world was this great place where everybody lived by the same standards I did, then some kid with a nail showed me I was living in his world, a world where chaos rules not order, a world where righteousness is not rewarded. That's Cesar's world, and if you're not willing to play by his rules, then you're gonna have to pay the price. </p>
				    </div>
                    <div class="content-7">
						<asp:AccessDataSource ID="AccessDataSource8" runat="server" 
            DataFile="~/App_Data/CatDB.mdb" 
            SelectCommand="SELECT * FROM [Cats] WHERE [CatName] LIKE 'Sandra'"></asp:AccessDataSource>

    <asp:ListView ID="ListView8" runat="server" DataKeyNames="CatID" 
        DataSourceID="AccessDataSource8" GroupItemCount="3">
        <AlternatingItemTemplate>
            <td id="Td1" runat="server" style="">
                <h2><asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' /></h2>
                <br />
                <asp:Image ID="pictureControlID" runat="server" ControlStyle-Width="220px"  ControlStyle-Height="240px" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                
                <ul class="defs">
                    <li>
                    Color:<asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' /></li>
                    
                    <li>
                    Age:<asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                    
                    </li>
                
                </ul>
               
                

            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td id="Td2" runat="server" style="">
              <asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' />
                <br />
                <asp:Image ID="pictureControlID" runat="server" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                <br />
                <asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' />
                <br />
                <asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table id="Table1" runat="server" style="">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td id="Td3" runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr ID="itemPlaceholderContainer" runat="server">
                <td ID="itemPlaceholder" runat="server">
                </td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td id="Td4" runat="server" style="">
                ProductName:
                <asp:TextBox ID="CatNameTextBox" runat="server" 
                    Text='<%# Bind("CatName") %>' />
                <br />Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />Price:
                <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                <br />Category:
                <asp:TextBox ID="ColorTextBox" runat="server" 
                    Text='<%# Bind("Color") %>' />
                <br />Image_url:
                <asp:TextBox ID="Image_urlTextBox" runat="server" 
                    Text='<%# Bind("Image_url") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
                <br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td id="Td5" runat="server" style="">
                <h2><asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' /></h2>
                <br />
                <asp:Image ID="pictureControlID" runat="server" ControlStyle-Width="220px"  ControlStyle-Height="240px" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                
                <ul class="defs">
                    <li>
                    Color:<asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' /></li>
                   
                    <li>
                    Age:<asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                    
                    </li>
                
                </ul>
                
                
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table id="Table2" runat="server">
                <tr id="Tr1" runat="server">
                    <td id="Td6" runat="server">
                        <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr ID="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="Tr2" runat="server">
                    <td id="Td7" runat="server" style="">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td id="Td8" runat="server" style="">
                ProductID:
                <asp:Label ID="CatIDLabel" runat="server" Text='<%# Eval("CatID") %>' />
                <br />CatName:
                <asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' />
                <br />Description:
                <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Eval("Description") %>' />
                <br />Price:
                <asp:Label ID="AgeLabel" runat="server" Text='<%# Bind("Age") %>' />
                <br />Category:
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                <br />Image_url:
                <asp:Label ID="Image_urlLabel" runat="server" Text='<%# Eval("Image_url") %>' />
                <br />
              
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
                        <h3>Description</h3>
						<p>Like you, I used to think the world was this great place where everybody lived by the same standards I did, then some kid with a nail showed me I was living in his world, a world where chaos rules not order, a world where righteousness is not rewarded. That's Cesar's world, and if you're not willing to play by his rules, then you're gonna have to pay the price. </p>
				    </div>
                    <div class="content-8">
						<asp:AccessDataSource ID="AccessDataSource9" runat="server" 
            DataFile="~/App_Data/CatDB.mdb" 
            SelectCommand="SELECT * FROM [Cats] WHERE [CatName] LIKE 'Mr Fluffy'"></asp:AccessDataSource>

    <asp:ListView ID="ListView9" runat="server" DataKeyNames="CatID" 
        DataSourceID="AccessDataSource9" GroupItemCount="3">
        <AlternatingItemTemplate>
            <td id="Td1" runat="server" style="">
                <h2><asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' /></h2>
                <br />
                <asp:Image ID="pictureControlID" runat="server" ControlStyle-Width="180px"  ControlStyle-Height="250px" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                
                <ul class="defs">
                    <li>
                    Color:<asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' /></li>
                    
                    <li>
                    Age:<asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                    
                    </li>
                
                </ul>
               
                

            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td id="Td2" runat="server" style="">
              <asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' />
                <br />
                <asp:Image ID="pictureControlID" runat="server" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                <br />
                <asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' />
                <br />
                <asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                    Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Cancel" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table id="Table1" runat="server" style="">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
<td id="Td3" runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr ID="itemPlaceholderContainer" runat="server">
                <td ID="itemPlaceholder" runat="server">
                </td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td id="Td4" runat="server" style="">
                ProductName:
                <asp:TextBox ID="CatNameTextBox" runat="server" 
                    Text='<%# Bind("CatName") %>' />
                <br />Description:
                <asp:TextBox ID="DescriptionTextBox" runat="server" 
                    Text='<%# Bind("Description") %>' />
                <br />Price:
                <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                <br />Category:
                <asp:TextBox ID="ColorTextBox" runat="server" 
                    Text='<%# Bind("Color") %>' />
                <br />Image_url:
                <asp:TextBox ID="Image_urlTextBox" runat="server" 
                    Text='<%# Bind("Image_url") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                    Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                    Text="Clear" />
                <br />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td id="Td5" runat="server" style="">
                <h2><asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' /></h2>
                <br />
                <asp:Image ID="pictureControlID" runat="server" ControlStyle-Width="180px"  ControlStyle-Height="250px" AlternateText='<% #Eval("Image_url") %>'
        ImageUrl='<%# "~/images/" + Eval("Image_url") %>' />
                
                <ul class="defs">
                    <li>
                    Color:<asp:Label ID="ColorLabel" runat="server" 
                    Text='<%# Eval("Color") %>' /></li>
                   
                    <li>
                    Age:<asp:Label ID="AgeLabel" runat="server" 
                    Text='<%# Eval("Age") %>' />
                    
                    </li>
                
                </ul>
                
                
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table id="Table2" runat="server">
                <tr id="Tr1" runat="server">
                    <td id="Td6" runat="server">
                        <table ID="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr ID="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr id="Tr2" runat="server">
                    <td id="Td7" runat="server" style="">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td id="Td8" runat="server" style="">
                ProductID:
                <asp:Label ID="CatIDLabel" runat="server" Text='<%# Eval("CatID") %>' />
                <br />CatName:
                <asp:Label ID="CatNameLabel" runat="server" 
                    Text='<%# Eval("CatName") %>' />
                <br />Description:
                <asp:Label ID="DescriptionLabel" runat="server" 
                    Text='<%# Eval("Description") %>' />
                <br />Price:
                <asp:Label ID="AgeLabel" runat="server" Text='<%# Bind("Age") %>' />
                <br />Category:
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                <br />Image_url:
                <asp:Label ID="Image_urlLabel" runat="server" Text='<%# Eval("Image_url") %>' />
                <br />
              
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
                        <h3>Description</h3>
						<p>Like you, I used to think the world was this great place where everybody lived by the same standards I did, then some kid with a nail showed me I was living in his world, a world where chaos rules not order, a world where righteousness is not rewarded. That's Cesar's world, and if you're not willing to play by his rules, then you're gonna have to pay the price. </p>
				    </div>
		        </div>
			</section>
            </section>
           </div><!--end of content--></div>
           <script src="Scripts/ajax.js" type="text/javascript"></script>
           
            
<footer>
cats
</footer>
    </form>
</body>
</html>