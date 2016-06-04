<div class="itemHead wsitemhead">
    <h3 class="itemTitle wsitemtitle"><{$smarty.const._WS_FEEDDATA}></h3>
</div>
<{if $wsfeedchannel.image}>
    <img src="<{$wsfeedchannel.image}>" style="float: left; margin-right: 3px;" alt="<{$wsfeedchannel.title}>" title="<{$wsfeedchannel.title}>"/>
<{/if}>
<{if $wsfeedchannel.title}>
    <h4>
        <a href="<{$wsfeedchannel.link}>" title="<{$smarty.const._VISITWEBSITE}> <{$wsfeedchannel.title}>"><{$wsfeedchannel.title}></a>
        <{$link.feedbutton}>
    </h4>
<{/if}>
<{if $wsfeedchannel.description}>
    <div class="wsitemdesc"><{$wsfeedchannel.description}></div>
<{/if}>
<div id="wsfeedoverflow">
    <{section name=i loop=$wsfeeddata}>
        <span id="wscontrolbuttons">
              <a href="javascript:sendEvent('playpause')" rel="nofollow" title="<{$smarty.const._WS_PAUSE}>"><img src="images/pause.gif"/></a>
              <a href="javascript:sendEvent('stop')" rel="nofollow" title="<{$smarty.const._WS_STOP}>"><img src="images/stop.gif"/></a>
              <a href="javascript:sendEvent('playitem',<{$wsfeeddata[i].itemnum}>)" rel="nofollow" title="<{$smarty.const._WS_PLAY}>"><img src="images/play.gif"/></a>
           </span>
        <h3><a href="<{$wsfeeddata[i].link}>" target="_blank" rel="follow" title="View <{$wsfeeddata[i].title}>"><{$wsfeeddata[i].title}></a>
        </h3>
        <p><{$wsfeeddata[i].description}><br><strong><{$smarty.const._DATE}>:</strong> <{$wsfeeddata[i].pubdate}></p>
    <{/section}>
</div>
