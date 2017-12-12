<%@page import="com.lin.entity.CartItem"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.lin.cart.service.Cart"%>
    <%@ page import="java.util.Iterator"%>
    <%@ page import="com.lin.entity.User"%>
     <%@ page import="com.lin.entity.CartItem"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>购物车</title>
<link href="${ctx}/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="${ctx}/css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="${ctx}/js/jquery.min.js"></script>
<script type="text/javascript">
        $(document).ready(function() {
            $(".dropdown img.flag").addClass("flagvisibility");

            $(".dropdown dt a").click(function() {
                $(".dropdown dd ul").toggle();
            });
                        
            $(".dropdown dd ul li a").click(function() {
                var text = $(this).html();
                $(".dropdown dt a span").html(text);
                $(".dropdown dd ul").hide();
                $("#result").html("Selected value is: " + getSelectedValue("sample"));
            });
                        
            function getSelectedValue(id) {
                return $("#" + id).find("dt a span.value").html();
            }

            $(document).bind('click', function(e) {
                var $clicked = $(e.target);
                if (! $clicked.parents().hasClass("dropdown"))
                    $(".dropdown dd ul").hide();
            });


            $("#flagSwitcher").click(function() {
                $(".dropdown img.flag").toggleClass("flagvisibility");
            });
        });
     </script>
     <!-- slide -->
<style>
	p.p_num {
    width: 78px;
    height: 24px;
    border-top: solid 1px #d0d0d0;
    position: relative;
    border-bottom: solid 1px #d0d0d0;
    margin-top: -3px;
}
 
span.sy_minus,span.sy_plus {
    width: 15px;
    height: 24px;
    line-height: 24px;
    text-align: center;
    display: block;
    position: absolute;
    top: 0px;
    font-size: 14px;
    border: solid 1px #d0d0d0;
    background: #ebebeb;
    cursor: pointer;
    border-top: none;
    border-bottom: none;
}
 
span.sy_minus {
    left: 0px;
}
 
span.sy_plus {
    right: 0px;
}
 
input.sy_num {
    width: 44px;
    height: 18px;
    line-height: 24px;
    text-align: center;
    position: absolute;
    top: 0px;
    left: 17px;
}
 
</style>
 </head>
<body>
	<div class="header">
		<div class="container">
			<div class="row">
			  <div class="col-md-12">
				 <div class="header-left">
					 <div class="logo">
						<a href="${ctx}/index.html"><img src="${ctx}/images/logo.png" alt=""/></a>
					 </div>
					 <div class="menu">
						  <a class="toggleMenu" href="#"><img src="${ctx}/images/nav.png" alt="" /></a>
						    <ul class="nav" id="nav">
						    	<li><a href="${ctx}/shop.html">商店</a></li>
								<li><a href="${ctx}/experiance.html">经验交流</a></li>
								<li><a href="${ctx}/contact.html">联系我们</a></li>								
								<div class="clear"></div>
							</ul>
							<script type="text/javascript" src="${ctx}/js/responsive-nav.js"></script>
				    </div>							
	    		    <div class="clear"></div>
	    	    </div>
	            <div class="header_right">
	    		  <!-- start search-->
				   <div class="search-box">
							<div id="sb-search" class="sb-search">
								<form>
									<input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
									<input class="sb-search-submit" type="submit" value="">
									<span class="sb-icon-search"> </span>
								</form>
							</div>
						</div>
						<!----search-scripts---->
						<script src="${ctx}/js/classie.js"></script>
						<script src="${ctx}/js/uisearch.js"></script>
						<script>
							new UISearch( document.getElementById( 'sb-search' ) );
						</script>
				    <ul class="icon1 sub-icon1 profile_img">
					 <li><a class="active-icon c1" href="#"> </a>
						<ul class="sub-icon1 list">
						  <div class="product_control_buttons">
						  	<a href="#"><img src="${ctx}/images/edit.png" alt=""/></a>
						  		<a href="#"><img src="${ctx}/images/close_edit.png" alt=""/></a>
						  </div>
						   <div class="clear"></div>
						  <li class="list_img"><img src="${ctx}/images/1.jpg" alt=""/></li>
						  <li class="list_desc"><h4><a href="#">商品</a></h4><span class="actual">1 x
                          $12.00</span></li>
						  <div class="login_buttons">
							 <div class="check_button"><a href="${ctx}/checkout.html">去购物车结算</a></div>
							 <div class="login_button"><a href="${ctx}/login.html">登录</a></div>
							 <div class="clear"></div>
						  </div>
						  <div class="clear"></div>
						</ul>
					 </li>
				   </ul>
		        <div class="clear"></div>
	       </div>
	      </div>
		 </div>
	    </div>
	  </div>
     <div class="main">
      <div class="shop_top">
		<div class="container">
		<h1>checkout</h1>
	    <% Cart c = (Cart)session.getAttribute("cart");
		if(c == null||c.container.size()==0){%>
			<h4 class="title">购物车是空的</h4>
			<p class="cart">您的购物车中没有商品<br>点击<a href="index.html"> 这里</a> 继续购物</p>
			<%}else{
				int totalprice = 0;
				int count = 0;
				Iterator i = c.container.values().iterator();
			%> 
			<table><tr><td></td><td>商品</td><td>单价</td><td>详情</td><td>数量</td><td>总价</td><td>批量操作</td></tr>
			<%	while(i.hasNext()){
				CartItem ci = (CartItem)i.next();
			 %>
			 <tr>
			   <td><input type="checkbox" name="cartcheckbox" onclick="selectSingle()"></td>
			   <td class="col-md-3 shop_box"><a href="${ctx}/single.html"><img src="${ctx}/images/pic5.jpg" class="img-responsive" alt=""/></a>
			   <div class="sed">
							<h5><%=ci.getProduct().getProductName() %></h5>
						
			    </div>
			    <div class="clearfix"> </div></td>
			   </td>
			   <td><h5><%=ci.getProduct().getPrice() %></h5></td>
			   <td><h5><%=ci.getProduct().getProductInfo() %></h5></td>
			   <td>
				    <p class="p_num">
							<a href="${ctx }/cart/jian?productId=<%=ci.getProduct().getId()%>"><span class="sy_minus" id="sy_minus_gid1">-</span></a>
				            <input class="sy_num" id="sy_num_gid1"  type="text" name="number1" value="<%=ci.getCount() %>" /> 
				            <a href="${ctx }/cart/jia?productId=<%=ci.getProduct().getId()%>"><span class="sy_plus" id="sy_plus_gid1">+</span></a>
				    </p>
			   </td>		
			   <td><%=ci.getProduct().getPrice()*ci.getCount() %></td>
			   <td><a href="${ctx }/cart/del?productId=<%=ci.getProduct().getId()%>"><img src="${ctx }/images/laji.jpg" width="15px" height="20px"/></a></td>
						<%
							totalprice +=ci.getProduct().getPrice()*ci.getCount();
							count+=ci.getCount();
						%>
			   </tr>
			       <%} 
			        out.print("<tr><td colspan='5'></td><td>合计:"+totalprice+"<td></tr>");
					session.setAttribute("totalprice", totalprice);
					session.setAttribute("count", count);
					%>
					<tr>
						<td><input id="allCheckBox" type="checkbox" value="" onclick="selectAll()" />全选</td>
						
					</tr>
					<%
						User user = (User)session.getAttribute("u");
					%>
					<tr><td><a href="${ctx }/cart/delAll"><img src="${ctx }/images/del.jpg" width="98px" height="25px"/></a></td>
					<td colspan="3"></td><td colspan="3" align="right"><a href="${ctx }/shop.jsp" class=" to-buy" >继续购物</a>&nbsp;&nbsp;<a href="${ctx }/orders/add?useraddress=<%=user.getAddress() %>" class=" to-buy" >生成订单</a></td>
			</table>
			
 		<%} %> 
	     </div>
	   </div>
	  </div>
	  <div class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<ul class="footer_box">
							<h4>商品</h4>
							<li><a href="#">男士</a></li>
							<li><a href="#">女士</a></li>
							<li><a href="#">青年</a></li>
						</ul>
					</div>
					<div class="col-md-3">
						<ul class="footer_box">
							<h4>关于</h4>
							<li><a href="#">就业和实习</a></li>		
							<li><a href="#">团队</a></li>
							<li><a href="#">请求/下载目录
</a></li>
						</ul>
					</div>
					<div class="col-md-3">
						<ul class="footer_box">
							<h4>客户支持</h4>
							<li><a href="#">联系我们</a></li>
							<li><a href="#">订单跟踪</a></li>
							<li><a href="#">保修</a></li>
						</ul>
					</div>
					<div class="col-md-3">
						<ul class="footer_box">
							<h4>通讯</h4>
							<div class="footer_search">
				    		   <form>
				    			<input type="text" value="输入您的电子邮件" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter your email';}">
				    			<input type="submit" value="Go">
				    		   </form>
					        </div>
							<ul class="social">	
							  <li class="facebook"><a href="#"><span> </span></a></li>
							  <li class="twitter"><a href="#"><span> </span></a></li>
							  <li class="instagram"><a href="#"><span> </span></a></li>	
							  <li class="pinterest"><a href="#"><span> </span></a></li>	
							  <li class="youtube"><a href="#"><span> </span></a></li>										  				
						    </ul>
		   				</ul>
					</div>
				</div>
				<div class="row footer_bottom">
				    <div class="copy">
			           <p>版权 &copy; 2014.公司保留所有权利.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
		            </div>
					  <dl id="sample" class="dropdown">
				        <dt><a href="#"><span>更改地区</span></a></dt>
				        <dd>
				            <ul>
				                <li><a href="#">澳大利亚<img class="flag" src="${ctx}/images/as.png" alt="" /><span class="value">AS</span></a></li>
				                <li><a href="#">斯里兰卡<img class="flag" src="${ctx}/images/srl.png" alt="" /><span class="value">SL</span></a></li>
				                <li><a href="#">新西兰<img class="flag" src="${ctx}/images/nz.png" alt="" /><span class="value">NZ</span></a></li>
				                <li><a href="#">巴基斯坦<img class="flag" src="${ctx}/images/pk.png" alt="" /><span class="value">Pk</span></a></li>
				                <li><a href="#">联合国<img class="flag" src="${ctx}/images/uk.png" alt="" /><span class="value">UK</span></a></li>
				                <li><a href="#">美国<img class="flag" src="${ctx}/images/us.png" alt="" /><span class="value">US</span></a></li>
				            </ul>
				         </dd>
	   				  </dl>
   				</div>
			</div>
		</div>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>