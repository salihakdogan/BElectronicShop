<%@ Page Title="" Language="C#" MasterPageFile="~/admin_panel/admin_panel.Master" AutoEventWireup="true" CodeBehind="urun_guncelle_detay.aspx.cs" Inherits="BElectronicShop.admin_panel.urun_guncelle_detay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="row">
        <div class="col-md-6 mb-4">
        Ürün Güncelleme Ekranı
        </div>
    </div> 

    <div class="row">
        <div class="col-md-6 mb-4">
            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label1" runat="server" Text="Kategori seçimi" CssClass="vldfont3"></asp:Label>
            </div>
            
            <asp:DropDownList ID="DropDownList1" runat="server" class="btn btn-outline-primary" cssclass="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
            </asp:DropDownList>
        </div>
        <div class="col-md-6 mb-4">
            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label2" runat="server" Text="Marka seçimi" CssClass="vldfont3"></asp:Label>
            </div>

            <asp:DropDownList ID="DropDownList2" runat="server" class="btn btn-outline-primary" cssclass="form-control" AutoPostBack="True">
            </asp:DropDownList>
        </div>
    </div>


    <div class="row">
        
        <div class="col-md-6 mb-4">
            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label3" runat="server" Text="Ürün adı" CssClass="vldfont3"></asp:Label>
            </div>

            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Örnek: iPhone 13 512 GB Gece Yarısı"></asp:TextBox>                                       
        </div>
            
        <div class="col-md-6 mb-4">
            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label4" runat="server" Text="Ürün fiyatı" CssClass="vldfont3"></asp:Label>
            </div>
                
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Örnek: 5000"></asp:TextBox>                     
        </div>
    </div>


    <div class="row">

        <div class="col-md-6 mb-4">

            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label5" runat="server" Text="Kdv oranı seçimi" CssClass="vldfont3"></asp:Label>
            </div>

            <div class="col-md-col-4 mb-2">
            <asp:RadioButton ID="RadioButton1" runat="server" Text="%1" CssClass="form-control" GroupName="kdvoran" Checked="true"/>
            </div>

            <div class="col-md-col-4 mb-2">
            <asp:RadioButton ID="RadioButton2" runat="server" Text="%10" CssClass="form-control" GroupName="kdvoran"/>
            </div>

            <div class="col-md-col-4 mb-2">
            <asp:RadioButton ID="RadioButton3" runat="server" Text="%18" CssClass="form-control" GroupName="kdvoran"/>
            </div>
          
        </div>

        <div class="col-md-6 mb-4">

            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label6" runat="server" Text="Para birimi seçimi" CssClass="vldfont3"></asp:Label>
            </div>

            <div class="col-md-col-4 mb-2">
            <asp:RadioButton ID="RadioButton4" runat="server" Text="Try" CssClass="form-control" GroupName="parabirim" Checked="true"/>
            </div>

            <div class="col-md-col-4 mb-2">
            <asp:RadioButton ID="RadioButton5" runat="server" Text="Euro" CssClass="form-control" GroupName="parabirim"/>
            </div>

            <div class="col-md-col-4 mb-2">
            <asp:RadioButton ID="RadioButton6" runat="server" Text="Usd" CssClass="form-control" GroupName="parabirim"/>
            </div>
          
        </div>

    </div>

    <div class="row">
        
        <div class="col-md-6 mb-4">
            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label7" runat="server" Text="Stok kodu" CssClass="vldfont3"></asp:Label>
            </div>

            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Örnek: APPL-IPH0010"></asp:TextBox>                                       
        </div>
            
        <div class="col-md-6 mb-4">
            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label8" runat="server" Text="Ürün barkodu" CssClass="vldfont3"></asp:Label>
            </div>
                
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Örnek: APPLIPH13007"></asp:TextBox>                     
        </div>
    </div>

    <div class="row">
        
        <div class="col-md-6 mb-4">
            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label9" runat="server" Text="Stok adeti" CssClass="vldfont3"></asp:Label>
            </div>

            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="Örnek: 50000"></asp:TextBox>                                       
        </div>
            
        <div class="col-md-6 mb-4">
            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label10" runat="server" Text="Kargo kg (desi)" CssClass="vldfont3"></asp:Label>
            </div>
                
            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="Örnek: 5"></asp:TextBox>                     
        </div>
    </div>


    <div class="row">

        <div class="col-md-6 mb-4">

            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label11" runat="server" Text="Stok türü" CssClass="vldfont3"></asp:Label>
            </div>

            <div class="col-md-col-4 mb-2">
            <asp:RadioButton ID="RadioButton7" runat="server" Text="Hazır stok" CssClass="form-control" GroupName="kdv" Checked="true"/>
            </div>

            <div class="col-md-col-4 mb-2">
            <asp:RadioButton ID="RadioButton8" runat="server" Text="Yurt dışı" CssClass="form-control" GroupName="kdv"/>
            </div>
        </div>
        
        <div class="col-md-6 mb-4">

            <div class="col-md-col-12 mb-1">
            <asp:Label ID="Label12" runat="server" Text="Ürün görseli" CssClass="vldfont3"></asp:Label>
            </div>

            <div class="col-md-col-4 mb-4">
            <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control"/>
                <asp:Image ID="Image1" runat="server" Width="75" Height="75" CssClass="form-control"/>

            </div>
           
        </div> 
    </div>

    <div class="row">
        <div class="col-md-6 mb-4">
            <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-outline-primary" OnClick="Button1_Click"/> <%--OnClick="Button1_Click"--%>
            <asp:Label ID="Label13" runat="server" CssClass="vldfont2"></asp:Label>          
        </div>
    </div>

    


</asp:Content>
