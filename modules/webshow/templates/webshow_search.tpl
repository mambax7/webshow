<!-- START WEBSHOW SEARCH MAIN -->
<{include file="db:webshow_inline.tpl"}>
<div id="wsmain">
    <!-- START HEADER BOX -->
    <div id="wsheader">
        <div id="wsheadernav">
            <{include file="db:webshow_headernav.tpl"}>
        </div>
        <img id="wslogo" src="<{$xoops_url}>/modules/<{$xoops_dirname}>/assets/images/logo.gif" alt="<{$wsmodname}>" title="<{$xoops_sitename}> <{$wsmodname}>"/>
        <h1 id="wsheadertitle" class="wsitemtitle itemHead itemTitle">
            <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/mediasearch.php" target="_self" title="<{$wsmodname}>&nbsp;<{$smarty.const._WS_MEDIASEARCH}>">
                <{$smarty.const._WS_MEDIASEARCH}>
            </a>
        </h1>
        <div class="wssearchbox">
            <form class="wssearchform wsnowrap" name="search" id="search" action="mediasearch.php" method="post" onsubmit="return xoopsFormValidate_search();">
                <{$smarty.const._WS_MEDIASEARCH}>
                <input type="hidden" name="mids[]" value="<{$ws_mid}>"/>
                <input type="hidden" name="action" id="action" value="results"/>
                <input type="text" name="query" id="query" size="30" maxlength="64" value=""/>
                <input type="image" src="<{$xoops_url}>/modules/<{$xoops_dirname}>/assets/images/search.gif" value="<{$smarty.const._WS_SEARCH}>" alt="<{$smarty.const._WS_SEARCH}>"
                       name="<{$smarty.const._WS_SEARCH}>"/>
            </form>
        </div>
        <{if $srterm}>
            <{if $numrows > 0}>
                <h3 id="wsheadersubtitle"><{$srfound}></h3>
            <{else}>
                <h3 id="wsheadersubtitle"><{$smarty.const._WS_SEARCHFOUNDNO}></h3>
                <div id="wsheadertext">
                    <p><{$smarty.const._WS_SEARCHTERMENTER}></p>
                </div>
            <{/if}>
        <{else}>
            <h3 id="wsheadersubtitle"><{$smarty.const._WS_SEARCHFOUNDNO}></h3>
            <div id="wsheadertext">
                <p><{$smarty.const._WS_SEARCHTERMNO}><br><{$smarty.const._WS_SEARCHTERMENTER}></p>
            </div>
        <{/if}>
        <{if $srtermx}>
            <h3 id="wsheadersubtitle"><{$smarty.const._WS_SEARCHTERMX}>: <{$srtermx}></h3>
        <{/if}>
    </div>
    <!-- END HEADER BOX -->

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
    <{if $show_links == true}>
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
                    <h3 id="wslooptitle" class="wsitemTitle itemTitle"><{$srresult}></h3>
                </div>
                <!--  START SORT BY -->
                <{if $page_nav != ""}>
                    <div id="wssortby" class="itemInfo">
                        <div id="wssortbyright" class="wspagenav">
                            <{$page_nav}>
                        </div>
                    </div>
                <{/if}>
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
                    <{$thereare}>
                </div>
                <{if $page_nav != ""}>
                    <div id="wsloopfootright" class="wspagenav">
                        <!-- <{$smarty.const._WS_PAGE}>: --><{$page_nav}>
                    </div>
                <{/if}>
            </div>
        </div>
    <{/if}>
    <!-- END WSLOOP BOX -->

    <!-- START MAIN FOOTER -->
    <div id="wsfooter">
        <div id="wsfooternav">
            <{include file="db:webshow_footernav.tpl"}>
        </div>
        <div id="wsfootertext">
            <{$smarty.const._WS_FOOTERTEXT}>
        </div>
    </div>

    <div id="wsnotify">
        <{include file="db:system_notification_select.tpl"}>
    </div>
</div><!-- END WEBSHOW SEARCH MAIN -->
