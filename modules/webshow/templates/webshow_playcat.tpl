<!-- START PLAYCAT MAIN -->
<{include file="db:webshow_inline.tpl"}>
<div id="wsmain">
    <!-- START HEADER BOX -->
    <div id="wsheader">
        <div id="wsheadernav">
            <{include file="db:webshow_headernav.tpl"}>
        </div>
        <{if $catimage}>
            <img id="wslogo" src="<{$xoops_url}>/modules/<{$xoops_dirname}>/assets/images/category/<{$catimage}>" alt="<{$cattitle}>" title="<{$cattitle}> <{$smarty.const._WS_CATEGORY}>"/>
        <{/if}>
        <h1 id="wsheadertitle" class="wsitemtitle itemHead itemTitle">
            <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/playcat.php?cid=<{$catid}>" target="_self" rel="follow" title="<{$cattitle}> <{$smarty.const._WS_CATEGORY}>">
                <{$cattitle}>
                <!-- <{if $catcount > 0}> (<{$catcount}>)<{/if}> -->
            </a>
            <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/backend.php?cid=<{$catid}>" target="_self" rel="follow"
               title="<{$wsmodname}> <{$cattitle}> <{$smarty.const._WS_CATEGORY}> <{$smarty.const._WS_FEED_TEXT}>">
                <!-- <{$wsmodname}> <{$smarty.const._WS_FEED_RSSNEWS}> -->
                <img src="<{$xoops_url}>/modules/<{$xoops_dirname}>/assets/images/webfeed.gif" alt="<{$wsmodname}> <{$cattitle}> <{$smarty.const._WS_CATEGORY}> <{$smarty.const._WS_FEED_TEXT}>"/>
            </a>
        </h1>
        <h2 id="wsheadersubtitle">
            <{$catdesc}>
        </h2>
    </div><!-- END HEADER BOX -->

    <!-- START CAT BODY TEXT -->
    <{if $catbody !=""}>
        <div id="wsbody" class="itemBody">
            <div id="wsbodyText">
                <{$catbody}>
            </div>
        </div>
    <{/if}>
    <!-- END CAT BODY TEXT -->

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
    <{/if}>
    <!-- END MOVIE BOX -->

    <!-- START LOOP BOX -->
    <{if $show_links == false & !$subcategories}>
        <div><{$smarty.const._WS_THEREARENONE}></div>
    <{elseif $show_links == true}>
        <div id="wsloopbox">
            <{if $movie}>
                <!-- style fix for FF -->
                <style>#wsloopbox {
                        max-width: 50%;
                    }</style>
            <{/if}>
            <{if $numrows > 1}>
                <!-- START LOOP HEAD -->
                <div id="wsloophead" class="wsitemhead itemHead">
                    <h3 id="wslooptitle" class="wsitemTitle itemTitle"><{$lang_catsortedby}></h3>
                </div>
                <!--  START SORTBY BOX -->
                <div id="wssortby" class="itemInfo">
                    <{if $page_nav != ""}>
                        <div id="wssortbyleft" class="wspagenav">
                            <{$page_nav}>
                        </div>
                    <{/if}>
                    <{if $showplayer}>
                        <div id="wssortbyctr">
                            <div class="wsbuttonfltrt wsnowrap">
                    <span class="wsbuttonright wsmenu">
                       <{if $movie}>
                           <a class="wsbuttoncenter" href="<{$xoops_url}>/modules/<{$xoops_dirname}>/playcat.php?cid=<{$catid}>&amp;playeroff=1"
                              rel="nofollow"><{$smarty.const._WS_BUTTON_PLAYEROFF}></a>

                                                      <{else}>

                           <a class="wsbuttoncenter" href="<{$xoops_url}>/modules/<{$xoops_dirname}>/playcat.php?cid=<{$catid}>" title="<{$smarty.const._WS_PLAYER_ON}>"
                              rel="nofollow"><{$smarty.const._WS_BUTTON_PLAYERON}></a>
                       <{/if}>
                    </span>
                            </div>
                        </div>
                    <{/if}>
                    <{if $lang_cursortedby !=""}>
                        <div id="wssortbyright">
                            <form name="sortform" id="wssortform" action="">
                                <select name="orderby" onchange="location = this.options[this.selectedIndex].value;">
                                    <option value=""><{$lang_cursortedby}></option>
                                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/playcat.php?cid=<{$catid}>&amp;orderby=titleA"><{$smarty.const._WS_TITLEATOZ}></option>
                                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/playcat.php?cid=<{$catid}>&amp;orderby=titleD"><{$smarty.const._WS_TITLEZTOA}></option>
                                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/playcat.php?cid=<{$catid}>&amp;orderby=dateD"><{$smarty.const._WS_DATENEW}></option>
                                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/playcat.php?cid=<{$catid}>&amp;orderby=dateA"><{$smarty.const._WS_DATEOLD}></option>
                                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/playcat.php?cid=<{$catid}>&amp;orderby=ratingD"><{$smarty.const._WS_RATINGHTOL}></option>
                                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/playcat.php?cid=<{$catid}>&amp;orderby=ratingA"><{$smarty.const._WS_RATINGLTOH}></option>
                                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/playcat.php?cid=<{$catid}>&amp;orderby=hitsD"><{$smarty.const._WS_PAGEHITSMTOL}></option>
                                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/playcat.php?cid=<{$catid}>&amp;orderby=hitsA"><{$smarty.const._WS_PAGEHITSLTOM}></option>
                                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/playcat.php?cid=<{$catid}>&amp;orderby=viewsD"><{$smarty.const._WS_VIEWSMTOL}></option>
                                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/playcat.php?cid=<{$catid}>&amp;orderby=viewsA"><{$smarty.const._WS_VIEWSLTOM}></option>
                                </select>
                            </form>
                        </div>
                    <{/if}>
                </div>
                <!--  END SORTBY BOX -->
            <{/if}>

            <!-- START LINKS -->
            <{if $movie and $links !=''}>
            <div id="wsoverflow">
                <{elseif !$movie and $links !=''}>
                <div id="wsflow">
                    <{/if}>
                    <{counter start=0 print=false assign=linksnum}>
                    <{section name=i loop=$links}>
                        <{if $linksnum == 0}>
                            <div class="wslooprow">
                        <{/if}>
                        <{counter}>
                        <div class="wsloopcolumn">
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
            </div><!-- END LINKS -->
            <{if $movie and $links}>
                <script type="text/javascript">
                    //set overflow height for Firefox Only
                    wsboxHeight('wsmoviebox', 'wsoverflow', 100);
                </script>
            <{/if}>
            <!-- START LOOP FOOTER -->
            <div id="wsloopfoot" class="wsitemfoot itemFoot">
                <div id="wsloopfootleft">
                    <{$thereareplaycat}>
                </div>
                <{if $page_nav != ""}>
                    <div id="wsloopfootright" class="wspagenav">
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
        <!-- START CATEGORY BOX -->
        <{if $subcategories >0}>
        <div class="wscatbox">
            <div class="wscathead">
                <div class="wscattitle">
                    <h4>
                        <{$cattitle}> <{$smarty.const._WS_DIRECTORY}>
                    </h4>
                    <p><{$therearesubcat}></p>
                </div>
            </div>
            <!-- START CAT LOOP -->
            <{counter start=0 print=false assign=catnum}>
            <{foreach item=subcat from=$subcategories}>
                <{if $catnum == 0}>
                    <!-- START CAT ROW -->
                    <div class="wscatrow">
                <{/if}>
                <{counter}>
                <div class="wscatcell">
                    <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/playcat.php?cid=<{$subcat.id}>" title="<{$subcat.cattitle}>&nbsp;<{$smarty.const._WS_CATEGORY}>"><{$subcat.cattitle}>
                        &nbsp;(<{$subcat.totallinks}>)</a>
                    <!--// <br><{$subcat.infercategories}> //-->
                </div>
                <{if $catnum == 3}>
                    <{counter start=0 print=false assign=catnum}>
                    </div><!--// END <{$catnum}> COL CAT ROW -->
                <{/if}>
            <{/foreach}>
            <{if $catnum != 0}>
        </div><!--// END Incomplete <{$catnum}> COL CAT ROW -->
        <{/if}>
        <!-- END CAT LOOP -->
    </div><!-- END CATEGORY BOX -->
    <{else}>
    <h4>
        <{$wsmodname}> <{$smarty.const._WS_DIRECTORY}>
    </h4>
    <{$therearecat}>
    <{/if}>

</div>

<div id="wsnotify">
    <{include file="db:system_notification_select.tpl"}>
</div>
</div><!-- END PLAYCAT MAIN -->
