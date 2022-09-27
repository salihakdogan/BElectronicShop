<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMaster.Master" AutoEventWireup="true" CodeBehind="sepet.aspx.cs" Inherits="BElectronicShop.sepet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <div id="mainBody">
	   <div class="container">
           <div class="row">

               <div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.html">Home</a> <span class="divider">/</span></li>
		<li class="active"> SHOPPING CART</li>
    </ul>

	<%BElectronicShop.SepetCRUD sepettekiurun = new BElectronicShop.SepetCRUD();
        BElectronicShop.UrunCRUD urundetayi = new BElectronicShop.UrunCRUD();
        System.Data.DataTable dt = sepettekiurun.sepetgoster(Session["uye"].ToString());%>

    <%BElectronicShop.SepetCRUD uruncrud = new BElectronicShop.SepetCRUD();
        int cesitsayi = uruncrud.sepetadet((Session["uye"]).ToString());%>

				<h3>  Alışveriş Sepeti [ <small> <%=cesitsayi%> ürün sepetinizde </small>]<a href="default.aspx" class="btn btn-large pull-right"><i class="icon-arrow-left"></i> Alışverişe devam et </a></h3>	

      

	<hr class="soft"/>
			
			
	<table class="table table-bordered">
              <thead>
                <tr>
                  <th>Ürünün Resmi</th>
                  <th>Açıklaması</th>
				  <th>Adet/Miktar</th>
                  <th>Ücret</th>
                  <th>Toplam</th>
				</tr>
              </thead>
              <tbody>

       <%for (int i = 0; i < dt.Rows.Count; i++)
           {
               BElectronicShop.Urun urunum = new BElectronicShop.Urun();
               urunum = urundetayi.urungoster(dt.Rows[i][1].ToString());%>
          

				<tr>
                  <td> <img width="60" src="<%=urunum.Uresim %>" alt=""/></td>
                  <td><%=urunum.Urunadi %><br/>Barkod: <%=urunum.Ubarkod %></td>
				  <td>

					<div class="input-append">
						<input class="span1" style="max-width:34px" placeholder="<%= dt.Rows[i][2] %>" id="appendedInputButtons" size="16" type="text">
						<button class="btn" type="button"><i class="icon-minus"></i></button>
						<button class="btn" type="button"><i class="icon-plus"></i></button>
						<button class="btn btn-danger" type="button"><i class="icon-remove icon-white"></i></button>
					</div>

				  </td>
                  <td><%=urunum.Ufiyat %> <%=urunum.Parabrm %></td>
                  <td><%=Convert.ToInt16(urunum.Ufiyat) * Convert.ToInt16(dt.Rows[i][2]) %> <%=urunum.Parabrm %></td>
                  <%--<td>$15.00</td>
                  <td>$110.00</td>--%>
                </tr>

       <%}%>
                			
                <tr>
                  <td colspan="4" style="text-align:right"></td>
                  <td></td>
                </tr>
		          
				  <%BElectronicShop.SepetCRUD sepet= new BElectronicShop.SepetCRUD();
                      System.Data.DataTable dtsepet = new System.Data.DataTable();
                      dtsepet = sepet.sepettoplami((Session["uye"]).ToString());%>

				 <tr>
                  <td colspan="4" style="text-align:right"><strong> </strong></td>
                  <td class="label label-important" style="display:block"> <strong> <%=dtsepet.Rows[0][0] %> Try </strong></td>
                </tr>

				</tbody>
            </table>
		
		
            <table class="table table-bordered">
			<tbody>
				 <tr>
                  <td> 
				<form class="form-horizontal">
				<div class="control-group">
				<label class="control-label"><strong> VOUCHERS CODE: </strong> </label>
				<div class="controls">
				<input type="text" class="input-medium" placeholder="CODE">
				<button type="submit" class="btn"> ADD </button>
				</div>
				</div>
				</form>
				</td>
                </tr>
				
			</tbody>
			</table>
			
			<table class="table table-bordered">
			 <tr><th>ESTIMATE YOUR SHIPPING </th></tr>
			 <tr> 
			 <td>
				<form class="form-horizontal">
				  <div class="control-group">
					<label class="control-label" for="inputCountry">Country </label>
					<div class="controls">
					  <input type="text" id="inputCountry" placeholder="Country">
					</div>
				  </div>
				  <div class="control-group">
					<label class="control-label" for="inputPost">Post Code/ Zipcode </label>
					<div class="controls">
					  <input type="text" id="inputPost" placeholder="Postcode">
					</div>
				  </div>
				  <div class="control-group">
					<div class="controls">
					  <button type="submit" class="btn">ESTIMATE </button>
					</div>
				  </div>
				</form>				  
			  </td>
			  </tr>
            </table>		
	<a href="products.html" class="btn btn-large"><i class="icon-arrow-left"></i> Continue Shopping </a>
	<a href="login.html" class="btn btn-large pull-right">Next <i class="icon-arrow-right"></i></a>
	
</div>

           </div>
       </div>
   </div>


</asp:Content>
