<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="BElectronicShop._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	
<%--Ust carousel baslangic--%>
	
	<% BElectronicShop.UrunCRUD sliderurunler = new BElectronicShop.UrunCRUD();
        System.Data.DataTable dtcarousel = new System.Data.DataTable();
        dtcarousel = sliderurunler.etiketegoreliste("slider");%>

    <div id="carouselBlk">
	<div id="myCarousel" class="carousel slide">
		<div class="carousel-inner">
		  
			<div class="item active">
		  <div class="container">
			<a href="#"><img style="width:100%" src="<%=dtcarousel.Rows[0][13] %>" alt="special offers"/></a>
			<div class="carousel-caption">
				  <h4>Second Thumbnail label</h4>
				  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
		  </div>
		  </div>

	   <%for (int i = 1; i < dtcarousel.Rows.Count; i++) /*birinci active de kullanıldı o yüzden int i =1*/
         {%>

		<div class="item">
		  <div class="container">
			<a href="register.html"><img style="width:100%" src="<%=dtcarousel.Rows[i][13] %>" alt=""/></a>
				<div class="carousel-caption">
				  <h4>Second Thumbnail label</h4>
				  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
				</div>
		  </div>
		  </div>

       <%}%>

		</div>
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
	  </div> 
</div>
<%--Ust carousel bitis--%>

	<div id="mainBody">
		<div class="container">

			<div class="row">

<%--Yan menu baslangic--%>

	<% 
        //kategoriler
        BElectronicShop.UrunCRUD kategori = new BElectronicShop.UrunCRUD();

        System.Data.DataTable dttelefon = new System.Data.DataTable();
        dttelefon = kategori.kategoriyegoreliste("Telefon");

        System.Data.DataTable dtlaptop = new System.Data.DataTable();
        dtlaptop = kategori.kategoriyegoreliste("Laptop");

        System.Data.DataTable dttv = new System.Data.DataTable();
        dttv = kategori.kategoriyegoreliste("Televizyon");


        //telefon markalari
        BElectronicShop.UrunCRUD markatelefon = new BElectronicShop.UrunCRUD();

        System.Data.DataTable dtapple = new System.Data.DataTable();
        dtapple = markatelefon.markayagoreliste("Telefon","Apple");

        System.Data.DataTable dtsamsung = new System.Data.DataTable();
        dtsamsung = markatelefon.markayagoreliste("Telefon","Samsung");

        System.Data.DataTable dtxiaomi = new System.Data.DataTable();
        dtxiaomi = markatelefon.markayagoreliste("Telefon","Xiaomi");


		//laptop markalari
        BElectronicShop.UrunCRUD markalaptop = new BElectronicShop.UrunCRUD();

        System.Data.DataTable dtapple1 = new System.Data.DataTable();
        dtapple1 = markalaptop.markayagoreliste("Laptop","Apple");

        System.Data.DataTable dtasus = new System.Data.DataTable();
        dtasus = markalaptop.markayagoreliste("Laptop","Asus");

        System.Data.DataTable dtlenovo = new System.Data.DataTable();
        dtlenovo = markalaptop.markayagoreliste("Laptop","Lenovo");


        //televizyon markalari
		BElectronicShop.UrunCRUD markatv = new BElectronicShop.UrunCRUD();

        System.Data.DataTable dtlg = new System.Data.DataTable();
        dtlg = markatv.markayagoreliste("Televizyon", "Lg");

        System.Data.DataTable dtsamsung1 = new System.Data.DataTable();
        dtsamsung1 = markatv.markayagoreliste("Televizyon", "Samsung");%>
				
	<div id="sidebar" class="span3">
		<div class="well well-small"><a id="myCart" href="product_summary.html"><img src="themes/images/ico-cart.png" alt="cart">3 ürün sepetinizde  <span class="badge badge-warning pull-right">₺0,00</span></a></div>
		<ul id="sideManu" class="nav nav-tabs nav-stacked">
			<li class="subMenu open"><a> Telefonlar [<%=dttelefon.Rows[0][0] %>]</a>
				<ul>
				<li><a class="active" href="products.html"><i class="icon-chevron-right"></i>Apple (<%=dtapple.Rows[0][0] %>)</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>Samsung (<%=dtsamsung.Rows[0][0] %>)</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>Xiaomi (<%=dtxiaomi.Rows[0][0] %>)</a></li>
				</ul>
			</li>
			<li class="subMenu"><a> Laptoplar [<%=dtlaptop.Rows[0][0] %>] </a>
			<ul style="display:none">
				<li><a href="products.html"><i class="icon-chevron-right"></i>Apple (<%=dtapple1.Rows[0][0] %>)</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>Asus (<%=dtasus.Rows[0][0] %>)</a></li>												
				<li><a href="products.html"><i class="icon-chevron-right"></i>Lenovo (<%=dtlenovo.Rows[0][0] %>)</a></li>	
			</ul>
			</li>
			<li class="subMenu"><a>Televizyonlar [<%=dttv.Rows[0][0] %>]</a>
				<ul style="display:none">
				<li><a href="products.html"><i class="icon-chevron-right"></i>Lg (<%=dtlg.Rows[0][0] %>)</a></li>
				<li><a href="products.html"><i class="icon-chevron-right"></i>Samsung (<%=dtsamsung1.Rows[0][0] %>)</a></li>																							
			</ul>
			</li>
			
		</ul>

		<br/>
		  
<%--Yan menu fırsat urunleri baslangic--%>
		<% BElectronicShop.UrunCRUD firsaturunleri = new BElectronicShop.UrunCRUD();
        System.Data.DataTable dtfirsaturunu = new System.Data.DataTable();
        dtfirsaturunu = firsaturunleri.etiketegoreliste("firsaturunu");%>
	
	   <%for (int i = 0; i < 3; i++)
         {%>
			<div class="thumbnail">
				<a href="product_details.html"><img style="width:100%; width:160px; height:160px;" src="<%=dtfirsaturunu.Rows[i][10] %>" alt=""/></a>
				<div class="caption">
				  <h5><%=dtfirsaturunu.Rows[i][2] %></h5>
				    <h4 style="text-align:center"><a class="btn" href="product_details.html"> <i class="icon-zoom-in"></i></a> 
						<a class="btn" href="#">Fırsat ürünü <i class="icon-shopping-cart"></i></a> 
						<a class="btn btn-primary" href="#">İncele</a></h4>
				</div>
			  </div><br/>
	   <%} %>
		
			<div class="thumbnail">
				<img src="themes/images/payment_methods.png" title="Bootshop Payment Methods" alt="Payments Methods">
				<div class="caption">
				  <h5>Ödeme yöntemleri</h5>
				</div>
			  </div>
<%--Yan menu fırsat urunleri bitis--%>
	</div>
<%--Yan menu bitis--%>

<%--Tum urunler uzerındekı dortlu urun slider kısmı baslangic--%>

    <% BElectronicShop.UrunCRUD onecikanurunler = new BElectronicShop.UrunCRUD();
        System.Data.DataTable dtonecikan = new System.Data.DataTable();
        dtonecikan = onecikanurunler.etiketegoreliste("onecikan");%>

	<% BElectronicShop.UrunCRUD toplamsayi = new BElectronicShop.UrunCRUD();
		System.Data.DataTable dturunsayi = new System.Data.DataTable();
		dturunsayi = toplamsayi.onecikansayi();%>

		<div class="span9">		
			<div class="well well-small">
			<h4>Öne çıkan ürünler <small class="pull-right">Öne çıkan ürün sayısı: <%=dturunsayi.Rows[0][0] %></small></h4>
			<div class="row-fluid">
			<div id="featured" class="carousel slide">
			<div class="carousel-inner">

			  <div class="item active">
			  <ul class="thumbnails">
       <%for (int i = 0; i < 4; i++) /*0-4. arası one cikan urun*/
           {%>
				<li class="span3">
				  <div class="thumbnail">
					<a href="product_details.html"><img style="width:100%; width:160px; height:160px;" src="<%=dtonecikan.Rows[i][10] %>" alt=""/></a>
					<div class="caption">
					  <h5><%=dtonecikan.Rows[i][2] %></h5>
						
						<%string parabirim;
                            parabirim = Convert.ToString(dtonecikan.Rows[i][5]);
                            if (parabirim=="Try")
                            {
                                dtonecikan.Rows[i][5] = "₺";
                            }
                            if (parabirim=="Usd")
                            {
                                dtonecikan.Rows[i][5] = "$";
                            }
                            if (parabirim=="Euro")
                            {
								dtonecikan.Rows[i][5] = "€";
                            }%>

					  <h4><a class="btn" href="product_details.html">İncele</a> 
				      <span class="pull-right" style="font-size:15px;"><%=dtonecikan.Rows[i][3] %> <%=dtonecikan.Rows[i][5] %></span></h4>
					</div>
				  </div>
				</li>
	   <%}%>
			  </ul>
			  </div>


			   <div class="item">
			  <ul class="thumbnails">
       <%for (int i = 4; i < 8; i++) /*4-8. arası one cikan urun*/
         {%>
				<li class="span3">
				  <div class="thumbnail">
					<a href="product_details.html"><img style="width:100%; width:160px; height:160px;" src="<%=dtonecikan.Rows[i][10] %>" alt=""/></a>
					<div class="caption">
					  <h5><%=dtonecikan.Rows[i][2] %></h5>
						
						<%string parabirim;
                            parabirim = Convert.ToString(dtonecikan.Rows[i][5]);
                            if (parabirim=="Try")
                            {
                                dtonecikan.Rows[i][5] = "₺";
                            }
                            if (parabirim=="Usd")
                            {
                                dtonecikan.Rows[i][5] = "$";
                            }
                            if (parabirim=="Euro")
                            {
								dtonecikan.Rows[i][5] = "€";
                            }%>

					  <h4><a class="btn" href="product_details.html">İncele</a> 
				      <span class="pull-right" style="font-size:15px;"><%=dtonecikan.Rows[i][3] %> <%=dtonecikan.Rows[i][5] %></span></h4>
					</div>
				  </div>
				</li>			
	   <%}%>
			  </ul>
			  </div>


			   <div class="item">
			  <ul class="thumbnails">
       <%for (int i = 8; i < 12; i++) /*8-12. arası one cikan urun*/
         {%>
				<li class="span3">
				  <div class="thumbnail">
					<a href="product_details.html"><img style="width:100%; width:160px; height:160px;" src="<%=dtonecikan.Rows[i][10] %>" alt=""/></a>
					<div class="caption">
					  <h5><%=dtonecikan.Rows[i][2] %></h5>
						
						<%string parabirim;
                            parabirim = Convert.ToString(dtonecikan.Rows[i][5]);
                            if (parabirim=="Try")
                            {
                                dtonecikan.Rows[i][5] = "₺";
                            }
                            if (parabirim=="Usd")
                            {
                                dtonecikan.Rows[i][5] = "$";
                            }
                            if (parabirim=="Euro")
                            {
								dtonecikan.Rows[i][5] = "€";
                            }%>

					  <h4><a class="btn" href="product_details.html">İncele</a> 
				     <span class="pull-right" style="font-size:15px;"><%=dtonecikan.Rows[i][3] %> <%=dtonecikan.Rows[i][5] %></span></h4>
					</div>
				  </div>
				</li>			
	   <%}%>
			  </ul>
			  </div>


			  </div>
			  <a class="left carousel-control" href="#featured" data-slide="prev">‹</a>
			  <a class="right carousel-control" href="#featured" data-slide="next">›</a>
			  </div>
			  </div>
		</div>
<%--Tum urunler uzerındekı dortlu urun slider kısmı baslangic--%>

<%--Tum urunler kısmı baslangıc--%>		
			<h4>Son eklenen ürünler </h4>

				<ul class="thumbnails">

		<% BElectronicShop.UrunCRUD tumurunler = new BElectronicShop.UrunCRUD();
				System.Data.DataTable dttumurunler = new System.Data.DataTable();
				dttumurunler = tumurunler.tumurunlerilistele(); %>

		<%for (int i = dttumurunler.Rows.Count-1; i >= dttumurunler.Rows.Count-6; i--) //son 6 kaydı listeler
          {%>
				<li class="span3">
				  <div class="thumbnail">
					<a  href="urundetay.aspx?prmurundetay=<%=dttumurunler.Rows[i][7] %>"><img src="<%=dttumurunler.Rows[i][10] %>" alt="" style="width:100%; width:160px; height:160px;"/></a>
					<div class="caption">
					  <h5><%=dttumurunler.Rows[i][2] %></h5>
					  <p> 
						Ürün barkodu: <%=dttumurunler.Rows[i][7] %><br />
						Ürün markası: <%=dttumurunler.Rows[i][1] %>					
					  </p>
					 
						<%string parabirim;
                            parabirim = Convert.ToString(dttumurunler.Rows[i][5]);
                            if (parabirim=="Try")
                            {
                                dttumurunler.Rows[i][5] = "₺";
                            }
                            if (parabirim=="Usd")
                            {
                                dttumurunler.Rows[i][5] = "$";
                            }
                            if (parabirim=="Euro")
                            {
								dttumurunler.Rows[i][5] = "€";
                            }%>
						
					      <h4 style="text-align:center">
                        
                        <%if (Session["uye"]!=null)
                          {%>
							  <%--burası--%>
						   <a class="btn" href="sepet.aspx?prmurundetay=<%=dttumurunler.Rows[i][7] %>">Sepete ekle <i class="icon-shopping-cart"></i></a> 
			
                        <%}%>
                        <%else 
                          {%>

						   <a class="btn" href="#login" role="button" data-toggle="modal">Sepete ekle<i class="icon-shopping-cart"></i></a> 

                        <%}%>

					      <a class="btn" href="urundetay.aspx?prmurundetay=<%=dttumurunler.Rows[i][7] %>"><i class="icon-zoom-in"></i></a> 
					   

						  <a class="btn btn-primary" href="urundetay.aspx?prmurundetay=<%=dttumurunler.Rows[i][7] %>"><%=dttumurunler.Rows[i][3] %> <%=dttumurunler.Rows[i][5] %> </a>

					      </h4>

					</div>
				  </div>
				</li>
	    <%}%>
			 </ul>	
<%--Tum urunler kısmı bitis--%>	
	   </div>
   </div>
</div>
</div>


</asp:Content>

