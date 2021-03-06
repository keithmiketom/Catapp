﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Cats.aspx.vb" Inherits="Cats" %>

<div id="content"><div id="cats">
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

                    <li id="nav-one"><span><a href="#">Alice's Meow</a></span>
		   	        <audio id="beep-one"  preload="auto">
				<source src="audio/catmeow.wav"></source>
				<source src="audio/beep.ogg"></source>
				
			</audio>
				
			</audio>
            <script>			           
             var beepOne = $("#beep-one")[0];
             $("#nav-one a").mouseenter(function () {
                        beepOne.play();
	                });</script>
                   
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
						<p>Alice is the innocent one, her pure soul has not yet been corrupted by the others. Alice has hazel eyes and enjoys lobster sushi.</p>
                     
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
                    <li id="nav-two"><span><a href="#">Smoked Cod's Meow</a></span>
		   	        <audio id="beep-two"  preload="auto">
				<source src="audio/catmeowfat.wav"></source>
				<source src="audio/beep.ogg"></source>
				
			</audio>
				
			</audio>
            <script>
                var beepTwo = $("#beep-two")[0];
                $("#nav-two a").mouseenter(function () {
                    beepTwo.play();
                });</script></li>
                
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
						<p>A disgusting cat whose only friend is Maurice. He conceals a rotting smoked cod between his folds which lends him a distinctive odor. Also operates under the pseudonym Paulo Fischoder. </p>
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
                <li id="nav-three"><span><a href="#">Wigget's Meow</a></span>
		   	        <audio id="beep-three"  preload="auto">
				<source src="audio/cat_meow_x.wav"></source>
				<source src="audio/beep.ogg"></source>
				
			</audio>
				
			</audio>
            <script>
                var beepThree = $("#beep-three")[0];
                $("#nav-three a").mouseenter(function () {
                    beepThree.play();
                });</script></li>
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
						<p>Wigget Sans-Shereef. Notorious for his mispronounciation of words such as widget, ajax and sans serif - words he read in a book once, somewhere. He continues to teach web development despite the fact that his bachelors is in Agricultural Science. Claims to suffer from chronic back pain from an obsessive amount of texting and playing candy crush saga and checking hope ur ok hun xxx, which he does not get, however this is merely a cover for his unwillingness to teach.</p>
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
                    <li id="nav-four"><span><a href="#">Dave Cat's Meow</a></span>
		   	        <audio id="beep-four"  preload="auto">
				<source src="audio/soft.mp3"></source>
				<source src="audio/beep.ogg"></source>
				
			</audio>
				
			</audio>
            <script>
                var beepFour = $("#beep-four")[0];
                $("#nav-four a").mouseenter(function () {
                    beepFour.play();
                });</script></li>
                
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
						<p>A lovely ginger cat. </p>
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
                    <li id="nav-five"><span><a href="#">Wispy's Meow</a></span>
		   	        <audio id="beep-five"  preload="auto">
				<source src="audio/softy.mp3"></source>
				<source src="audio/beep.ogg"></source>
				
			</audio>
				
			</audio>
            <script>
                var beepFive = $("#beep-five")[0];
                $("#nav-five a").mouseenter(function () {
                    beepFive.play();
                });</script></li>
                
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
						<p>A tall, balding cat who enjoys making formal complaints about the others. Wispy is the oldest cat. He attempts to hide his wispyness beneath a flamboyant toupee. He wisps through life like a summer breeze. </p>
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
                     <li id="nav-six"><span><a href="#">Wooly Maurice's Meow</a></span>
		   	        <audio id="beep-six"  preload="auto">
				<source src="audio/cat1.wav"></source>
				<source src="audio/beep.ogg"></source>
				
			</audio>
				
			</audio>
            <script>
                var beepSix = $("#beep-six")[0];
                $("#nav-six a").mouseenter(function () {
                    beepSix.play();
                });</script></li>
                
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
						<p>Maurice has an idea for a new e-commerce web application. What is it about, Maurice? "Wool." So... a clothing store? Argyle sweaters? "No, Just wool" Maurice replies as he plonks himself down, sitting on top of your hand. He leans in closer and you can smell a ploughmans sandwich on his breath. He grips his reusable Aldi bag tighter and wheezes. "Just wool." </p>
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
                    <li id="nav-seven"><span><a href="#">Sandra Cat's Meow</a></span>
		   	        <audio id="beep-seven"  preload="auto">
				<source src="audio/softy.mp3"></source>
				<source src="audio/beep.ogg"></source>
				
			</audio>
				
			
            <script>
                var beepSeven = $("#beep-seven")[0];
                $("#nav-seven a").mouseenter(function () {
                    beepSeven.play();
                });</script></li>
                
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
						<p>Sandra is the most beautiful of all the cats. She has a penchant for married men, ensnaring them with her dark beauty and stealing their souls. Sandra's piercing blue eyes hypnotize her target. Her lifestyle has been compared to the 1995 science-fiction movie Species. She relishes in misbedaving!</p>
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
                    <li id="nav-eight"><span><a href="#">Mr Fluffy's Meow</a></span>
		   	        <audio id="beep-eight"  preload="auto">
				<source src="audio/catmeow.wav"></source>
				<source src="audio/beep.ogg"></source>
				
			
				
			</audio>
            <script>
                var beepEight = $("#beep-eight")[0];
                $("#nav-eight a").mouseenter(function () {
                    beepEight.play();
                });</script></li>
                
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
						<p>Fluffy est un chat francais.  Il est le plus choux de tout les chats.  Il n'est pas homme il est tout simplement europeen! Il aime des bebe guinness.  Il n'aime pas les chats stupides mais ce ne le fache pas parceque Fluffy est un chat tres calme aussi.  C'est un descendant des roix chats de versailles</p>
				    </div>
		        </div>
			</section>
            </section>
            <script>
                alertify.success("Cat Trivia");
</script>
         