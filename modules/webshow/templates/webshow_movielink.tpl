<!-- START MOVIE ITEM <{$link.id}> INFO  -->
<div class="itemInfo wsmovieinfo">
    <div class="itemHead wsitemhead">
        <h3 class="itemTitle wsitemtitle">
            <{$link.title}>
            <{$link.popbutton}>
            <{$link.sitebutton}>
            <{$link.feedbutton}>
            <{$link.downbutton}>
            <{$link.modlink}>
            <{$link.adminlink}>
        </h3>
    </div>
    <!-- LOGO BOX -->
    <div id="wslinklogo<{$link.id}>" class="wsitemlogo" title="<{$smarty.const._WS_PAGE_VIEW}> <{$link.ltitle}>"
         onclick="location='<{$xoops_url}>/modules/<{$xoops_dirname}>/singlelink.php?lid=<{$link.id}>'">
        <{if $link.logourl !=""}>
            <script language="javascript" type="text/javascript">
                document.getElementById('wslinklogo<{$link.id}>').style.backgroundImage = 'url(<{$link.logourl}>)';
            </script>
        <{/if}>
        <div class="wsitemlogotop">
            <{if $link.newbutton}>
                <div class="wsbuttonfltlt" style="clear: left;">
            <span class="wsnewbutton wsbuttonright wsnowrap">
               <a class="wsbuttoncenter">
                  <{if $link.newbutton == "1"}>
                      <{$smarty.const._WS_BUTTON_NEW}>
                  <{elseif $link.newbutton == "2"}>
                      <{$smarty.const._WS_BUTTON_UPDATED}>
                  <{/if}>
               </a>
             </span>
                </div>
            <{/if}>
            <{if $link.popularbutton}>
                <div class="wsbuttonfltlt" style="clear: left;">
             <span class="wspopularbutton wsbuttonright wsnowrap">
                <a class="wsbuttoncenter"><{$smarty.const._WS_BUTTON_POPULAR}></a>
             </span>
                </div>
            <{/if}>
        </div>
        <div class="wsitemlogobottom">
            <div class="wsbuttonfltrt">
          <span class="wsbuttonright wsmenu wsnowrap">
            <a class="wsbuttoncenter" href="<{$xoops_url}>/modules/<{$xoops_dirname}>/singlelink.php?lid=<{$link.id}>" target="_self" rel="follow"
               title="<{$smarty.const._WS_PAGE_VIEW}> <{$link.ltitle}>">
              <{$smarty.const._WS_BUTTON_PAGE}>
            </a>
          </span>
            </div>
        </div>
    </div>
    <{if $link.description !=""}>
        <div id="wsmovdesc" class="wsitemdesc">
            <{$link.description}>
        </div>
    <{/if}>
    <!-- START ITEM CONTENTS -->
    <div id="wsitemcontents" class="wsitemcontents">
        <div id="wsitemstats" class="wsitemstats">
            <{if $link.submittername !=""}>
                <strong><{$smarty.const._WS_POSTER}>:&nbsp</strong>
                <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/playposter.php?uid=<{$link.submitter}>" title="<{$smarty.const._WS_POSTERVIEW_DSC}>" target="_self">
                    <!-- <{$smarty.const._WS_POSTERVIEW}> --><{$link.submittername}>
                </a>
                <br>
            <{/if}>
            <{if $link.stats}>
                <!-- <{if $link.comments != ""}><span class="wsnowrap"><a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/singlelink.php?lid=<{$link.id}>#comments"><{$smarty.const._COMMENTS}> (<{$link.comments}>)</a></span><br><{/if}> -->
                <{if $link.date}>
                    <strong><{$smarty.const._WS_CREATED}>:&nbsp</strong><{$link.date}>
                    <br>
                <{/if}>
                <{if $link.views}>
                    <strong><{$smarty.const._WS_VIEWS}>:&nbsp</strong><{$link.views}>
                    <br>
                <{/if}>
                <{if $link.hits}>
                    <strong><{$smarty.const._WS_PAGEHITS}>:&nbsp;</strong><{$link.hits}>
                    <br>
                <{/if}>
            <{/if}>
        </div>
        <{if $link.rating != 'off'}>
            <div id="ratestats" class="wsitemrate wsnowrap" style="cursor:pointer;" onclick="doWork('ratelink.php?op=wsrateform&amp;lid=<{$movielid}>','wsrateform'); return false;"
                 title="<{$smarty.const._WS_RATETHISSITE}>">
                <{if $link.rating == "0.00"}>
                    <span id="wsratingstats"><strong><{$smarty.const._WS_RATING}>:&nbsp;</strong><{$smarty.const._WS_RATETHISSITE}></span>
                <{else}>
                    <span id="wsratingstats" style="display: none" onmouseout="wsratingOut();">
                   <strong><{$smarty.const._WS_RATING}>:</strong>
                   &nbsp;<{$link.rating}>&nbsp;(<{$link.votes}>)
                 </span>
                    <div id="wsratingbar" onmouseover="wsratingOver();" class="ratingbar" title="<{$smarty.const._WS_RATING}>: <{$link.rating}> (<{$link.votes}>) ">
                        <div style="width:<{$link.rating*10}>%"></div> <!-- Star Rating Display Area -->
                    </div>
                <{/if}>
            </div>
        <{/if}>
        <{if $link.credits}>
            <div id="wsitemcredits" class="wsitemcredits">
                <{if $link.credit1 != ""}><strong><{$smarty.const._WS_CREDIT1}>:&nbsp;</strong><{$link.credit1}><br><{/if}>
                <{if $link.credit2 !=""}><strong><{$smarty.const._WS_CREDIT2}>:&nbsp;</strong><{$link.credit2}><br><{/if}>
                <{if $link.credit3 !=""}><strong><{$smarty.const._WS_CREDIT3}>:&nbsp;</strong><{$link.credit3}><br><{/if}>
            </div>
        <{/if}>
    </div><!-- END movie item contents -->
    <{if $link.tagbar}>
        <div class="wsitemtagbar">
            <{include file="db:tag_bar.tpl"}>
        </div>
    <{/if}>
    <div id="wsinfoboxhead" class="itemFoot wsinfoboxhead">
        <div id="wsinfoboxmenu">
            <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/singlelink.php?lid=<{$link.id}>" target="_self" title="<{$smarty.const._WS_PAGE_VIEW}> - <{$link.ltitle}>">
                <{$smarty.const._WS_PAGE}>
            </a>
            |<a href="#" rel="nofollow" onclick="showstuff('wssharebox'); return false;" title="<{$smarty.const._WS_SOCIALBOOKMARK}>">
                <{$smarty.const._WS_SHARE}>
            </a>
            |<a href="#" onclick="doWork('report.php?lid=<{$link.id}>&amp;op=wsreportform'); showstuff('boxswitch'); return false;" rel="nofollow" title="<{$smarty.const._WS_REPORT_DSC}>">
                <{$smarty.const._WS_REPORT}>
            </a>
            <{if $link.rating != 'off'}>
                |
                <a id="rateon" href="#" onclick="doWork('ratelink.php?op=wsrateform&amp;lid=<{$movielid}>','wsrateform'); return false;" rel="nofollow" title="<{$smarty.const._WS_RATETHISSITE}>">
                    <{$smarty.const._WS_RATE}>
                </a>
            <{/if}>
            <{if $wscodebox != ""}>
                |
                <a href="#" rel="nofollow" onclick="showstuff('wscodebox'); return false;" title="<{$smarty.const._WS_CODES_DSC}>">
                    <{$smarty.const._WS_CODES}>
                </a>
            <{/if}>
            <{if $link.comments != ""}>
                |
                <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/singlelink.php?lid=<{$link.id}>#comments" title="<{$link.ltitle}> <{$smarty.const._COMMENTS}>">
                    <{$smarty.const._COMMENTS}>(<{$link.comments}>)
                </a>
            <{/if}>
            <{if $link.downlink !=""}>
                |<{$link.downlink}><!-- <{$link.downbutton}> -->
            <{/if}>
        </div>
        <div id="boxswitch" style=""></div>
    </div>
    <div id="wsinfobox" class="wsinfobox"></div> <!-- Ajax Display Area -->
    <div class="itemFoot wsitemfoot">
        <{if $link.cattitle}>
            <div class="wsitemfootleft">
           <span onmouseover="showstuff('wscatbox'); return false;">
             <strong><{$smarty.const._WS_CATEGORY}>:&nbsp</strong>
             <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/playcat.php?cid=<{$link.cid}>" title="<{$link.cattitle}>&nbsp;<{$smarty.const._WS_CATEGORY}>"><{$link.cattitle}></a>
           </span>
            </div>
        <{/if}>
        <{if $link.hostname}>
            <div class="wsitemfootright">
                <span class="wsnowrap"><strong><{$smarty.const._WS_HOST}>:&nbsp;</strong><a href="<{$link.hostlink}>" target="_blank"
                                                                                            title="<{$smarty.const._VISITWEBSITE}> - <{$link.hostname}>"><{$link.hostname}></a></span>
            </div>
        <{/if}>
    </div>
</div><!-- END MOVIE LINK <{$link.id}> -->
