<%@ Page Title="" Language="C#" MasterPageFile="~/admin_panel/admin_panel.Master" AutoEventWireup="true" CodeBehind="musteri_liste.aspx.cs" Inherits="BElectronicShop.admin_panel.musteri_liste" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Tables</title>

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Müşteriler Listesi</h6>
                        </div>
                        <div class="card-body">
                            <% BElectronicShop.MusteriCRUD musteri = new BElectronicShop.MusteriCRUD();
                                System.Data.DataTable dt = new System.Data.DataTable();
                                dt = musteri.liste();
                                %>
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Tc Kimlik</th>
                                            <th>Kullanıcı Adı</th>                                          
                                            <th>Ad</th>
                                            <th>Soyad</th>
                                            <th>Mail</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Tc Kimlik</th>
                                            <th>Kullanıcı Adı</th>
                                            <th>Ad</th>
                                            <th>Soyad</th>
                                            <th>Mail</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <%for (int i = 0; i < dt.Rows.Count; i++)
                                          {%>

                                        <tr>
                                            <td><%=dt.Rows[i][0] %></td>
                                            <td><%=dt.Rows[i][1] %></td>
                                            <td><%=dt.Rows[i][2] %></td>
                                            <td><%=dt.Rows[i][3] %></td>
                                            <td><%=dt.Rows[i][5] %></td>
                                        </tr>

                                        <%} %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

</asp:Content>
