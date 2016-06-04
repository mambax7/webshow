<table>
    <tr>
        <{counter start=0 print=false assign=linknum}>
        <{foreach item=cat from=$block.cats}>
        <{counter}>
        <td style="vertical-align: top;">
            <{if $cat.logo != ""}>
                <div style="float:left; width: auto;">
                    <a href="<{$xoops_url}>/modules/webshow/playcat.php?cid=<{$cat.id}>" target="_self"><img src="<{$xoops_url}>/modules/webshow/assets/images/category/<{$cat.logo}>"
                                                                                                             alt="<{$cat.title}>"/></a>
                </div>
            <{/if}>
            <div style="float:left; text-align: left;">
        <span style="font-size: 100%;">
          <a href="<{$xoops_url}>/modules/webshow/playcat.php?cid=<{$cat.id}>" target="_self" title="<{$smarty.const._MB_WEBSHOW_CAT}>: <{$cat.title}>"><{$cat.title}></a>
        </span>
                <{if $cat.sub != ""}>
                    <br>
                    <span style="font-size: 85%;">
            <{$cat.sub}>
          </span>
                <{/if}>
            </div>
        </td>
        <{if $linknum == $block.columncount}>
    </tr>
    <tr>
        <{counter start=0 print=false assign=linknum}>
        <{/if}>
        <{/foreach}>
    </tr>
</table>
<div style="float: right; width:auto; border: 1px solid #111;">
    <a href="<{$xoops_url}>/modules/webshow/index.php" target="_self" rel="follow">
        <img src="<{$xoops_url}>/modules/webshow/assets/images/home.gif" alt="<{$smarty.const._MB_WEBSHOW_HOME}>"/>
        <!-- <{$smarty.const._WS_HOME}> -->
    </a>
</div>

<div style="clear:both;"></div>
