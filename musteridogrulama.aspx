<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="musteridogrulama.aspx.cs" Inherits="BElectronicShop.musteridogrulama" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="mainBody">
	   <div class="container">
					
					<asp:Label ID="Label2" runat="server" Text="Mail adresiniz"></asp:Label><br />
					<asp:TextBox ID="TextBox1" runat="server" ValidationGroup="dogrulakod"></asp:TextBox><br />
					
					<asp:Label ID="Label1" runat="server" Text="Doğrulama kodunuz"></asp:Label><br />
					<asp:TextBox ID="TextBox2" runat="server" ValidationGroup="dogrulakod"></asp:TextBox><br />

					<asp:Button ID="Button1" runat="server" Text="Doğrula" class="btn btn-large btn-secondary" ValidationGroup="dogrulakod" OnClick="Button1_Click"/><br />
		   </div>
		</div>
				
</asp:Content>
