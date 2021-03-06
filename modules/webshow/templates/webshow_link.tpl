<!--*** Start Media Item <{$link.id}> ***-->
<div class="itemInfo wsiteminfo">
    <div class="itemHead wsitemhead">
        <h3 class="itemTitle wsitemtitle">
            <{$link.title}>
            <{$link.popbutton}>
            <{$link.adminlink}>
            <{$link.modlink}>
        </h3>
    </div>
    <!-- LOGO BOX -->
    <{if $link.logourl}>
        <div id="wslinklogo<{$link.id}>" class="wsitemlogo" title="<{$smarty.const._WS_PAGE_VIEW}> <{$link.ltitle}>"
             onclick="location='<{$xoops_url}>/modules/<{$xoops_dirname}>/singlelink.php?lid=<{$link.id}>'">
            <script language="javascript" type="text/javascript">
                document.getElementById('wslinklogo<{$link.id}>').style.backgroundImage = 'url(<{$link.logourl}>)';
            </script>
            <div class="wsitemlogotop">
                <{if $link.newbutton}>
                    <div class="wsbuttonfltlt">
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
                    <div class="wsbuttonfltlt">
                 <span class="wspopularbutton wsbuttonright wsnowrap">
                    <a class="wsbuttoncenter"><{$smarty.const._WS_BUTTON_POPULAR}></a>
                 </span>
                    </div>
                <{/if}>
            </div>
            <div class="wsitemlogobot">
                <div class="wsbuttonfltrt" style="">
           <span class="wsbuttonright wsmenu wsnowrap">
              <a class="wsbuttoncenter" href="<{$xoops_url}>/modules/<{$xoops_dirname}>/singlelink.php?lid=<{$link.id}>" target="_self" rel="follow"
                 title="<{$smarty.const._WS_PAGE_VIEW}> <{$link.ltitle}>">
                 <{$smarty.const._WS_BUTTON_PAGE}>
              </a>
           </span>
                </div>
            </div>
        </div>
    <{/if}>
    <{if $link.description}>
        <div class="wsitemdesc">
            <{$link.description}>
        </div>
    <{/if}>
    <!-- START ITEM CONTENTS -->
    <div class="wsitemcontents">
        <div class="wsitemstats">
            <{if $link.submittername}>
                <strong><{$smarty.const._WS_POSTER}>:&nbsp</strong>
                <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/playposter.php?uid=<{$link.submitter}>" title="<{$smarty.const._WS_POSTERVIEW_DSC}>" target="_self">
                    <{$link.submittername}><!-- <{$smarty.const._WS_POSTERVIEW}> -->
                </a>
                <br>
            <{/if}>
            <{if $link.stats}>
                <strong><{$smarty.const._WS_CREATED}>:&nbsp</strong><{$link.date}>
                <br>
                <strong><{$smarty.const._WS_VIEWS}>:&nbsp</strong><{$link.views}>
                <br>
                <strong><{$smarty.const._WS_PAGEHITS}>:&nbsp;</strong><{$link.hits}>
                <br>
                <!-- <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/singlelink.php?lid=<{$link.id}>#comments"><{$smarty.const._COMMENTS}> (<{$link.comments}>)</a> -->
            <{/if}>
        </div>
        <{if $link.rating != 'off'}>
            <div class="wsitemrate wsnowrap">
                <{if $link.rating != "0.00"}>
                    <div style="float: left;">
                        <strong><{$smarty.const._WS_RATING}>:&nbsp;</strong>
                    </div>
                    <div class="ratingbar">
                        <div style="width:<{$link.rating*10}>%"></div>
                    </div>
                <{else}>
                    <strong><{$smarty.const._WS_RATING}>:&nbsp;</strong>
                    <{$smarty.const._WS_RATINGNO}>
                <{/if}>
            </div>
        <{/if}>
        <{if $link.credits}>
            <div class="wsitemcredits">
                <{if $link.credit1 != ""}><strong><{$smarty.const._WS_CREDIT1}>:&nbsp;</strong><{$link.credit1}><br><{/if}>
                <{if $link.credit2 !=""}><strong><{$smarty.const._WS_CREDIT2}>:&nbsp;</strong><{$link.credit2}><br><{/if}>
                <{if $link.credit3 !=""}><strong><{$smarty.const._WS_CREDIT3}>:&nbsp;</strong><{$link.credit3}><br><{/if}>
            </div>
        <{/if}>
    </div><!-- END item contents -->
    <div class="itemFoot wsitemfoot">
        <{if $link.cattitle}>
            <div class="wsitemfootleft">
                <!-- <strong><{$smarty.const._WS_CATEGORY}>:&nbsp</strong> -->
                <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/playcat.php?cid=<{$link.cid}>" title="<{$link.cattitle}>&nbsp;<{$smarty.const._WS_CATEGORY}>">
                    <{$link.cattitle}>
                </a>
            </div>
        <{/if}>
    </div>
</div><!-- END Media Item <{$link.id}> -->
