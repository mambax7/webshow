<style type="text/css">
    .wsblinks {
        border: 1px solid #000;
        width: <{$block.logowidth}>px;
        height: <{$block.logowidth}>px;
        background-repeat: no-repeat;
        background-attachment: float;
        background-position: center;
        text-align: center;
        cursor: hand;
    }

    .wsblinkstitle {
        width: 100%;
        margin: 3px;
        vertical-align: middle;
        background-color: #fff;
        opacity: 0;
        filter: alpha(opacity=0);
    }

    .wsblinkstitle a {
        width: auto;
        padding: 2px;
        font-size: 90%;
        font-weight: 600;
    }

    .wsblinksstats {
        width: 100%;
    }

    .wsblinksstats span {
        width: auto;
        padding: 0px 2px;
        white-space: nowrap;
        font-size: 90%;
        font-weight: 600;
    }
</style>

<script language="javascript" type="text/javascript">
    function wsLinksover(boxid) {
        document.getElementById('wsblinkstitle' + boxid).style.opacity = 1;
        document.getElementById('wsblinkstitle' + boxid).filters.alpha.opacity = 100;
    }

    function wsLinksout(boxid) {
        document.getElementById('wsblinkstitle' + boxid).style.opacity = 0;
        document.getElementById('wsblinkstitle' + boxid).filters.alpha.opacity = 0;
    }
</script>

<table>
    <tr>
        <{counter start=0 print=false assign=linknum}>
        <{foreach item=link from=$block.links}>
        <{counter}>
        <td>
            <table class="wsblinks" id="wsblinks<{$link.id}>" onclick="location.href='<{$xoops_url}>/modules/webshow/singlelink.php?lid=<{$link.id}>'" onmouseover="wsLinksover(<{$link.id}>);"
                   onmouseout="setTimeout('wsLinksout(<{$link.id}>)','3000');">
                <{if $link.logo}>
                    <script language="javascript" type="text/javascript">
                        document.getElementById('wsblinks<{$link.id}>').style.backgroundImage = 'url(<{$link.logo}>)';
                    </script>
                <{/if}>
                <tr>
                    <td class="wsblinkstitle" id="wsblinkstitle<{$link.id}>">
                        <{if $link.title != ""}>
                            <div class="itemTitle itemHead">
                                <a href="<{$xoops_url}>/modules/webshow/singlelink.php?lid=<{$link.id}>" target="_self"
                                   title="<{$smarty.const._MB_WEBSHOW_PAGE_VIEW}> <{$link.title}>"><{$link.title}></a>
                            </div>
                        <{/if}>
                        <{if $link.stats != ""}>
                            <div class="wsblinksstats" id="wsblinksstats<{$link.id}>">
                                <{if $link.stats == "random"}>
                                    <span>(<{$smarty.const._MB_WEBSHOW_LASTUPDATE}>: <{$link.date}>)</span>
                                <{/if}>
                                <{if $link.stats == "date"}>
                                    <span>(<{$smarty.const._MB_WEBSHOW_LASTUPDATE}>: <{$link.date}>)</span>
                                <{/if}>
                                <{if $link.stats == "views"}>
                                    <span>(<{$smarty.const._MB_WEBSHOW_VIEWS}>: <{$link.views}>)</span>
                                <{/if}>
                                <{if $link.stats == "hits"}>
                                    <span>(<{$smarty.const._MB_WEBSHOW_HITS}>: <{$link.hits}>)</span>
                                <{/if}>
                                <{if $link.stats == "rating"}>
                                    <div>
                                        <span>(<{$smarty.const._MB_WEBSHOW_RATING}>: <{$link.rating}>)</span>
                                        <span>(<{$smarty.const._MB_WEBSHOW_VOTES}>: <{$link.votes}>)</span>
                                    </div>
                                <{/if}>
                            </div>
                        <{/if}>
                    </td>
                </tr>
            </table>
        </td>
        <{if $linknum == $block.columncount}>
    </tr>
    <tr>
        <{counter start=0 print=false assign=linknum}>
        <{/if}>
        <{/foreach}>
    </tr>
</table>
<div style="clear:both;"></div>
