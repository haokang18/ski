 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Products</title>
<link href="${ctx}/css/base.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" rev="stylesheet" href="${ctx}/css/mobile.css" type="text/css" media="screen">
<link href="${ctx}/css/user.css" rel="stylesheet" type="text/css" />

<link href="${ctx}/css/bootstrap1.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${ctx}/js/jquery.min2.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="${ctx}/css/style1.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Fashion Mania Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- start menu -->
<link href="${ctx}/css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="${ctx}/js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>
<script src="${ctx}/js/simpleCart.min.js"> </script>
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
<style>
.aaa{
	position: absolute;
	top:1135px;
	left:560px;
}
</style>
<!-- slide -->
</head>
<body>
<!--header-->
<div class="header">
		<div class="container">
			<div class="row">
			  <div class="col-md-12">
				 <div class="header-left">
					 <div class="logo">
						<a href="index.html"><img src="${ctx}/images/logo.png" alt=""/></a>
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
							 <div class="check_button"><a href="checkout.html">去购物车结算</a></div>
							 <div class="login_button"><a href="login.html">登录</a></div>
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
<!--content-->
<div class="products">
	<div class="checkout-box">

	 <form  id="checkoutForm" action="#" method="post">
        <div class="checkout-box-bd">
            <!-- 收货地址 -->
            <div class="box-hd">
                <h2 class="title">收货地址</h2>
            </div>
        
            <div class="xm-address-list" id="checkoutAddrList">
                <dl class="item selected">
                    <dt><strong class="itemConsignee">张三</strong></dt>
                    <dd>
                        <p class="tel">139****1111</p>
                        <p class="itemRegion">廊坊市 安次区 大厂</p>
                        <p class="itemStreet">金地经典 B栋 203(450000)</p>
                        <span class="edit-btn theme-login">编辑</span>
                    </dd>
                </dl>
                <dl class="item">
                    <dt><strong class="itemConsignee">李四</strong></dt>
                    <dd>
                        <p class="tel">152****2222</p>
                        <p class="itemRegion">佛罗里达州  郑州市</p>
                        <p class="itemStreet">拉萨思明区湖滨四里64号湖光大厦11楼A座(361001)</p>
                        <span class="edit-btn theme-login">编辑</span>
                    </dd>
                </dl>
        
                <div class="item use-new-addr"  id="J_useNewAddr">
                     <span class="icon-add theme-login"></span> 
                    使用新地址
                </div>
            </div>

			<!--------------隐藏框----------------->
            <div class="theme-popover-mask"></div>
            <div class="theme-popover">
              <div class="xm-edit-addr-box" id="J_editAddrBox">
                    <div class="bd-box">
                                <div class="box-li">
                                    <input type="text" id="Consignee" maxlength="15" value="收货人姓名" onFocus="this.value=''" onBlur="if(!value){value=defaultValue;}">
                                    <p class="tip-msg tipMsg"></p>
                                </div>
                                <div class="box-li">
                                    <input type="text" id="Telephone" value="11位手机号" onFocus="this.value=''" onBlur="if(!value){value=defaultValue;}">
                                    <p class="tip-msg tipMsg"></p>
                                    <p style="font-size:12px; color:#666;">如果不修改手机号，请重新输入原收货手机号 <font color="#FF3300">139****2057</font> 以便确认</p>
                                </div>
                                <div class="box-li">
                                    <select id="Provinces" class="select-1">
                                        <option>省份/自治区</option>
                                    </select>
                                    <select id="Citys" class="select-2">
                                        <option>城市/地区/自治州</option>
                                    </select>
                                    <div class="clr10"></div>
                              <select id="Countys" class="select-3">
                                        <option>区/县</option>
                                    </select>
                                    <div class="clr10"></div>
                                <textarea  class="input-area" id="Street" placeholder="路名或街道地址，门牌号"></textarea>
                                    <p class="tip-msg tipMsg"></p>
                                </div>
                                <div class="box-li">
                                    <input type="text" id="Zipcode" class="input" value="邮政编码"  onFocus="this.value=''" onBlur="if(!value){value=defaultValue;}">
                                    <p class="zipcode-tip" id="zipcodeTip"></p>
                                    <p class="tip-msg tipMsg"></p>
                                </div>
                                <div class="box-li">
                                    <input type="text" id="Tag" class="input" value='地址标签：如"家"、"公司"。限5个字内'  onFocus="this.value=''" onBlur="if(!value){value=defaultValue;}">
                                    <p class="tip-msg tipMsg"></p>
                                </div>
                    </div>
                    <div class="ft">
                      <button  type="button"  class="close" id="J_editAddrCancel">重新选择地址</button>
                       <button type="button" class="J_editAddrOk" id="J_editAddrOk">确认收货地址</button>
                    </div>
                </div>
            </div>

            <!-- 收货地址 END-->

            <!-- 支付方式 -->
            <div class="box-hd ">
                <h2 class="title">支付方式</h2>
            </div>
            
            <div class="box-bd">
                <ul id="checkoutPaymentList" class="checkout-option-list">
                    <li class="item selected">
                        <p>在线支付<span></span></p>
                    </li>
                </ul>
            </div>
            <!-- 支付方式 END-->
            
            <!-- 配送方式 -->  
            <div class="box-hd ">
				<h2 class="title">配送方式</h2>
            </div>
            
            <div class="box-bd">
                <ul id="checkoutShipmentList" class="checkout-option-list">
                    <li class="item selected">
                        <p>加配送费 10 元<span></span></p>
                    </li>
                </ul>
            </div>
            <!-- 配送方式 END-->

            <!-- 送货时间 -->
            <div class="box-hd">
                <h2 class="title">送货时间</h2>
            </div>
            
            <div class="box-bd">
                <ul class="checkout-option-list"> 
                    <li class="item selected">
                        <p>不限送货时间<span>周一至周日</span></p>
                    </li>
                    <li class="item "><p>工作日送货<span>周一至周五</span></p></li>
                    <li class="item "><p>双休日、假日送货<span>周六至周日</span></p></li>
                </ul>
            </div>
            <!-- 送货时间 END-->
                
            <!-- 发票信息 -->
            <div class="box-hd">
                <h2 class="title">发票信息</h2>
            </div>
                
            <div class="box-bd">
                <ul class="checkout-option-list" id="Invoice">
                    <li class="item selected"><p>电子发票</p></li>
                    <li class="item"><p>普通发票</p></li>
                </ul>
                
                <p id="eInvoiceTip" class="e-invoice-tip ">电子发票是税务局认可的有效凭证，可作为售后维权凭据。开票后不可更换纸质发票，如需报销请选择普通发票。</p>
                
                <div class="invoice-info-0" style="display:none">
                    <p style="color:#1d7ad9">电子发票目前仅对个人用户开具，不可用于单位报销 </p>
                    <p>发票内容：购买商品明细</p>
                    <p>发票抬头：个人</p>
                    <p>
                        <dl>
                            <dt>什么是电子发票?</dt>
                            <dd>&#903; 电子发票是纸质发票的映像，是税务局认可的有效凭证，与传统纸质发票具有同等法律效力，可作为售后维权凭据。</dd>
                            <dd>&#903; 开具电子服务于个人，开票后不可更换纸质发票，不可用于单位报销。</dd>
                            <dd>&#903; 您在订单详情的"发票信息"栏可查看、下载您的电子发票。</dd>
                        </dl>
                    </p>
                </div>
                
                <div class="invoice-info-1" id="checkoutInvoiceDetail"  style="display:none;" >
                    <p>发票内容：购买商品明细</p>
                    <p>发票抬头：请确认单位名称正确,以免因名称错误耽搁您的报销。注：合约机话费仅能开个人发票</p>
                    <ul class="J_invoiceType">
                        <li class="item"><p>个人</p></li>
                        <li class="item"><p>单位</p></li>
                    </ul>
                    <div  id="CheckoutInvoiceTitle">
                        <label>单位名称：</label>
                        <input type="text" maxlength="49">
                    </div>
                </div>
    
            </div>
            <!-- 发票信息 END-->
            
            <!-- 商品清单 -->
            <div class="clr20"></div>
            <div class="box-hd">
                <h2 class="title" style="border-bottom: #fff solid 1px;">确认商品及优惠券</h2>
            </div>
            <div class="box-bd">
                <dl class="checkout-goods-list">
                    <dt>
                        <span class="col-2">商品名称</span>
                        <span class="col-2">单品价格</span>
                        <span class="col-2">购买数量</span>
                        <sapn class="col-2">小计</sapn>
                        <span class="col-2">操作</span>
                    </dt>
                   
                    <c:forEach items="${list1 }" var="o">
                    <dd>
                        <div class="item-row">
                            <div class="col-2">
                                <div class="g-pic"><img src="${ctx }/images/board1.jpg" width="40" height="40" /></div>
                                <div ><a href="#" target="_blank">${o.product.productName }</a></div>
                            </div>
                            <div class="col-2">${o.product.price }</div>
                            <div class="col-2">${o.count }</div>
                            <div class="col-2"><font color="#FF0000">${o.product.price * o.count }</font></div>
                        	<%-- <div class="col-2"><a href="${ctx }/order/delOne?productId=${o.product.id }"><img src="${ctx }/images/trash.gif"/></a></div> --%>
                        </div>
                    </dd>
                   </c:forEach> 
                </dl>       
			</div>
			<!-- 商品清单 end -->
            
            <!-- 结账 -->
            <div class="checkout-count">
            	<div class="checkout-count-extend">
                	<ul>
                    	<li><a href="javascript:;"><i class="icon-check"></i><p>仅显示特惠商品</p></a></li>
                        <li><a href="javascript:;"><i class="icon-check"></i><p>+1元得礼品包装：环保手提礼品袋</p></a></li>
                    </ul>
                </div>
                <div class="checkout-price">
                    <p><span>商品件数：</span><strong><%=session.getAttribute("count") %>件</strong></p>
                    <p><span>金额合计：</span><strong><%=session.getAttribute("totalprice") %>元</strong></p>
                    <p><span>活动优惠：</span><strong>0元</strong></p>
                    <p><span>优惠券抵扣：</span><strong>0元</strong></p>
                    <p><span>运费：</span><strong>0元</strong></p>
                    <p class="ze"><span>应付总额：</span><strong><%=session.getAttribute("totalprice") %><i>元</i></strong></p>
                </div>
            </div>
            <!-- 结账 end -->
            
            <div class="box-ft">
           		<a href="${ctx }/order/delAll" class="modify">取消订单</a>
            	<a href="${ctx }/order/commitOrder" class="next">立即下单</a>
                <a href="${ctx }/checkout.jsp" class="modify">返回购物车修改</a>
			</div>
            

        </div>
        </form>
	
		
<!--//menu-->
<!--seller-->
				

<!--//seller-->
<!--tag-->
				
		
		<div class="clearfix"> </div>
	</div>
<!--//content-->
<!--footer-->
<div class="footer">
	
	<div class="footer-bottom">
		<div class="container">
				<div class="col-md-3 footer-bottom-cate">
					<h6>Categories</h6>
					<ul>
						<li><a href="#">Curabitur sapien</a></li>
						<li><a href="#">Dignissim purus</a></li>
						<li><a href="#">Tempus pretium</a></li>
						<li><a href="#">Dignissim neque</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
						
					</ul>
				</div>
				<div class="col-md-3 footer-bottom-cate">
					<h6>Feature Projects</h6>
					<ul>
						<li><a href="#">Curabitur sapien</a></li>
						<li><a href="#">Dignissim purus</a></li>
						<li><a href="#">Tempus pretium</a></li>
						<li><a href="#">Dignissim neque</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
						
					</ul>
				</div>
				<div class="col-md-3 footer-bottom-cate">
					<h6>Top Brands</h6>
					<ul>
						<li><a href="#">Curabitur sapien</a></li>
						<li><a href="#">Dignissim purus</a></li>
						<li><a href="#">Tempus pretium</a></li>
						<li><a href="#">Dignissim neque</a></li>
						<li><a href="#">Ornared id aliquet</a></li>
						<li><a href="#">Ultrices id du</a></li>
						<li><a href="#">Commodo sit</a></li>
						
					</ul>
				</div>
				<div class="col-md-3 footer-bottom-cate cate-bottom">
					<h6>Our Address</h6>
					<ul>
						<li>Aliquam metus  dui. </li>
						<li>orci, ornareidquet</li>
						<li> ut,DUI.</li>
						<li>nisi, dignissim</li>
						<li>gravida at.</li>
						<li class="phone">PH : 6985792466</li>
					</ul>
				</div>
				<div class="clearfix"> </div>
				<p class="footer-class">Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
			</div>
	</div>
	</div>
</div>

<!--//footer-->
</body>
</html>