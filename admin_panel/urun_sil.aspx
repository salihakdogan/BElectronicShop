<%@ Page Title="" Language="C#" MasterPageFile="~/admin_panel/admin_panel.Master" AutoEventWireup="true" CodeBehind="urun_sil.aspx.cs" Inherits="BElectronicShop.admin_panel.urun_sil" %>
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
                            <h6 class="m-0 font-weight-bold text-primary">Ürün silme ekranı</h6>
                        </div>
                        <div class="card-body">
                            <% BElectronicShop.UrunCRUD urun = new BElectronicShop.UrunCRUD();
                                System.Data.DataTable dt = new System.Data.DataTable();
                                dt = urun.liste();
                                %>
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Kategori</th>
                                            <th>Marka</th>
                                            <th>Urun Adı</th>
                                            <th>Fiyat</th>
                                            <th>Kdv Oranı</th>
                                            <th>Para Birimi</th>
                                            <th>Stok Kodu</th>
                                            <th>Ürün Barkodu</th>
                                            <th>Stok Adet</th>
                                            <th>Stok Türü</th>
                                            <th>Ürün Görseli</th>
                                            <th>Kargo Kg</th>
                                            <th>Sil</th>
                                            <th>Güncelle</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Kategori</th>
                                            <th>Marka</th>
                                            <th>Urun Adı</th>
                                            <th>Fiyat</th>
                                            <th>Kdv Oranı</th>
                                            <th>Para Birimi</th>
                                            <th>Stok Kodu</th>
                                            <th>Ürün Barkodu</th>
                                            <th>Stok Adet</th>
                                            <th>Stok Türü</th>
                                            <th>Ürün Görseli</th>
                                            <th>Kargo Kg</th>
                                            <th>Sil</th>
                                            <th>Güncelle</th>
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
                                            <td><%=dt.Rows[i][4] %></td>
                                            <td><%=dt.Rows[i][5] %></td>
                                            <td><%=dt.Rows[i][6] %></td>
                                            <td><%=dt.Rows[i][7] %></td>
                                            <td><%=dt.Rows[i][8] %></td>
                                            <td><%=dt.Rows[i][9] %></td>
                                            <td><img alt="" src="<%=dt.Rows[i][10] %>" height="75" width="75"/></td>
                                            <td><%=dt.Rows[i][11] %></td>
                                                <%Session["urunsil"] = dt.Rows[i][7]; %>
                                            <td><a href="urun_sil.aspx?urunsil=<%=dt.Rows[i][7] %>" class="btn btn-danger btn-circle" <%--data-toggle="modal" data-target="#usilModal"--%>><i class="fas fa-trash"></i></a></td>                               
                                            <td><a href="#" class="btn btn-info btn-circle"><i class="fas fa-info-circle"></i></a></td>                                   
                                        </tr>

                                        <%} %>                                                   
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

</asp:Content>
