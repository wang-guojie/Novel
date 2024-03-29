<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>起纵看书网</title>
    <link rel="stylesheet" href="css/basic.min.css" />
    <link rel="stylesheet" href="css/search.min.css"/>
    <link rel="stylesheet" href="css/store.css" />
</head>
<c:if test="${pagelist eq null}">
<script>
location.href="checkServlet?op=searchlikebook&index=1";
</script>

</c:if>
<body scriptSign="search" sort="">

<div class="head-fixed head-simple">
   
<div class="wrap">
       <div class="head-top clearfix">
           <div class="logo imgbox fl"><a href="default.jsp"><img src="picture/logo.png" alt="logo"></a></div>
           <input type="hidden" id="authoird" value="${au.authorid}">
        <form action="checkServlet?op=searchlikebook" method="post">
           <div class="search-box">
          <input class="search-text fl" name="bookname" type="text" placeholder="雪中悍刀行"  value="">
          <input type="submit" class="search-btn fr" >
        
           </div>
        </form>

            <input type="hidden" name="authorid" id="authorid" value=1>
           <div class="pay fr"><a class="user_pay" href="http://pay.zongheng.com">充值</a></div>
           <div class="menu clearfix">
               <a href="/">首页</a>
               <div class="cate tabA">
                   <a href="#">分类<em class="icon"></em></a>
                   <div class="tabA-float cate-cell">
                       <ul>
                       	<li><a href="http://www.zongheng.com/category/1.html">奇幻玄幻</a></li>
                        <li><a href="http://www.zongheng.com/category/3.html">武侠仙侠</a></li>
                        <li><a href="http://www.zongheng.com/category/6.html">历史军事</a></li>
                        <li><a href="http://www.zongheng.com/category/9.html">都市娱乐</a></li>
                        <li><a href="http://www.zongheng.com/category/21.html">竞技同人</a></li>
                        <li><a href="http://www.zongheng.com/category/15.html">科幻游戏</a></li>
                        <li><a href="http://www.zongheng.com/category/18.html">悬疑灵异</a></li>
                        <li><a href="http://www.zongheng.com/category/40.html">二次元</a></li>
                       </ul>
                   </div>
               </div>
               <a href="http://www.zongheng.com/rank.html">排行</a>
               <a href="javascript:;">书库</a>
               <a href="http://book.zongheng.com/store/c0/c0/b0/u0/p1/v9/s1/t0/u0/i1/ALL.html">完本</a>
               <a href="checkServlet?op=zuojiazhuanqu&authorid=1">作者专区</a>
           </div>
            
<div class="right-wrap-login ud_userTox">
    <div class="unlogin ud_unlogin clearfix">
    </div>
    <div class="logon ud_loged clearfix" style="display:none;">
        <div class="user tabA imgbox">
        <img  class="ud_avatar ud_goUsrCenter" src="picture/book.png" alt="">
            <div class="user-blank tabA-float">
                <a href="javascript:void(0);" class="quit ud_logout">退出</a>
                <div class="user-name ud_goUsrCenter"><span class="ud_nickName"></span><em class="icon"></em></div>
                <div class="user-info clearfix">
                    <div class="user-info-cell ud_money">
                        <span class="item_loading"></span>
                    </div>
                    <div class="user-info-cell ud_ticket">
                        <span class="item_loading"></span>
                    </div>
                    <div class="user-info-cell ud_mticket">
                        <span class="item_loading"></span>
                    </div>
                </div>
                <a href="http://pay.zongheng.com" class="btn">立即充值</a>
            </div>
        </div>
        <div class="message">
            <!--<a href="http://home.zongheng.com/msgIn.do" class="mes">消息(<span class="ud_umessage"></span>)</a>
        </div>
        <div class="shelf"><a href="//home.zongheng.com/favoritesBook.do">书架</a></div>
        <div class="foot-mark tabA">-->
            <span class="mark clearfix">历史<em class="icon"></em></span>
            <div class="tabA-float float-mark clearfix">
                <!-- loading -->
                <div class="ud_hisloading">
                        <span class="item_loading"></span>
                </div>
                <!-- 没有记录 -->
                <div class="ud_noHistory" style="display: none">
                  <h2>亲爱的书友，您暂时没有阅读记录~</h2>
                  <div class="tips">阅读记录只保存最近阅读的5本小说</div>
                  <div class="enter"><a href="http://home.zongheng.com/favoritesBook.do">进入我的书架</a></div>
                </div>
                <!-- 有记录 -->
                <div class="ud_hasHistory" style="display: none"><ul class="mark-list"></ul></div>
            </div>
        </div>
    </div>
</div>

        </div>
    </div>
</div>
<div class="wrap">

<div class="head">
	<div class="head-top clearfix">
		<div class="logo imgbox fl">
		<a href="default.jsp"><img src="images/logo.png" alt="logo"></a>
		</div>
		
				<form id="commSearch"  method="post"
			action="checkServlet?op=searchlikebook">
					 <select style="margin-left: -430px;margin-top: 2px;width: 80px;height: 30px;" name="typeid">
			<option value="-1">请选择</option>
					<c:forEach items="${booktypelist}" var="type">
			<option value="${type.bookid}">${type.booktype}</option>		
					</c:forEach> 
           
           
           </select>
			<div class="search-box fl" data-hook="searchSuggest">
				
          
				<input class="search-text fl" name="bookname" type="text"
					placeholder="雪中悍刀行"/>
			
					 <input type="submit" class="search-btn fr" />
					 
			</div>
			
		</form>
		<div class="pay fr">

		</div>
		
<div class="right-wrap-login ud_userTox">
    <div class="unlogin ud_unlogin clearfix">
       <!--  <div class="login fl"><a class="user_login" href="https://passport.zongheng.com">登录</a></div>
        <div class="regist fl"><a class="user_register" href="https://passport.zongheng.com/webreg">注册</a></div>
        -->
           <div class="login fl"><a class="user_login" href="javascript:;" onclick="searchauthor()">个人信息</a></div>
       
    </div>
    <div class="logon ud_loged clearfix" style="display:none;">
        <div class="user tabA imgbox">
        <img  class="ud_avatar ud_goUsrCenter" src="picture/book.png" alt="">
            <div class="user-blank tabA-float">
                <a href="javascript:void(0);" class="quit ud_logout">退出</a>
                <div class="user-name ud_goUsrCenter"><span class="ud_nickName"></span><em class="icon"></em></div>
                <div class="user-info clearfix">
                    <div class="user-info-cell ud_money">
                        <span class="item_loading"></span>
                    </div>
                    <div class="user-info-cell ud_ticket">
                        <span class="item_loading"></span>
                    </div>
                    <div class="user-info-cell ud_mticket">
                        <span class="item_loading"></span>
                    </div>
                </div>
                <a href="http://pay.zongheng.com" class="btn">立即充值</a>
            </div>
        </div>
        <div class="message">
            <a href="http://home.zongheng.com/msgIn.do" class="mes">消息(<span class="ud_umessage"></span>)</a>
        </div>
        <div class="shelf"><a href="//home.zongheng.com/favoritesBook.do">书架</a></div>
        <div class="foot-mark tabA">
            <span class="mark clearfix">历史<em class="icon"></em></span>
            <div class="tabA-float float-mark clearfix">
                <!-- loading -->
                <div class="ud_hisloading">
                        <span class="item_loading"></span>
                </div>
                <!-- 没有记录 -->
                <div class="ud_noHistory" style="display: none">
                  <h2>亲爱的书友，您暂时没有阅读记录~</h2>
                  <div class="tips">阅读记录只保存最近阅读的5本小说</div>
                  <div class="enter"><a href="http://home.zongheng.com/favoritesBook.do">进入我的书架</a></div>
                </div>
                <!-- 有记录 -->
                <div class="ud_hasHistory" style="display: none"><ul class="mark-list"></ul></div>
            </div>
        </div>
    </div>
</div>

	</div>
	<div class="nav clearfix">
		<div class="menu-left fl">
			<a  href="checkServlet?op=searchlikebook">首页<em></em></a>
			<a 
				href="javascript:;" onclick="shuku()">完本<em></em></a>
				 
		
			<div class="app-menu tabA">
		
				<div class="app-float tabA-float">
					<div class="tit">纵横小说 原创精品</div>
					<div class="imgbox tabC_wap">
						<div class="tabC" style="display: block;">
							<img src="picture/ad-float.png"
								alt="">
						</div>
						<div class="tabC">
							<img src="picture/ios-float.png"
								alt="">
						</div>
						<div class="tabC">
							<img src="picture/wx-float.png"
								alt="">
						</div>
					</div>
					<div class="tabT_wap app-down">
						<span class="tabT ad active"></span> <span class="tabT ios"></span>
						<span class="tabT wx"></span>
					</div>
				</div>
			</div>
		</div>
		<div class="menu-right fr">
			<a href="javascript:;" class="author_zone" onclick="zuojiazhuanqu()">作者专区<em></em></a>
			<a href="http://game.zongheng.com" class="game_center">游戏中心<em></em></a>
		</div>
	</div>
</div>
<div class="h10-blank"></div>
<div class="search-html-box clearfix">
    <div class="search-main fl" id="sousuo">
        
                
                    <div class="search-tips">共搜索到${pagelist.datacount}部与“<span id="queryword">${book}</span>”相关结果</div>
                
                <div class="search-tab">
                    
                    <c:forEach  items="${pagelist.list}" var="n">
                        <div class="search-result-list clearfix">
                        
                            <div class="imgbox fl se-result-book">
                                <a href="checkServlet?op=searchbookinfo&bookid=${n.bookid}" target="_blank" data-sa-d='{"page_module":"searchResPage","click_name":"book","book_id":"189169"}'>
                                    <img style="width: 100px; height: 132px" src="${n.images}" onerror="this.src='http://static.zongheng.com/upload/fm_big.gif';this.onerror=null;">
                                </a>
                            </div>
                            <div class="fl se-result-infos">
                                <h2 class="tit"><a href="checkServlet?op=searchbookinfo&bookid=${n.bookid}" target="_blank" data-sa-d='{"page_module":"searchResPage","click_name":"book","book_id":"189169"}'><font color="RED">${n.bookname}</font></a></h2>

                                <div class="bookinfo">
                                    <a href="http://home.zongheng.com/show/userInfo/166130.html" target="_blank" data-sa-d='{"page_module":"searchResPage","click_name":"book","book_id":"189169"}'>${n.author.authorname }</a>
                                    <em>|</em><a href="http://www.zongheng.com/category/1.html" target="_blank" data-sa-d='{"page_module":"searchResPage","click_name":"book","book_id":"189169"}'>${n.type.booktype}</a>
                                    <em>|</em><span>${n.bookstate }</span>
                                    <em>|</em><span>${n.booknumber}字</span></div>
                                <p>———${n.bookoutline }</p>
                                <div class="key-word">关键词：${n.booktitle }
								</div>
                            </div>
                            <div class="btn">
                                <a href="checkServlet?op=searchbookinfo&bookid=${n.bookid}" target="_blank" class="bkinfo" data-sa-d='{"page_module":"searchResPage","click_name":"book","book_id":"189169"}'>书籍详情</a>
                                <a href="javascript:;"  onclick="addcollection(${n.bookid},this)" class="addshelf">加入书架</a>
                            </div>
                            
                        </div>
                        </c:forEach>
                    
                    <div class="h20-blank"></div>
                    <div class="search_d_pagesize">
                    		
                    				<a href="checkServlet?op=searchlikebook&index=${pagelist.indexpage-1}&bookname=${book}&typeid=${typeid}" class="search_d_pre" >‹</a>
                    			
				        	
				        		
				        				
				        
				        	
				        		
				        				<a href="checkServlet?op=searchlikebook&index=1&bookname=${book}&typeid=${typeid}" class="">1</a>
				        			
				        	
				        	
				        			<a href="checkServlet?op=searchlikebook&index=${pagelist.indexpage+1}&bookname=${book}&typeid=${typeid}" class="search_d_next">›</a>
				        		
                        
                        <span>共${pagelist.totalpage}</span>页
                    	
                    </div>
                    
                    <div class="h40-blank">
                    
                    </div>
                    
                </div>
            
            
            
            
            
            
    </div>



<div class="search-side fr" id="celan">
        <div class="search-side-con">
            <div class="se-side-tit">大家都在搜</div>
               
               	<div class="se-side-cell clearfix" data-bookId="672340">
                       <div class="imgbox fl se-side-book">
                           <a href="http://book.zongheng.com/book/672340.html" target="_blank">
                               <img src="http://static.zongheng.com/upload/cover/2017/05/1496234539057.JPG" alt="">
                           </a>
                       </div>
                       <div class="se-side-info fl">
                           <div class="bookname"><a href="http://book.zongheng.com/book/672340.html" target="_blank">剑来</a></div>
                           <div class="bookinfo"><a href="http://home.zongheng.com/show/userInfo/166130.html" target="_blank">烽火戏诸侯</a><em>|</em><a href="http://www.zongheng.com/category/3.html" target="_blank">武侠仙侠</a></div>
                           <p class="b-infos">大千世界，无奇不有。
我陈平安，唯有一剑，可搬山，倒海，降妖，镇魔，敕神，摘星，断江，摧城，开天！</p>
                       </div>
                   </div>
               
               	<div class="se-side-cell clearfix" data-bookId="730066">
                       <div class="imgbox fl se-side-book">
                           <a href="http://book.zongheng.com/book/730066.html" target="_blank">
                               <img src="http://static.zongheng.com/upload/cover/2c/1f/2c1fe294306eea58638e7d07a12a7628.jpeg" alt="">
                           </a>
                       </div>
                       <div class="se-side-info fl">
                           <div class="bookname"><a href="http://book.zongheng.com/book/730066.html" target="_blank">点道为止</a></div>
                           <div class="bookinfo"><a href="http://home.zongheng.com/show/userInfo/284372.html" target="_blank">梦入神机</a><em>|</em><a href="http://www.zongheng.com/category/9.html" target="_blank">都市娱乐</a></div>
                           <p class="b-infos">功夫究竟是什么？

花架子还是杀人技？

三千年冷兵器战争和无数民间私斗酝酿出来的把式，究竟是不是骗局？

国术流开创者，功夫小说第一人梦入神机，在本书中为您揭秘。

止戈为武，点到为止。

“你若无敌，将会如何？”

“得饶人处且饶人。”</p>
                       </div>
                   </div>
               
               	<div class="se-side-cell clearfix" data-bookId="735577">
                       <div class="imgbox fl se-side-book">
                           <a href="http://book.zongheng.com/book/735577.html" target="_blank">
                               <img src="http://static.zongheng.com/upload/cover/ff/83/ff835851b6c6c44d8199839e770447c0.jpeg" alt="">
                           </a>
                       </div>
                       <div class="se-side-info fl">
                           <div class="bookname"><a href="http://book.zongheng.com/book/735577.html" target="_blank">帝道独尊</a></div>
                           <div class="bookinfo"><a href="http://home.zongheng.com/show/userInfo/12775608.html" target="_blank">一叶青天</a><em>|</em><a href="http://www.zongheng.com/category/1.html" target="_blank">奇幻玄幻</a></div>
                           <p class="b-infos">天地初始，宇宙洪荒；奇门九遁，布道星空。
当地球尘封万古的雪山龙棺移位时刻，诛天大道临世，神魔文明到来，宇宙如同撕裂枷锁的神魔，演化着一个精彩绝伦的修行世界。
仙命少年从弱小中崛起，一步步踏向宇宙星海，战万界，伐仙穹......
作者微信公众号“一叶青天”，VIP订阅群：434739889</p>
                       </div>
                   </div>
               
               	<div class="se-side-cell clearfix" data-bookId="751819">
                       <div class="imgbox fl se-side-book">
                           <a href="http://book.zongheng.com/book/751819.html" target="_blank">
                               <img src="http://static.zongheng.com/upload/cover/da/df/dadf3f130bdc7d9dc666fb20622902bb.jpeg" alt="">
                           </a>
                       </div>
                       <div class="se-side-info fl">
                           <div class="bookname"><a href="http://book.zongheng.com/book/751819.html" target="_blank">长宁帝军</a></div>
                           <div class="bookinfo"><a href="http://home.zongheng.com/show/userInfo/1185346.html" target="_blank">知白</a><em>|</em><a href="http://www.zongheng.com/category/6.html" target="_blank">历史军事</a></div>
                           <p class="b-infos">这个天下大大小小数百国，说到陆地武功宁国近乎无敌，有四疆四库的虎狼横扫六合，陆地延伸到哪儿，宁军就能把战旗插到哪儿，可是海疆之外虎狼不及之处总有些人不服气，于是就有了那少年带刀扬戟，一苇渡江。</p>
                       </div>
                   </div>
               
               	<div class="se-side-cell clearfix" data-bookId="325639">
                       <div class="imgbox fl se-side-book">
                           <a href="http://book.zongheng.com/book/325639.html" target="_blank">
                               <img src="http://static.zongheng.com/upload/cover/2016/06/1467096066539.jpg" alt="">
                           </a>
                       </div>
                       <div class="se-side-info fl">
                           <div class="bookname"><a href="http://book.zongheng.com/book/325639.html" target="_blank">星辰之主</a></div>
                           <div class="bookinfo"><a href="http://home.zongheng.com/show/userInfo/53793.html" target="_blank">减肥专家</a><em>|</em><a href="http://www.zongheng.com/category/15.html" target="_blank">科幻游戏</a></div>
                           <p class="b-infos">世纪之交，人类懵懂着踏入星空，就此暴露在诸神的视线之下。少年罗南背负着祖父的罪孽，走出实验室，且看他：
高举燃烧的笔记，脚踏诸神的尸骨；
书写万物的格式，增删宇宙的星图。
当知：万物皆备于我；必信：吾心即是宇宙。
书友群：474391549</p>
                       </div>
                   </div>
               
        </div>
    </div>
</div>













<!-- 搜索主内容 -->
<div class="store_list_wrap" style="display: none;" id="quanbu">
            <div class="store_collist">
            
    <c:forEach  items="${allnovel}" var="pn">
 <div class="bookbox fr">
                    <div class="bookimg">
                        <a href="http://book.zongheng.com/book/864726.html" target="_blank">
                            <img src="${pn.images}" alt="">
                        </a>
                    </div>
                    <div class="bookinfo">
                        <div class="bookname">
                            <a href="checkServlet?op=searchbookinfo&bookid=${pn.bookid}" target="_blank">${pn.bookname}</a>
                        </div>
                        <div class="bookilnk">
                            <a href="http://home.zongheng.com/show/userInfo/50759580.html" target="_blank">${pn.author.authorname}</a>|
                            <a href="http://www.zongheng.com/category/15.html" target="_blank">${pn.type.booktype}</a>|
                            <span>
                            	
                            	${pn.bookstate}
                            
                        	</span>
                       
                        </div>
                        <div class="bookintro">${pn.bookoutline}</div>
                        <div class="bookupdate">
                            <a href="javascript:;" class="fl">字数${pn.booknumber}&nbsp;&nbsp;点赞${pn.clicks}</a>
                            <span class="rank_d_b_time"></span>
                        </div>
                      </div>
                    </div>
                        </c:forEach>
                </div>
                
</div>

</div>
<!-- end搜索主内容 -->
</div>
<div class="footer">
    
<div class="partlink">
    <div class="wrap">
        <div class="title">出版合作联系</div>
        <div class="clearfix">
            <div class="mail fl">
                
                <div>版权合作联系人：许先生<a href="mailto:xubin@zongheng.com">xubin@zongheng.com</a></div>
                
                <div>广告合作联系人 : 张女士<a href="mailto:zhangwen@zongheng.com">zhangwen@zongheng.com</a></div>
                
            </div>
            <div class="help-btn">
                <a class="btn" href="http://www.zongheng.com/help/index.html">帮助中心</a>
                <p>服务时间：24小时</p>
            </div>
            <div class="b1 foot-cell">
                <div class="tit">客服</div>
                <div class="qq">965151179</div>
                <div class="email"><a href="mailto:zhkf@zongheng.com">zhkf@zongheng.com</a></div>
            </div>
            <div class="b2 foot-cell">
                <div class="tit">举报</div>
                <div class="tel">4006289988</div>
                <div class="email"><a href="mailto:jubao@zongheng.com">jubao@zongheng.com</a></div>
            </div>
            <div class="app foot-blank">
                <div class="imgbox fl">
                    <img src="picture/app.png" alt="">
                </div>
                <p>客户端下载</p>
            </div>
            <div class="wchat foot-blank">
                <div class="imgbox fl">
                    <img src="picture/wx.png" alt="">
                </div>
                <p>微信公众号</p>
            </div>
        </div>
    </div>
</div>
<div class="copyright">
    <div class="links"><a href="http://www.zongheng.com/company/about.html" target="_blank">关于读书网</a>|
    <a href="http://www.zhwenxue.com/join" target="_blank">诚聘英才</a>|
    <a href="http://www.zongheng.com/company/business.html" target="_blank">商务合作</a>|
    <a href="http://www.zongheng.com/company/copyright.html" target="_blank">法律声明</a>|
    <a href="http://www.zongheng.com/help/index.html" target="_blank">帮助中心</a>|
    <a href="http://author.zongheng.com" target="_blank">作者投稿</a>|
    <a href="http://www.zongheng.com/company/contact.html" target="_blank">联系我们</a>|
    <a href="http://www.zongheng.com/company/link.html" target="_blank">友情链接</a>|
    <a href="http://news.zongheng.com/zhuanti/wlqz/index.html" target="_blank">谨防诈骗</a>|
    <a href="http://www.zongheng.com/company/sitemap.html" target="_blank">网站地图</a></div>
    <p>Copyright©<a href="" target="_blank">www.zongheng.com</a>All Rights Reserved 版权所有徐州读书网络技术有限公司
		    <a href="http://static.zongheng.com/v2018/images/zs/icp.jpg" target="_blank">苏ICP证080527号</a>   
		    <a href="http://www.miitbeian.gov.cn/publish/query/indexFirst.action" target="_blank">苏ICP备11009265号</a>   
		    <a href="http://static.zongheng.com/v2018/images/zs/jww.jpg" target="_blank">苏网文[2018]10695-962号</a></p>
	    <p>
		    <a href="http://static.zongheng.com/v2018/images/zs/cbw.jpg" target="_blank">新出发京零字第朝130010号</a>  丨  统一社会信用代码91110105678221683F  丨 
		    <a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010502030124" target="_blank">京公网安备 11010502030124号</a>  丨 
		    <a href="http://www.cyberpolice.cn/wfjb" target="_blank">公安部网络违法犯罪举报网站</a>
		</p>
    <p><a href="" target="_blank">纵横小说网</a>,提供<a href="/category/1.html" target="_blank">玄幻小说</a>,<a href="/category/9.html" target="_blank">都市小说</a>,<a href="http://huayu.zongheng.com" target="_blank">言情小说</a>等<a href="/store/c0/c0/b0/u0/p1/v0/s9/t0/u0/i1/ALL.html" target="_blank">免费小说</a>阅读。作者发布小说作品时，请遵守国家互联网信息管理办法规定。</p>
    <p>本站所收录小说作品、社区话题、书库评论均属其个人行为，不代表本站立场。</p>
</div>

</div>
</body>
	<c:if test="${au != null }">
		<p id="lo" hidden>${au.authorid}</p>
		<p id="loname" hidden>${au.authorname}</p>
	</c:if> <c:if test="${au == null }">
		<p id="lo" hidden></p>
	</c:if>
</html>

<script src="js/jquery-1.12.4.js"></script>
<script>




function addcollection(bookid,a){
	
	var authorid=$("#lo").html();
	//$(a).attr("disabled","true");
 	if(authorid=="")
	{
		if(confirm("还没登录，请登录后再收藏！"))
		{
			location.href="default.jsp";
		}
	}else{
		
	$.post(
	 "checkServlet",
	 "op=toaddcollection&bookid="+bookid+"&authorid="+authorid,
	  function(r)
	  {
		 if(r.r=="1")
		 {
			 alert("收藏失败,已经收藏过啦!");
			
		 }else{
			 $.post(
			 "checkServlet",
			  "op=addcollection&bookid="+bookid+"&authorid="+authorid, 
			 function(rs)
			 {
				 if(rs.r=="1")
				 {
					$(a).css("color","#cfcdcd","border-color","#e6e6e6");
					 $(a).html("已收藏");
				 }
				 },"json");
			 }
			  
		 }
	  
	,"json");	
}
}
 	
 	
 	
 
function shuku()
	{
	 $("#sousuo").hide();
	 $("#quanbu").show();
	 $("#celan").hide();
	}
 	

 	
 	
 	function searchauthor()
 	{

 		var authorid=$("#lo").html();
 		if(authorid=="")
 		{
 			if(confirm("您还未登录，无法查看个人信息"))
 			{
 				
 				location.href="denglu.jsp";
 			}
 		}else{
				
				location.href="checkServlet?op=searchshujia&authorid="+authorid;
			}
 		
 	}
 	
 	
 	function  zuojiazhuanqu(){
 		
 		var authorid=$("#lo").html();
 		if(authorid=="")
 		{
 			if(confirm("您还未登陆，无法查看此专区"))
 			{
 				location.href="denglu.jsp";
 			}
 		}else{
 			
 			location.href="checkServlet?op=zuojiazhuanqu&authorid="+authorid;
 		}
 	}
</script>