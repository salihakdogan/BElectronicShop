<%@ Page Title="" Language="C#" MasterPageFile="~/admin_panel/admin_panel.Master" AutoEventWireup="true" CodeBehind="musteri_guncelle_detay.aspx.cs" Inherits="BElectronicShop.admin_panel.musteri_guncelle_detay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col-md-6 mb-4">
        Müşteri Güncelleme Ekranı
        </div>
    </div>  
     
    <div class="row">
        
        <div class="col-md-6 mb-4">
            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label3" runat="server" Text="Müşteri TC" CssClass="vldfont3"></asp:Label>
            </div>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>                                                                           
        </div>
            
        <div class="col-md-6 mb-4">
            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label2" runat="server" Text="Kullanıcı adı" CssClass="vldfont3"></asp:Label>
            </div>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>      
            <asp:Label ID="Label7" runat="server" CssClass="vldfont1"></asp:Label>
        </div>
    </div>
    
    
    <div class="row">
        
        <div class="col-md-6 mb-4">
            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label4" runat="server" Text="Müşteri adı" CssClass="vldfont3"></asp:Label>
            </div>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>                   
        </div>
             
        <div class="col-md-6 mb-4">
            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label5" runat="server" Text="Müşteri soyadı" CssClass="vldfont3"></asp:Label>
            </div>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>                 
        </div>
    </div>
       

    <div class="row">

        <div class="col-md-6 mb-4">
            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label6" runat="server" Text="Müşteri mail adresi" CssClass="vldfont3"></asp:Label>
            </div>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>           
        </div>
     
   
    </div>
    
    
    <div class="row">
        
        
     </div> 
    

    <div class="row">
        
         <div class="col-md-6 mb-4">
             
             <asp:Button ID="Button1" runat="server" Text="Güncelle" class="btn btn-outline-primary" OnClick="Button1_Click"/>
             <asp:Label ID="Label1" runat="server" class="vldfont2"></asp:Label>
             
        </div>
    
        <div class="alert alert-warning alert-dismissible fade show" role="alert" runat="server" visible="false" id="gnclbilgi">
  <strong>BElectronicShop!</strong> Müşteri güncelleme işlemi başarılı.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
        
    </div>

    



</asp:Content>
