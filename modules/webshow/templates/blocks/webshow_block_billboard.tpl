<{foreach item=link from=$block.links}>
    <{ if $link.logo !=""}>
    <div style="float: left; width:auto;">
        <a href="<{$xoops_url}>/modules/webshow/singlelink.php?lid=<{$link.id}>" target="_self"><img src="<{$link.logo}>" alt="<{$link.title}>"/></a>
    </div>
<{/if}>
    <h3 style="font-size: 90%; margin: 0px; padding: 3px 0px;">
        <{ if $link.title !=""}>
        <a href="<{$xoops_url}>/modules/webshow/singlelink.php?lid=<{$link.id}>" target="_self" title="<{$link.title}>"><{$link.title}></a>
        <{/if}>
        <{ if $link.popmovie !=""}>
        <a href="" onClick="window.open('<{$xoops_url}>/modules/webshow/popmovie.php?lid=<{$link.id}>','popMovie','directories=no,toolbar=no,location=no,menubar=no'); return false;"
           title="<{$smarty.const._MB_WEBSHOW_POPUP}> <{$smarty.const._MB_WEBSHOW_PLAYER}>"><img src="<{$xoops_url}>/modules/webshow/assets/images/popbutton.gif"
                                                                                                 alt="<{$smarty.const._MB_WEBSHOW_POPUP}> <{$smarty.const._MB_WEBSHOW_PLAYER}>"/></a>
        <{/if}>
    </h3>
    <{ if $link.stats == 1}>
    <p style="font-size: 80%; margin: 0px; padding: 3px 0px;">
        <span style="white-space: nowrap;">(<{$smarty.const._MB_WEBSHOW_LASTUPDATE}>: <{$link.date}>) </span>
        <span style="white-space: nowrap;">(<{$smarty.const._MB_WEBSHOW_VIEWS}>: <{$link.views}>) </span>
        <span style="white-space: nowrap;">(<{$smarty.const._MB_WEBSHOW_HITS}>: <{$link.hits}>) </span>
        <{if $link.rating > 0}>
            <span style="white-space: nowrap;">(<{$smarty.const._MB_WEBSHOW_RATING}>: <{$link.rating}>) </span>
            <span style="white-space: nowrap;">(<{$smarty.const._MB_WEBSHOW_VOTES}>: <{$link.votes}>)</span>
        <{/if}>
    </p>
<{/if}>
    <{ if $link.description !=""}>
    <p style="font-size: 90%; margin: 0px; padding: 3px 0px;"><{$link.description}></p>
<{/if}>
<{/foreach}>
<div style="clear: both;"></div>
