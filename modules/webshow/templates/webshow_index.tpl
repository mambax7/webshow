<!-- START WEB SHOW INDEX -->
<{include file="db:webshow_inline.tpl"}>
<div id="wsmain">
    <!-- START HEADER BOX -->
    <div id="wsheader">
        <div id="wsheadernav">
            <{include file="db:webshow_headernav.tpl"}>
        </div>
        <img id="wslogo" src="<{$xoops_url}>/modules/<{$xoops_dirname}>/assets/images/logo.gif" alt="<{$wsmodname}>" title="<{$xoops_sitename}> <{$wsmodname}>"/>
        <h1 id="wsheadertitle" class="wsitemtitle itemHead itemTitle wsnowrap">
            <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/index.php" target="_self" rel="archive" title="<{$xoops_sitename}> <{$wsmodname}>">
                <{$wsmodname}>
            </a>
            <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/backend.php" target="_self" rel="follow" title="<{$xoops_sitename}> <{$wsmodname}> <{$smarty.const._WS_FEED_TEXT}>">
                <!-- <{$wsmodname}> <{$smarty.const._WS_FEED_RSSNEWS}> -->
                <img src="<{$xoops_url}>/modules/<{$xoops_dirname}>/assets/images/webfeed.gif" alt="<{$wsmodname}> <{$smarty.const._WS_FEED_TEXT}>"/>
            </a>
        </h1>
        <h2 id="wsheadersubtitle">
            <{$wsmoddesc}>
        </h2>
    </div>

    <!-- START MOVIE BOX -->
    <{if $movie}>
    <div id="wsmoviebox">
        <div id="wsmovie">
            <{$movie}>
        </div>
        <div id="wsmovielink">
            <{include file="db:webshow_movielink.tpl"}>
        </div>
    </div>
    <{/if}><!-- END MOVIE BOX -->

    <!-- START LOOP BOX -->
    <{if $show_links == false}>
        <div id="wsloopbox">
            <div><{$smarty.const._WS_THEREARENONE}> </div>
        </div>
    <{elseif $show_links == true}>
        <div id="wsloopbox">
            <{if $movie}>
                <!-- style fix for FF -->
                <style>#wsloopbox {
                        max-width: 50%;
                    }</style>
            <{/if}>
            <{if $numrows > 1}>
                <div id="wsloophead" class="wsitemhead itemHead">
                    <h3 id="wslooptitle" class="wsitemTitle itemTitle"><{$lang_mediasortedby}></h3>
                </div>
                <div id="wssortby" class="itemInfo">
                    <{if $page_nav != ""}>
                        <div id="wssortbyleft" class="wspagenav">
                            <{$page_nav}>
                        </div>
                    <{/if}>
                    <{if $showplayer}>
                        <div class="wsbuttonfltlt">
                 <span class="wsbuttonright wsmenu wsnowrap">
                    <{if $movie}>
                        <a class="wsbuttoncenter" href="<{$xoops_url}>/modules/<{$xoops_dirname}>/index.php?lid=<{$link.id}>&amp;playeroff=1" rel="nofollow"><{$smarty.const._WS_BUTTON_PLAYEROFF}></a>

                                                <{else}>

                        <a class="wsbuttoncenter" href="<{$xoops_url}>/modules/<{$xoops_dirname}>/index.php" title="<{$smarty.const._WS_PLAYER_ON}>"
                           rel="nofollow"><{$smarty.const._WS_BUTTON_PLAYERON}></a>
                    <{/if}>
                 </span>
                        </div>
                    <{/if}>
                    <{if $lang_cursortedby !=""}>
                        <div id="wssortbyright">
                            <form name="sortform" id="wssortform" action="">
                                <select name="orderby" onchange="location = this.options[this.selectedIndex].value;">
                                    <option value=""><{$lang_cursortedby}></option>
                                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/index.php?lid=<{$lid}>&amp;orderby=titleA"><{$smarty.const._WS_TITLEATOZ}></option>
                                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/index.php?lid=<{$lid}>&amp;orderby=titleD"><{$smarty.const._WS_TITLEZTOA}></option>
                                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/index.php?lid=<{$lid}>&amp;orderby=dateD"><{$smarty.const._WS_DATENEW}></option>
                                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/index.php?lid=<{$lid}>&amp;orderby=dateA"><{$smarty.const._WS_DATEOLD}></option>
                                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/index.php?lid=<{$lid}>&amp;orderby=ratingD"><{$smarty.const._WS_RATINGHTOL}></option>
                                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/index.php?lid=<{$lid}>&amp;orderby=ratingA"><{$smarty.const._WS_RATINGLTOH}></option>
                                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/index.php?lid=<{$lid}>&amp;orderby=hitsD"><{$smarty.const._WS_PAGEHITSMTOL}></option>
                                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/index.php?lid=<{$lid}>&amp;orderby=hitsA"><{$smarty.const._WS_PAGEHITSLTOM}></option>
                                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/index.php?lid=<{$lid}>&amp;orderby=viewsD"><{$smarty.const._WS_VIEWSMTOL}></option>
                                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/index.php?lid=<{$lid}>&amp;orderby=viewsA"><{$smarty.const._WS_VIEWSLTOM}></option>
                                </select>
                            </form>
                        </div>
                    <{/if}>
                </div>
            <{/if}>
            <!-- Start Link Loop -->
            <{if $movie and $links}>
            <div id="wsoverflow">
                <{elseif !$movie and $links}>
                <div id="wsflow">
                    <{/if}>
                    <{counter start=0 print=false assign=linksnum}>
                    <{section name=i loop=$links}>
                        <{if $linksnum == 0}>
                            <!--**** START LOOP ROW #<{$links[i].rowid}> ****-->
                            <div id="wslooprow<{$links[i].rowid}>" class="wslooprow">
                        <{/if}>
                        <{counter}>
                        <div id="wsloopcell<{$links[i].rowid}>" class="wsloopcolumn">
                            <{include file="db:webshow_link.tpl" link=$links[i]}>
                        </div>
                        <{if $linksnum == $columncount}>
                            <{counter start=0 print=false assign=linksnum}>
                            </div>
                        <{/if}>
                    <{/section}>
                    <{if $linksnum != 0}>
                </div>
                <{/if}>
            </div>
            <{if $movie and $links}>
                <script type="text/javascript">
                    //set overflow height for Firefox Only
                    wsboxHeight('wsmoviebox', 'wsoverflow', 100);
                </script>
            <{/if}>
            <div id="wsloopfoot" class="itemFoot wsitemfoot">
                <div id="wsloopfootleft">
                    <{$thereareindex}>
                </div>
                <{if $page_nav != ""}>
                    <div id="wsloopfootright">
                        <{$page_nav}>
                    </div>
                <{/if}>
            </div>
        </div>
    <{/if}>
    <!-- END LOOP BOX -->

    <!-- START MAIN FOOTER -->
    <div id="wsfooter">
        <div id="wsfooternav">
            <{include file="db:webshow_footernav.tpl"}>
        </div>
        <div id="wsfootertext">
            <h3><{$xoops_sitename}> <{$wsmodname}></h3>
            <{$smarty.const._WS_FOOTERTEXT}>
        </div>
    </div>
    <!-- END MAIN FOOTER -->

    <div id="wsnotify">
        <{include file='db:system_notification_select.tpl'}>
    </div>

    <{if $xoops_isadmin}>
        <div id="wsadmintable">
            <{$admintable}>
        </div>
    <{/if}>
</div>
<!-- END WEB SHOW INDEX -->
