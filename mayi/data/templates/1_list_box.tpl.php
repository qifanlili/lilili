<? if(!defined('IN_MYMPS')) exit('Access Denied');
/*Mymps分类信息系统
官方网站：http://www.mymps.com.cn*/?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="<?=$mymps_global['SiteUrl']?>/template/default/js/uaredirect.js" type="text/javascript"></script>
<script type="text/javascript">uaredirect("<?=$mymps_global['SiteUrl']?>/m/index.php?mod=category&catid=<?=$catid?>&cityid=<?=$cityid?>");</script>
<meta name="keywords" content="<?=$cat['keywords']?>" />
<meta name="description" content="<?=$cat['description']?>" />
<title><?=$page_title?></title>
<link rel="shortcut icon" href="<?=$mymps_global['SiteUrl']?>/favicon.ico" />
<link rel="stylesheet" href="<?=$mymps_global['SiteUrl']?>/template/default/css/global.css" />
<link rel="stylesheet" href="<?=$mymps_global['SiteUrl']?>/template/default/css/style.css" />
<link rel="stylesheet" href="<?=$mymps_global['SiteUrl']?>/template/default/css/category.css" />
<link rel="stylesheet" href="<?=$mymps_global['SiteUrl']?>/template/default/css/pagination2.css" />
<script src="<?=$mymps_global['SiteUrl']?>/template/default/js/global.js" type="text/javascript"></script>
<script src="<?=$mymps_global['SiteUrl']?>/template/default/js/jquery.min.js" type="text/javascript"></script>
</head>

<body class="<?=$mymps_global['cfg_tpl_dir']?> full bodybg<?=$mymps_global['cfg_tpl_dir']?><?=$mymps_global['bodybg']?>"><script type="text/javascript">var current_domain="<?=$mymps_global['SiteUrl']?>";var current_cityid="<?=$city['cityid']?>";var current_logfile="<?=$mymps_global['cfg_member_logfile']?>";</script>
<div class="bartop">
<div class="barcenter">
<div class="barleft">
<ul class="barcity">欢迎来到<?=$mymps_global['SiteName']?>！</ul> 
<ul class="line"><u></u></ul>
            <ul class="barcang"><a href="<?=$mymps_global['SiteUrl']?>/desktop.php" target="_blank" title="点击右键，选择“目标另存为”，将此快捷方式保存到桌面即可">保存到桌面</a></ul>
<ul class="line"><u></u></ul>
<ul class="barpost"><a href="<?=$mymps_global['SiteUrl']?>/<?=$mymps_global['cfg_postfile']?>?cityid=<?=$cityid?>">快速发布信息</a></ul>
<ul class="line"><u></u></ul>
<ul class="bardel"><a href="<?=$mymps_global['SiteUrl']?>/delinfo.php?cityid=<?=$cityid?>" rel="nofollow">修改/删除信息</a></ul>
<ul class="line"><u></u></ul>
<ul class="barwap"><a href="<?=$mymps_global['SiteUrl']?>/mobile.php?cityid=<?=$cityid?>">手机浏览</a></ul>
</div>
<div class="barright" id="iflogin"><img src="<?=$mymps_global['SiteUrl']?>/images/loading.gif" border="0" align="absmiddle"></div>
</div>
</div>
<div class="clear"></div>
<!--顶部横幅广告开始-->
<div id="ad_topbanner"></div>
<!--顶部横幅广告结束-->
<div class="clearfix"></div>
<div class="logosearchtel">
<div class="weblogo"><a href="<?=$city['domain']?>"><img src="<?=$mymps_global['SiteUrl']?><?=$mymps_global['SiteLogo']?>" title="<?=$mymps_global['SiteName']?>" border="0"/></a></div>
    <div class="webcity">
    	<span><? if($city['cityname']) { echo cutstr($city['cityname'],8,'...'); ?><?php } else { ?>总站<?php } ?></span><br><a href="<?=$mymps_global['SiteUrl']?>/changecity.php">切换分站</a>
    </div>
    <div class="webcity2" style="display:none;">
    	<div class="curcity"><? if($city['cityname']) { ?><?=$city['cityname']?><?php } else { ?>总站<?php } ?> <a href="<?=$mymps_global['SiteUrl']?>/changecity.php">切换分站</a></div>
        <div class="clearfix"></div>
    	<ul>
        <?php if(!$hotcities) $hotcities=get_hot_cities(); ?>            <?php if(is_array($hotcities)){foreach($hotcities as $k) { ?>        	<a href="<?=$k['domain']?>"><?=$k['cityname']?></a>
            <?php }} ?>
        </ul>
    </div>
    <div class="postedit">
<a class="post" href="<?=$mymps_global['SiteUrl']?>/<?=$mymps_global['cfg_postfile']?>?catid=<?=$catid?>&cityid=<?=$cityid?>">免费发布信息</a>
</div>
<div class="websearch">
    	<div class="s_ulA" id="searchType">
            <ul>
                <li name="s8" id="s8_information" onclick="show_tab('information');" class="current"><a href="javascript:void(0);">信息</a></li>
<li name="s8" id="s8_store" onclick="show_tab('store');" ><a href="javascript:void(0);">商家</a></li>
                <li name="s8" id="s8_news" onclick="show_tab('news');" ><a href="javascript:void(0);">资讯</a></li>
                <li name="s8" id="s8_goods" onclick="show_tab('goods');" ><a href="javascript:void(0);">商品</a></li>
            </ul>
        </div>
        <div class="clearfix"></div>
<div class="sch_t_frm">
<form method="get" action="<?=$mymps_global['SiteUrl']?>/search.php?" id="searchForm" target="_blank">
            <input name="cityid" type="hidden" value="<?=$cityid?>">
            <input type="hidden" id="searchtype" name="mod" value="information"/>
<div class="sch_ct">
<input type="text" class="topsearchinput" value="请输入关键词或分类名" name="keywords" id="searchheader" onmouseover="if(this.value==='请输入关键词或分类名'){this.value='';}" x-webkit-speech lang="zh-CN"/>
</div>
<div>
<input type="submit" value="搜 索" class="btn-normal"/>
</div>
</form>
</div>
        <div class="clearfix"></div>
        <? if($navurl_head = mymps_get_navurl('head',20)) { ?>
        <div class="s_ulC">
        <ul>
        <?php if(is_array($navurl_head)){foreach($navurl_head as $k => $mymps) { ?>        <li><a href="<?=$mymps['url']?>" style="color:<?=$mymps['color']?>" target="<?=$mymps['target']?>" title="<?=$mymps['title']?>"><?=$mymps['title']?><sup class="<?=$mymps['ico']?>"></sup></a></li>
        <?php }} ?>
        </ul>
        </div>
        <?php } ?>
</div>
</div>
<div class="clear"></div><? if($mymps_global['head_style'] == 'normal') { ?>
<div class="body1000">
<div class="daohang_con2">
    <div class="daohang2">
        <ul>
            <li><a href="<?=$city['domain']?>" id="index">首页</a></li>
            <?php $navurl_header = mymps_get_navurl('header',15); ?>            <?php if(is_array($navurl_header)){foreach($navurl_header as $k => $mymps) { ?>            <li><a <? if($mymps['flag'] == $cat['catid'] || $mymps['flag'] == $cat['parentid']) { ?>class="current"<?php } ?> target="<?=$mymps['target']?>" id="<?=$mymps['flag']?>" href="<? if($mymps['flag'] != 'outlink') { ?><?=$city['domain']?><?php } ?><?=$mymps['url']?>"><font color="<?=$mymps['color']?>"><?=$mymps['title']?></font><sup class="<?=$mymps['ico']?>"></sup></a></li>
            <?php }} ?>
        </ul>
    </div>
</div>
<div class="clearfix"></div>
<div id="ad_header"></div>
<div class="clearfix"></div>
<?php } else { ?>
<div class="body1000">
<div class="daohang_con">
    <div class="categories">
        <dl id="infomenu">
        <dt class="titup"><b>信息分类</b></dt>
        <dd class="cont" style="display:none;">
        <ul>
        <?php $global_cat = get_categories_tree(0,'category'); ?>        <?php if(is_array($global_cat)){foreach($global_cat as $mymps) { ?>        <li>
        <em><a href="<?=$city['domain']?><?=$mymps['uri']?>" style="color:<?=$mymps['color']?>" target="_blank" title="<?=$city['cityname']?><?=$mymps['catname']?>"><?=$mymps['catname']?></a></em>
        <dl>
        <dt><b></b></dt>
        <dd>
        <?php if(is_array($mymps['children'])){foreach($mymps['children'] as $w) { ?>        <a href="<?=$city['domain']?><?=$w['uri']?>" style="color:<?=$w['color']?>" target="_blank" title="<?=$city['cityname']?><?=$w['catname']?>"><?=$w['catname']?></a>
        <?php }} ?>
        </dd>
        </dl>
        </li>
        <?php }} ?>
        </ul>
        </dd>
        </dl>
    </div>
    <div class="daohang">
        <ul>
            <li><a href="<?=$city['domain']?>" id="index">首页</a></li>
            <?php $navurl_header = mymps_get_navurl('header',15); ?>            <?php if(is_array($navurl_header)){foreach($navurl_header as $k => $mymps) { ?>            <li><a <? if($mymps['flag'] == $cat['catid'] || $mymps['flag'] == $cat['parentid']) { ?>class="current"<?php } ?> target="<?=$mymps['target']?>" id="<?=$mymps['flag']?>" href="<? if($mymps['flag'] != 'outlink') { ?><?=$city['domain']?><?php } ?><?=$mymps['url']?>"><font color="<?=$mymps['color']?>"><?=$mymps['title']?></font><sup class="<?=$mymps['ico']?>"></sup></a></li>
            <?php }} ?>
        </ul>
    </div>
</div>
<div class="clearfix"></div>
<div id="ad_header"></div>
<div class="clearfix"></div>
<script>loadDefault(['category','category_select'])</script>
<?php } ?><div class="bodybgcolor">
<div class="body1000">
<div class="clear"></div>
<div class="location">
<?=$location?>
</div>
<div class="clear"></div>
<div class="wrapper"><div id="select">
<? if($cat_list) { ?>
<dl class='fore' id='select-brand'>
<dt>栏目分类：</dt>
<dd>
<div class='content'>
    <?php if(is_array($cat_list)){foreach($cat_list as $mymps) { ?><div><a href="<?=$city['domain']?><?=$mymps['uri']?>" <? if($mymps['catid'] == $cat['catid']) { ?>class="curr"<?php } ?> title="<?=$city['cityname']?><?=$mymps['catname']?>">不限</a></div>
        <?php if(is_array($mymps['children'])){foreach($mymps['children'] as $w) { ?><div><a href="<?=$city['domain']?><?=$w['uri']?>" <? if($w['catid'] == $cat['catid']) { ?>class="curr"<?php } ?> title="<?=$city['cityname']?><?=$w['catname']?>"><?=$w['catname']?></a></div>
        <?php }} ?>
<?php }} ?>
</div>
</dd>
</dl>
    <?php } ?>
    <?php if(is_array($mymps_extra_model)){foreach($mymps_extra_model as $mymps) { ?><dl>
<dt><?=$mymps['title']?>：</dt>
<dd>
    <?php if(is_array($mymps['list'])){foreach($mymps['list'] as $w) { ?><div><a href="<?=$city['domain']?><?=$w['uri']?>" <? if($w['select'] == 1) { ?>class="curr"<?php } ?>><?=$w['name']?></a></div>
<?php }} ?>
    </dd>
</dl>
<?php }} ?>
    <? if($area_list) { ?>
<dl>
<dt>区域查找：</dt>
<dd>
    <?php if(is_array($area_list)){foreach($area_list as $mymps) { ?><div><a href="<?=$city['domain']?><?=$mymps['uri']?>" <? if($mymps['select'] == 1) { ?>class="curr"<?php } ?>><?=$mymps['areaname']?></a></div>
<?php }} ?>
</dd>
</dl>
<?php } ?>
    <? if($street_list) { ?>
<dl>
<dt></dt>
<dd>
        <?php if(is_array($street_list)){foreach($street_list as $mymps) { ?><div><a href="<?=$city['domain']?><?=$mymps['uri']?>" <? if($mymps['select'] == 1) { ?>class="curr"<?php } ?>><?=$mymps['streetname']?></a></div>
<?php }} ?>
</dd>
</dl>
<?php } ?>
    <? if(!$cityid && $hotcities) { ?>
<dl>
<dt>热门分站</dt>
<dd>
<div><a href="#" class="curr">不限</a></div>
        <?php if(is_array($hotcities)){foreach($hotcities as $mymps) { ?><div><a href="<?=$mymps['domain']?><?=$cat['caturi']?>"><?=$mymps['cityname']?></a></div>
<?php }} ?>
<div><a href="<?=$mymps_global['SiteUrl']?>/changecity.php">更多 &raquo;</a></div>
</dd>
</dl>
<?php } ?>
<dl class="lastdl">
<form method="get" action="<?=$mymps_global['SiteUrl']?>/search.php?" target="_blank">
<input name="mod" value="information" type="hidden">
<input name="catid" value="<?=$cat['catid']?>" type="hidden">
<input name="cityid" value="<?=$cityid?>" type="hidden">
        <input name="areaid" value="<?=$areaid?>" type="hidden">
<input name="streetid" value="<?=$streetid?>" type="hidden">
<input name="keywords" type="text" value="" class="searchinput" id="searchbody" onmouseover="hiddennotice('searchbody');"/>
<input type="submit" value="搜本类" class="new_searchsubmit" />
</form>
</dl>
</div></div>

<div class="clear"></div>
<div class="body1000">
<div class="new_listhd">
<div class="listhdleft">
<div><a href="#" class="currentr"><span></span><?=$city['cityname']?><?=$page_title_extra?><?=$cat['catname']?>信息</a></div>
</div>
<div class="listhdcenter">
信息总数：<span><?=$rows_num?></span> ，您知道吗？置顶发布的信息可使成交率提高50%！
</div>
<div class="listhdright">
<a href="<?=$mymps_global['SiteUrl']?>/<?=$mymps_global['cfg_postfile']?>?catid=<?=$cat['catid']?>&cityid=<?=$cityid?>" target="_blank">免费发布<?=$city['cityname']?><?=$cat['catname']?>信息>></a>
</div>
</div>
<div class="clearfix"></div>
        <? if($advertisement['type']['intercatad']) { ?>
        	<style>.list_box ul div{width:205px;}</style>
        <?php } ?>
<div id="ad_intercatdiv"></div>
<div class="infolists">
<div class="list_box">
<!--栏目列表页头部广告开始-->
<div id="ad_interlistad_top"></div>
<!--栏目列表页头部广告结束-->
<ul>
                <?php $i=1; ?><?php if(is_array($info_list)){foreach($info_list as $mymps) { ?><div class="hover <? if($mymps['upgrade_type']>1) { ?>ding<?php } ?> <? if($i%4==0) { ?>nomr<?php } ?>">
<span class="ltitle">						
<? if($mymps['img_count']) { ?><span class="img_count"><?=$mymps['img_count']?>图</span><?php } if($mymps['info_level'] == 2) { ?><span class="tuijian">推荐</span><?php } if($mymps['certify'] == 1) { ?><span class="certify">认证</span><?php } ?> <a href="<?=$mymps['uri']?>" title="<?=$mymps['title']?>" target="_blank" style="<? if($mymps['ifred'] == 1) { ?>color:red;<?php } ?> <? if($mymps['ifbold'] == 1) { ?>font-weight:bold;<?php } ?>"><?=$mymps['title']?></a>
</span>
                    <span class="clear"></span>
                    <span class="neirong">
                    <? if(!$mymps['img_path']) { ?>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<? echo cutstr(clear_html($mymps['content']),240,'...'); ?>                    <?php } else { ?>
                    <a href="<?=$mymps['uri']?>" title="<?=$mymps['title']?>" target="_blank"><img src="<?=$mymps_global['SiteUrl']?><?=$mymps['img_path']?>" border="0"></a>
                    <?php } ?>
                    </span>
                    <span class="clear"></span>
<span class="ltime">
                    	<span class="ltel"><?=$mymps['tel']?></span>
                    	<span class="ldate"><?=$mymps['areaname']?> <? echo GetTime($mymps['begintime'],'m-d'); ?></span>
                    </span>
</div>
                <?php $i=$i+1; ?><?php }} ?>
</ul>
                <div class="clearfix"></div>
<!--栏目列表页尾部广告开始-->
<div id="ad_interlistad_bottom"></div>
<!--栏目列表页尾部广告结束-->
</div>
<div class="clear"></div>
<div class="pagination2"><?=$pageview?></div>
<div class="clear"></div>
</div>
</div><div class="clear"></div>
<div class="colorfoot">
    <div class="cateintro">
        <div class="introleft"><?=$city['cityname']?><?=$cat['catname']?>频道</div>
        <div class="introright"><?=$city['cityname']?><?=$cat['catname']?>频道为您提供<?=$city['cityname']?><?=$cat['catname']?>信息，在此有大量<?=$city['cityname']?><?=$cat['catname']?>信息供您选择，您可以免费查看和发布<?=$city['cityname']?><?=$cat['catname']?>信息。</div>
    </div>
    <? if($area_list) { ?>
    <div class="clearfix"></div>
    <div class="cateintro relate">
    <div class="introleft"><?=$cat['catname']?>相关区域</div>
    <div class="introflink">
    <?php if(is_array($area_list)){foreach($area_list as $mymps) { ?>    <? if($mymps['areaid']) { ?><a href='<?=$city['domain']?><?=$mymps['uri']?>' target="_blank"><?=$mymps['areaname']?><?=$cat['catname']?></a><?php } ?>
    <?php }} ?>
    </div>
    </div>
    <?php } ?>
    <?php $nearbycities = get_nearby_cities($city['provinceid']); ?>    <? if($nearbycities) { ?>
    <div class="cateintro relate">
    <div class="introleft"><?=$cat['catname']?>附近分站</div>
    <div class="introflink">
    <?php if(is_array($nearbycities)){foreach($nearbycities as $mymps) { ?>    <? if($mymps['cityid'] != $city['cityid']) { ?>
    <a href='<?=$mymps['domain']?><?=$cat['caturi']?>' target="_blank"><?=$mymps['cityname']?><?=$cat['catname']?></a>
    <?php } ?>
    <?php }} ?>
    </div>
    </div>
    <?php } ?>
    <? if($hotcities) { ?>
    <div class="cateintro relate">
    <div class="introleft"><?=$cat['catname']?>热门分站</div>
    <div class="introflink">
    <?php if(is_array($hotcities)){foreach($hotcities as $mymps) { ?>    <a href='<?=$mymps['domain']?><?=$cat['caturi']?>' target="_blank"><?=$mymps['cityname']?><?=$cat['catname']?></a>
    <?php }} ?>
    </div>
    </div>
    <?php } ?>

    <? if($friendlink) { ?>
    <div class="clearfix"></div>
    <div class="cateintro">
    <div class="introleft">频道友情链接</div>
    <div class="introflink">
    <?php if(is_array($friendlink)){foreach($friendlink as $mymps) { ?>    <a href='<?=$mymps['url']?>' target='_blank'><?=$mymps['name']?></a>
    <?php }} ?>
    </div>
    </div>
    <?php } ?>
</div>
<script type="text/javascript" src="<?=$mymps_global['SiteUrl']?>/template/default/js/hover_bg.js"></script><div id="ad_footerbanner"></div>
<? if($advertisement['type']['floatad'] || $advertisement['type']['couplead']) { ?>
<div align="left"  style="clear: both;">
<script src="<?=$mymps_global['SiteUrl']?>/template/global/floatadv.js" type="text/javascript"></script>
<? if($advertisement['type']['couplead']) { ?>
<script type="text/javascript">
<?=$adveritems[$advertisement['type']['couplead']['0']]?>theFloaters.play();
</script>
<?php } if($advertisement['type']['floatad']) { ?>
<script type="text/javascript">
<?=$adveritems[$advertisement['type']['floatad']['0']]?>theFloaters.play();
</script>
<?php } ?>
</div>
<?php } ?>
<div style="display: none" id="ad_none">
<? if($advertisement['type']['headerbanner']) { ?>
<div class="header" id="ad_header_none"><?php $countheaderbanner = count($advertisement['type']['headerbanner']);$i=1; ?><?php if(is_array($advertisement['type']['headerbanner'])){foreach($advertisement['type']['headerbanner'] as $mymps) { if($adveritems[$mymps]) { ?><div class="headerbanner" <? if($countheaderbanner == $i) { ?>style="margin-right:0;"<?php } ?>><?=$adveritems[$mymps]?></div><?php } ?><?php $i=$i+1; ?><?php }} ?>
</div>
<?php } ?><?php if(is_array($advertisement['type']['indexcatad'])){foreach($advertisement['type']['indexcatad'] as $k => $mymps) { ?><div class="indexcatad" id="ad_indexcatad_<?=$k?>_none"><?=$adveritems[$mymps['0']]?></div>
<?php }} if($advertisement['type']['interlistad']['top']) { ?>
<div id="ad_interlistad_top_none">
<ul class="interlistdiv"><?php if(is_array($advertisement['type']['interlistad']['top'])){foreach($advertisement['type']['interlistad']['top'] as $mymps) { if($adveritems[$mymps]) { ?><li class="hover"><?=$adveritems[$mymps]?></li><?php } ?>
<?php }} ?>
</ul>
</div>
<?php } if($advertisement['type']['interlistad']['bottom']) { ?>
<div id="ad_interlistad_bottom_none">
<ul class="interlistdiv"><?php if(is_array($advertisement['type']['interlistad']['bottom'])){foreach($advertisement['type']['interlistad']['bottom'] as $mymps) { if($adveritems[$mymps]) { ?><li class="hover"><?=$adveritems[$mymps]?></li><?php } ?>
<?php }} ?>
</ul>
</div>
<?php } if($advertisement['type']['intercatad']) { ?>
<div class="intercatdiv" id="ad_intercatdiv_none"><?php if(is_array($advertisement['type']['intercatad'])){foreach($advertisement['type']['intercatad'] as $mymps) { ?><div class="intercatad"><?=$adveritems[$mymps]?></div>
<?php }} ?>
</div>
<?php } if($advertisement['type']['topbanner']) { ?>
<div class="topbanner" id="ad_topbanner_none"><?php if(is_array($advertisement['type']['topbanner'])){foreach($advertisement['type']['topbanner'] as $mymps) { ?><div class="topbannerad"><?=$adveritems[$mymps]?></div>
<?php }} ?>
</div>
<?php } if($advertisement['type']['footerbanner']) { ?>
<div class="footerbanner" id="ad_footerbanner_none"><?php if(is_array($advertisement['type']['footerbanner'])){foreach($advertisement['type']['footerbanner'] as $mymps) { ?><div class="footerbannerad"><?=$adveritems[$mymps]?></div>
<?php }} ?>
</div>
<?php } ?>
</div>
<div class="footer_new">
    <div class="foot_new">
        <div class="foot_box">
        	<div class="hd">信息管理</div>
            <div class="bd">
            	<ul>
                	<li><a target="_blank" href="<?=$mymps_global['SiteUrl']?>/<?=$mymps_global['cfg_postfile']?>?cityid=<?=$cityid?>">免费发布信息</a></li>
                    <li><a target="_blank" href="<?=$mymps_global['SiteUrl']?>/delinfo.php?cityid=<?=$cityid?>" rel="nofollow">修改/删除信息</a></li>
                    <li><a target="_blank" href="<?=$mymps_global['SiteUrl']?>/search.php?cityid=<?=$cityid?>" rel="nofollow">信息快速搜索</a></li>
                </ul>
            </div>
        </div>
        <div class="foot_box" id="sjfw" style="display:none;">
        	<div class="hd">商家服务</div>
            <div class="bd">
            	<ul>
                	<li><a target="_blank" href="<?=$mymps_global['SiteUrl']?>/<?=$mymps_global['cfg_member_logfile']?>?mod=register&action=store&cityid=<?=$cityid?>">商家入驻</a></li>
                    <li><a target="_blank" href="<?=$mymps_global['SiteUrl']?>/<?=$mymps_global['cfg_member_logfile']?>?cityid=<?=$cityid?>">商家登录</a></li>
                </ul>
            </div>
        </div>
        <div class="foot_box">
        	<div class="hd">关于我们</div>
            <div class="bd">
            	<ul>
                <?php $navurl_foot = mymps_get_navurl('foot',30); ?>                    <?php if(is_array($navurl_foot)){foreach($navurl_foot as $k => $mymps) { ?>                	<li><a href="<?=$mymps['url']?>" style="color:<?=$mymps['color']?>" target="<?=$mymps['target']?>"><?=$mymps['title']?><sup class="<?=$mymps['ico']?>"></sup></a></li>
                    <?php }} ?>
                </ul>
            </div>
        </div>
        <div class="foot_wx">
        	<div class="hd">扫一扫，访问手机站</div>
            <div class="bd">
            	<ul>
                	<img alt="<?=$mymps_global['SiteName']?>手机版" src="<?=$mymps_global['SiteUrl']?>/qrcode.php?value=<?=$mymps_global['SiteUrl']?>/m/index.php&size=4.7">
                </ul>
            </div>
        </div>
        <div class="foot_wx" id="gzh">
        	<div class="hd">关注微信公众号</div>
            <div class="bd">
            	<ul>
                	<img alt="<?=$mymps_global['SiteName']?>微信公众号" src="<?=$mymps_global['SiteUrl']?>/erweima.gif">
                </ul>
            </div>
        </div>
        <div class="foot_mobile">
        	<ul>
            <? if($mymps_global['SiteTel']) { ?><div class="h1"><font><?=$mymps_global['SiteTel']?></font></div><?php } ?>
            <? if($mymps_global['SiteQQ']) { ?><div class="h2">客服QQ：<font><a class="_chat" target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<?=$mymps_global['SiteQQ']?>&site=qq&menu=yes" title="点击交谈" rel="nofollow" target="_blank"><?=$mymps_global['SiteQQ']?></a></font></div><?php } ?>
            <? if($mymps_global['SiteEmail']) { ?><div class="h3">邮箱：<font><?=$mymps_global['SiteEmail']?></font></div><?php } ?>
            </ul>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="foot_powered">
    	Copyright &copy; <?=$mymps_global['SiteName']?>版权所有 <a href="http://www.miibeian.gov.cn"><?=$mymps_global['SiteBeian']?></a>
        <?=$mymps_global['SiteStat']?> <? if($cachetime) { ?>This page is cached at <? echo GetTime($timestamp,'Y-m-d H:i:s'); ?><?php } else { ?><font class="none_<?=$mymps_mymps['debuginfo']?>"><?php $mtime = explode(' ', microtime());$totaltime = number_format(($mtime['1'] + $mtime['0']-$mymps_starttime), 6); echo ' , Processed in '.$totaltime.' second(s) , '.$db->query_num.' queries'; ?></font><?php } ?>
    </div>
</div>
<p id="back-to-top"><a href="#top"><span></span></a></p>
<script type="text/javascript">loadDefault(["addiv","iflogin","show_tab","scrolltop","changecity"]);</script></div>
</div>
</body>
</html>