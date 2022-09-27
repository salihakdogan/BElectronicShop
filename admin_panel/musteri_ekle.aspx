<%@ Page Title="" Language="C#" MasterPageFile="~/admin_panel/admin_panel.Master" AutoEventWireup="true" CodeBehind="musteri_ekle.aspx.cs" Inherits="BElectronicShop.admin_panel.musteri_ekle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><%--özel içerik başlangıç--%>
    
    
    <div class="row">
        <div class="col-md-6 mb-4">
        Yeni Müşteri Ekleme Ekranı
        </div>
    </div>  
     
    <div class="row">
        
        <div class="col-md-6 mb-4">
            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label3" runat="server" Text="Müşteri TC" CssClass="vldfont3"></asp:Label>
            </div>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>                                       
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" Bu alan boş bırakılamaz." ControlToValidate="TextBox1" Display="Dynamic" CssClass="vldfont"></asp:RequiredFieldValidator>                   
        </div>
            
        <div class="col-md-6 mb-4">
            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label2" runat="server" Text="Kullanıcı adı" CssClass="vldfont3"></asp:Label>
            </div>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>                     
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage=" Bu alan boş bırakılamaz." ControlToValidate="TextBox2" Display="Dynamic" CssClass="vldfont"></asp:RequiredFieldValidator>                  
        </div>
    </div>
    
    
    <div class="row">
        
        <div class="col-md-6 mb-4">
            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label4" runat="server" Text="Müşteri adı" CssClass="vldfont3"></asp:Label>
            </div>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage=" Bu alan boş bırakılamaz." ControlToValidate="TextBox3" Display="Dynamic" CssClass="vldfont"></asp:RequiredFieldValidator>       
        </div>
             
        <div class="col-md-6 mb-4">
            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label5" runat="server" Text="Müşteri soyadı" CssClass="vldfont3"></asp:Label>
            </div>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>                 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage=" Bu alan boş bırakılamaz." ControlToValidate="TextBox4" Display="Dynamic" CssClass="vldfont"></asp:RequiredFieldValidator>                         
        </div>
    </div>
       

    <div class="row">

        <div class="col-md-6 mb-4">
            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label6" runat="server" Text="Şifre" CssClass="vldfont3"></asp:Label>
            </div>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="" TextMode="Password"></asp:TextBox>                                          
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage=" Bu alan boş bırakılamaz." ControlToValidate="TextBox5" Display="Dynamic" CssClass="vldfont"></asp:RequiredFieldValidator>          
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Şifre en az 1 küçük ve 1 büyük harften, en az 1 sayıdan oluşmalıdır. Uzunluğu minimum 8 maksimumum 20 karakter olmalıdır." ControlToValidate="TextBox5" Display="Dynamic" ValidationExpression="(?! ^[0-9]*$)(?! ^[a-zA-Z]*$)^([a-zA-Z0-9]{8,20})$" CssClass="vldfont"></asp:RegularExpressionValidator>        
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Şifreler uyuşmuyor." ControlToCompare="TextBox6" ControlToValidate="TextBox5" Display="Dynamic" CssClass="vldfont"></asp:CompareValidator>
        </div>
     
        <div class="col-md-6 mb-4">
            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label7" runat="server" Text="Şifre tekrarı" CssClass="vldfont3"></asp:Label>
            </div>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="" TextMode="Password"></asp:TextBox>    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage=" Bu alan boş bırakılamaz." ControlToValidate="TextBox6" Display="Dynamic" CssClass="vldfont"></asp:RequiredFieldValidator>           
        </div>     
    </div>
    
    
    <div class="row">
        
        <div class="col-md-6 mb-4">
            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label8" runat="server" Text="Mail adresi" CssClass="vldfont3"></asp:Label>
            </div>
            <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" placeholder="ornek@mail.com"></asp:TextBox>                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage=" Bu alan boş bırakılamaz." ControlToValidate="TextBox7" Display="Dynamic" CssClass="vldfont"></asp:RequiredFieldValidator>          
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Mail adresi ya da formatı yanlış girildi." Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox7" CssClass="vldfont"></asp:RegularExpressionValidator>    
        </div>
     </div> 
    

    <div class="row">
        
         <div class="col-md-6 mb-4">
             <asp:Button ID="Button1" runat="server" Text="Kaydet" class="btn btn-outline-primary" OnClick="Button1_Click"/>
             <asp:Label ID="Label1" runat="server" class="vldfont2"></asp:Label>
        </div>
     </div>


<%--özel içerik bitiş --%>   
</asp:Content>
