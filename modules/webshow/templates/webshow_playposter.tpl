<!-- START PLAYPOSTER MAIN -->
<{include file="db:webshow_inline.tpl"}>
<div id="wsmain">
    <!-- START HEADER BOX -->
    <div id="wsheader">
        <div id="wsheadernav">
            <{include file="db:webshow_headernav.tpl"}>
        </div>
        <img id="wslogo" src="<{$xoops_url}>/modules/<{$xoops_dirname}>/assets/images/logo.gif" alt="<{$wsmodname}>" title="<{$xoops_sitename}> <{$wsmodname}>"/>
        <h1 id="wsheadertitle" class="wsitemtitle itemHead itemTitle">
            <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/playposter.php?uid=<{$posterid}>" target="_self" title="<{$xoops_pagetitle}>">
                <{$xoops_pagetitle}>
            </a>
        </h1>
        <h2 id="wsheadersubtitle">
            <{$thereareby}>
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
    <{/if}>

    <!-- START LOOP BOX -->
    <{if $show_links == false}>
    <div id="wsloopbox"><{$smarty.const._WS_THEREARENONE}></div>
    <{elseif $show_links == true}>
    <div id="wsloopbox">
        <{if $movie}>
            <!-- style fix for FF -->
            <style>#wsloopbox {
                    max-width: 50%;
                }</style>
        <{/if}>
        <{if $numrows > 1}>
            <!-- START LOOP BOX HEAD -->
            <div id="wsloophead" class="wsitemhead itemHead">
                <h3 id="wslooptitle" class="wsitemTitle itemTitle"><{$lang_postedby}>&nbsp;<{$lang_cursortedby}></h3>
            </div>
            <!--  START SORT BY -->
            <div id="wssortby" class="itemInfo">
                <{if $showplayer}>
                    <div id="wssortbyleft">
                        <div class="wsbuttonfltlt">
                    <span class="wsbuttonright wsmenu">
                       <{if $movie}>
                           <a class="wsbuttoncenter" href="<{$xoops_url}>/modules/<{$xoops_dirname}>/playposter.php?uid=<{$link.submitter}>&amp;playeroff=1" rel="nofollow">
                            <{$smarty.const._WS_BUTTON_PLAYEROFF}>
                          </a>

                                                      <{else}>

                           <a class="wsbuttoncenter" href="<{$xoops_url}>/modules/<{$xoops_dirname}>/playposter.php?uid=<{$link.submitter}>" title="<{$smarty.const._WS_PLAYER_ON}>" rel="nofollow">
                            <{$smarty.const._WS_BUTTON_PLAYERON}>
                          </a>
                       <{/if}>
                    </span>
                        </div>
                    </div>
                <{/if}>
                <{if $lang_cursortedby !=""}>
                    <div id="wssortbyctr">
                        <form name="sortform" id="wssortform" action="">
                            <select name="orderby" onchange="location = this.options[this.selectedIndex].value;">
                                <option value=""><{$lang_cursortedby}></option>
                                <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/playposter.php?uid=<{$posterid}>&amp;orderby=titleA"><{$smarty.const._WS_TITLEATOZ}></option>
                                <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/playposter.php?uid=<{$posterid}>&amp;orderby=titleD"><{$smarty.const._WS_TITLEZTOA}></option>
                                <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/playposter.php?uid=<{$posterid}>&amp;orderby=dateD"><{$smarty.const._WS_DATENEW}></option>
                                <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/playposter.php?uid=<{$posterid}>&amp;orderby=dateA"><{$smarty.const._WS_DATEOLD}></option>
                                <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/playposter.php?uid=<{$posterid}>&amp;orderby=ratingD"><{$smarty.const._WS_RATINGHTOL}></option>
                                <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/playposter.php?uid=<{$posterid}>&amp;orderby=ratingA"><{$smarty.const._WS_RATINGLTOH}></option>
                                <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/playposter.php?uid=<{$posterid}>&amp;orderby=hitsD"><{$smarty.const._WS_PAGEHITSMTOL}></option>
                                <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/playposter.php?uid=<{$posterid}>&amp;orderby=hitsA"><{$smarty.const._WS_PAGEHITSLTOM}></option>
                                <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/playposter.php?uid=<{$posterid}>&amp;orderby=viewsD"><{$smarty.const._WS_VIEWSMTOL}></option>
                                <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/playposter.php?uid=<{$posterid}>&amp;orderby=viewsA"><{$smarty.const._WS_VIEWSLTOM}></option>
                            </select>
                        </form>
                    </div>
                <{/if}>
                <{if $page_nav != ""}>
                    <div id="wssortbyright" class="wspagenav">
                        <{$page_nav}>
                    </div>
                <{/if}>
            </div>
            <!--  END SORTBY -->
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
                        <!-- START LINKS ROW -->
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
            </div><!-- END Incomplete LINKS ROW -->
            <{/if}>
        </div><!-- END LINKS -->
        <{if $movie and $links}>
            <script type="text/javascript">
                //set overflow height for Firefox Only
                wsboxHeight('wsmoviebox', 'wsoverflow', 100);
            </script>
        <{/if}>
        <!-- START LOOP BOX FOOTER -->
        <div id="wsloopfoot" class="wsitemfoot itemFoot">
            <div id="wsloopfootleft">
                <{$thereare}>
            </div>
            <{if $page_nav != ""}>
                <div id="wsloopfootright" class="wspagenav">
                    <{$page_nav}>
                </div>
            <{/if}>
        </div>
    </div>
    <{/if}><!-- END LOOP BOX -->

    <!-- START MAIN FOOTER -->
    <div id="wsfooter">
        <div id="wsfooternav">
            <{include file="db:webshow_footernav.tpl"}>
        </div>
        <div id="wsfootertext">
            <h3><{$xoops_sitename}> <{$wsmodname}> <{$thereareindex}></h3>
            <{$smarty.const._WS_FOOTERTEXT}>
        </div>
    </div>

    <{if $xoops_isadmin}>
        <div id="wsadmintable">
            <{$admintable}>
        </div>
    <{/if}>
    <div id="wsnotify">
        <{include file='db:system_notification_select.tpl'}>
    </div>
</div><!-- END PLAYPOSTER MAIN -->
