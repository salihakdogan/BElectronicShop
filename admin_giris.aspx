<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_giris.aspx.cs" Inherits="BElectronicShop.admin_giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <head>

    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>SB Admin 2 - Login</title>

    <!-- Custom fonts for this template-->
    <link href="admin_panel/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet"/>

    <!-- Custom styles for this template-->
    <link href="admin_panel/css/sb-admin-2.min.css" rel="stylesheet" />
    <link href="admin_panel/custom_display_stil.css" rel="stylesheet" />
    <link href="admin_panel/be_admin_giris.css" rel="stylesheet" />

</head>
</head>
<body>
    <form id="form1" runat="server">
        <body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block be_admin_giris"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">BElectronicShop<br>Yönetici Giriş Ekranı</h1>
                                    </div>
                                    <form class="user">
                                        
                                        <div class="form-group">
                                        <asp:TextBox ID="TextBox1" runat="server" class="form-control form-control-user" placeholder="Yönetici kullanıcı adı"></asp:TextBox>

                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bu alan boş geçilemez." CssClass="vldfont" ControlToValidate="TextBox1" Display="Dynamic"></asp:RequiredFieldValidator>

                                            <%--<input type="email" class="form-control form-control-user"
                                                id="exampleInputEmail" aria-describedby="emailHelp"
                                                placeholder="Email adresi...">--%>
                                        </div>


                                        <div class="form-group">
                                        <asp:TextBox ID="TextBox2" runat="server" class="form-control form-control-user"  placeholder="Yönetici şifre" TextMode="Password"></asp:TextBox>                                        
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Bu alan boş geçilemez." CssClass="vldfont" ControlToValidate="TextBox2" Display="Dynamic"></asp:RequiredFieldValidator>
                                                             
                                            <%--<input type="password" class="form-control form-control-user"
                                                id="exampleInputPassword" placeholder="Şifre">--%>
                                            
                                            <hr>
                                            <div class="row">
                                                <div class="col-md-6 mb-1">
                                                <asp:CheckBox ID="CheckBox1" runat="server" Text=" Girişi hatırla" CssClass="vldfont3"/>
                                            </div>
                                            </div>

                                        </div>                                     
                                     
                                                <%--<input type="checkbox" class="custom-control-input" id="customCheck">
                                                <label class="custom-control-label" for="customCheck">Girişi
                                                    hatırla</label>--%>                                                           
                                        
                                        <asp:Button ID="Button1" runat="server" Text="Giriş Yap" class="btn btn-primary btn-user btn-block" OnClick="Button1_Click"/>
                                        
                                        <div class="text-center">
                                        <asp:Label ID="Label1" runat="server" CssClass="vldfont"></asp:Label>           
                                        </div>

                                        <%--<a href="index.html" class="btn btn-primary btn-user btn-block">
                                            Giriş Yap
                                        </a>--%>                                        
                                    </form>
                                        <hr>
                                    
                                    <div class="text-center">
                                        <a class="small" href="forgot-password.html">Şifremi unuttum</a>
                                    </div>
                                    <div class="text-center">
                                        <a class="small" href="register.html">Kayıt ekranı</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="admin_panel/vendor/jquery/jquery.min.js"></script>
    <script src="admin_panel/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="admin_panel/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="admin_panel/js/sb-admin-2.min.js"></script>

</body>
    </form>
</body>
</html>
