<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="musterikayit.aspx.cs" Inherits="BElectronicShop.musterikayit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	

	<div id="mainBody">
	   <div class="container">

    <div class="span9">
    <ul class="breadcrumb">
		<li><a href="default.aspx">Anasayfa</a> <span class="divider">/</span></li>
		<li class="active">Kayıt</li>
    </ul>
	
	<div class="well">
	
	<form class="form-horizontal">
		<h4>Kişisel bilgilerinizi girin</h4>
		
		<div class="control-group">
			<label class="control-label" for="inputFname1">Mail <sup>*</sup></label>
			<div class="controls">
				<asp:TextBox ID="TextBox1" runat="server" ValidationGroup="yenikayit"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bu alan boş bırakılamaz." ControlToValidate="TextBox1" Display="Dynamic"></asp:RequiredFieldValidator>
			</div>
		 </div>

		<div class="control-group">
			<label class="control-label" for="inputFname1">TC <sup>*</sup></label>
			<div class="controls">
				<asp:TextBox ID="TextBox2" runat="server" ValidationGroup="yenikayit"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Bu alan boş bırakılamaz." ControlToValidate="TextBox2" Display="Dynamic"></asp:RequiredFieldValidator>

			</div>
		 </div>

		<div class="control-group">
			<label class="control-label" for="inputFname1">Kullanıcı adı <sup>*</sup></label>
			<div class="controls">
				<asp:TextBox ID="TextBox3" runat="server" ValidationGroup="yenikayit"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Bu alan boş bırakılamaz." ControlToValidate="TextBox3" Display="Dynamic"></asp:RequiredFieldValidator>

			</div>
		 </div>
		  
		<div class="control-group">
			<label class="control-label" for="inputFname1">Adı <sup>*</sup></label>
			<div class="controls">
				<asp:TextBox ID="TextBox4" runat="server" ValidationGroup="yenikayit"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Bu alan boş bırakılamaz." ControlToValidate="TextBox4" Display="Dynamic"></asp:RequiredFieldValidator>

			</div>
		 </div>
		  
		<div class="control-group">
			<label class="control-label" for="inputFname1">Soyadı <sup>*</sup></label>
			<div class="controls">
				<asp:TextBox ID="TextBox5" runat="server" ValidationGroup="yenikayit"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Bu alan boş bırakılamaz." ControlToValidate="TextBox5" Display="Dynamic"></asp:RequiredFieldValidator>

			</div>
		 </div>

		<div class="control-group">
			<label class="control-label" for="inputFname1">Şifre <sup>*</sup></label>
			<div class="controls">
				<asp:TextBox ID="TextBox6" runat="server" ValidationGroup="yenikayit"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Bu alan boş bırakılamaz." ControlToValidate="TextBox6" Display="Dynamic"></asp:RequiredFieldValidator>

			</div>
		 </div>

		<div class="control-group">
			<label class="control-label" for="inputFname1">Şifre tekrarı <sup>*</sup></label>
			<div class="controls">
				<asp:TextBox ID="TextBox7" runat="server" ValidationGroup="yenikayit"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Bu alan boş bırakılamaz." ControlToValidate="TextBox7" Display="Dynamic"></asp:RequiredFieldValidator>

			</div>
		 </div>

	
	
				
				<asp:Button ID="Button1" runat="server" Text="Kayıt ol" class="btn btn-large btn-success" OnClick="Button1_Click" ValidationGroup="yenikayit"/>
					
				<asp:Button ID="Button2" runat="server" Text="Hesabımı doğrula" class="btn btn-large btn-primary" OnClick="Button2_Click" Visible="false" ValidationGroup="dogrula"/>

				
</div>

</div>

		   </div>
		</div>


</asp:Content>
