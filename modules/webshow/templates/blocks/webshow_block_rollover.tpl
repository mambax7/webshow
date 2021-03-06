<style type="text/css">
    .wsbroll {
        border: 1px solid #000;
        cursor: hand;
        text-align: center;
    }

    .wsbdesccell {
        width: <{$block.logowidth}>px;
        height: <{$block.logowidth}>px;
        background-repeat: no-repeat;
        background-attachment: float;
        background-position: center;
        background-color: #fff;
        vertical-align: middle;
        opacity: 1;
        filter: alpha(opacity=100);
    }

    .wsbdesc {
        width: <{$block.logowidth-6}>px;
        height: <{$block.logowidth-6}>px;
        margin: 0 10% 0 10%;
        padding: 20px 2px 0px 2px;
        border: 1px solid #000;
        background-color: #eee;
        font-size: 90%;
        color: #000;
        opacity: 0.80;
        filter: alpha(opacity=80);
    }

    .wsbdesc:first-letter {
        font-size: 120%;
        font-weight: 600;
        text-transform: uppercase;
    }

    .wsbtitle {
        width: 100%;
        height: 30px;
        padding: 0px 1px;
        font-size: 80%;
    }

    .wsbstats {
        padding: 0px;
        font-size: 80%;
        color: #000;
        font-weight: 600;
    }
</style>

<script language="javascript" type="text/javascript">
    function wsRollover(boxid) {
        document.getElementById('wsbdesc' + boxid).innerHTML = '';
        document.getElementById('wsbdesc' + boxid).style.opacity = 0;
        document.getElementById('wsbdesc' + boxid).filters.alpha.opacity = 0;
    }

    function wsRollout(boxid, description) {
        document.getElementById('wsbdesc' + boxid).innerHTML = description;
        document.getElementById('wsbdesc' + boxid).style.opacity = 0.6;
        document.getElementById('wsbdesc' + boxid).filters.alpha.opacity = 60;
    }
</script>

<table>
    <tr>
        <{counter start=0 print=false assign=linknum}>
        <{foreach item=link from=$block.links}>
        <{counter}>
        <td>
            <table class="wsbroll itemHead" id="wsbroll<{$link.id}>" onclick="location.href='<{$xoops_url}>/modules/webshow/singlelink.php?lid=<{$link.id}>'" onmouseover="wsRollover('<{$link.id}>');"
                   onmouseout="setTimeout('wsRollout(<{$link.id}>,\'<{$link.description}>\')','4000');">
                <tr>
                    <td class="wsbdesccell" id="wsbdesccell<{$link.id}>">
                        <{if $link.logo}>
                            <script language="javascript" type="text/javascript">
                                document.getElementById('wsbdesccell<{$link.id}>').style.backgroundImage = 'url(<{$link.logo}>)';
                            </script>
                        <{/if}>
                        <div class="wsbdesc" id="wsbdesc<{$link.id}>"><{$link.description}></div>
                    </td>
                </tr>
                <{if $link.title != ""}>
                    <tr>
                        <td class="wsbtitle itemTitle">
                            <a href="<{$xoops_url}>/modules/webshow/singlelink.php?lid=<{$link.id}>" target="_self" title="<{$smarty.const._MB_WEBSHOW_PAGE_VIEW}> <{$link.title}>"><{$link.title}></a>
                        </td>
                    </tr>
                <{/if}>
                <{if $link.stats != ""}>
                    <tr>
                        <td class="wsbstats">
                            <{if $link.stats == "random"}>
                                <span style="white-space: nowrap;">(<{$smarty.const._MB_WEBSHOW_LASTUPDATE}>: <{$link.date}>) </span>
                            <{/if}>
                            <{if $link.stats == "date"}>
                                <span style="white-space: nowrap;">(<{$smarty.const._MB_WEBSHOW_LASTUPDATE}>: <{$link.date}>) </span>
                            <{/if}>
                            <{if $link.stats == "views"}>
                                <span style="white-space: nowrap;">(<{$smarty.const._MB_WEBSHOW_VIEWS}>: <{$link.views}>) </span>
                            <{/if}>
                            <{if $link.stats == "hits"}>
                                <span style="white-space: nowrap;">(<{$smarty.const._MB_WEBSHOW_HITS}>: <{$link.hits}>) </span>
                            <{/if}>
                            <{if $link.stats == "rating"}>
                                <span style="white-space: nowrap;">(<{$smarty.const._MB_WEBSHOW_RATING}>: <{$link.rating}>) </span>
                                <span style="white-space: nowrap;">(<{$smarty.const._MB_WEBSHOW_VOTES}>: <{$link.votes}>)</span>
                            <{/if}>
                        </td>
                    </tr>
                <{/if}>
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
