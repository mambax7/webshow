<!-- START WEBSHOW SINGLELINK MAIN -->
<{include file="db:webshow_inline.tpl"}>
<div id="wsmain">
    <div id="wsheader">
        <div id="wsheadernav">
            <{include file="db:webshow_headernav.tpl"}>
        </div>
        <img id="wslogo" src="<{$xoops_url}>/modules/<{$xoops_dirname}>/assets/images/logo.gif" alt="<{$wsmodname}>" title="<{$xoops_sitename}> <{$wsmodname}>"/>
        <h1 id="wsheadertitle" class="wsitemtitle itemHead itemTitle">
            <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/singlelink.php?lid=<{$link.id}>" target="_self" rel="archive" title="<{$link.ltitle}> <{$wsmodname}>">
                <{$link.ltitle}>
            </a>
        </h1>
    </div>
    <!-- START MOVIE BOX <div id="wsmoviebox"></div>-->
    <{if $movie}>
        <div id="wssinglemoviebox">
            <div id="wsmovie">
                <{$movie}>
                <{$mplayjs}>
                <{if $wstrackdata}>
                    <{include file="db:webshow_trackdata.tpl"}>
                <{/if}>
            </div>

            <div id="wssinglemovielink">
                <{include file="db:webshow_movielink.tpl"}>
            </div>
        </div>
    <{/if}>

    <!-- START FEED DATA -->
    <{if $wsfeeddata}>
        <div id="wsfeeddata">
            <{include file="db:webshow_feeddata.tpl"}>
        </div>
    <{/if}>
    <!-- START WSBODY TEXT -->
    <{if $link.bodytext !=""}>
        <div id="wsbody" class="itemBody">
            <div id="wsbodyText">
                <h2 id="wsbodyTitle"><{$link.ltitle}></h2>
                <{$link.bodytext}>
            </div>
        </div>
    <{/if}>
    <!-- START MAIN FOOTER -->
    <div id="wsfooter">
        <div id="wsfooternav">
            <{include file="db:webshow_footernav.tpl"}>
        </div>
        <div id="wsfootertext">
            <h3><{$link.ltitle}> <{$wsmodname}></h3>
            <p><{$therearesingle}></p>
        </div>
    </div>
    <!-- START COMMENTS -->
    <{if $link.comments != ""}>
        <div id="wscomments">
            <h3><a name="comments"><{$smarty.const._COMMENTS}></a></h3>
            <{$commentsnav}>
            <{$lang_notice}>
            <{if $comment_mode == "flat"}>
                <{include file="db:system_comments_flat.tpl"}>
            <{elseif $comment_mode == "thread"}>
                <{include file="db:system_comments_thread.tpl"}>
            <{elseif $comment_mode == "nest"}>
                <{include file="db:system_comments_nest.tpl"}>
            <{/if}>
        </div>
    <{/if}>
    <!-- START NOTIFY -->
    <div id="wsnotify">
        <{include file='db:system_notification_select.tpl'}>
    </div>
    <{if $xoops_isadmin}>
        <div id="wsadmintable">
            <{$admintable}>
        </div>
    <{/if}>
</div><!-- END WEBSHOW SINGLELINK MAIN -->
