<div id="wsheader">
    <div id="wsheadertitle">
        <h3><a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/submit.php" target="_self"><img src="<{$xoops_url}>/modules/<{$xoops_dirname}>/assets/images/logo.gif" hspace="10" border="0"
                                                                                               alt="<{$xoops_pagetitle}>"/><{$xoops_pagetitle}></a></h3>
    </div>
</div><!-- END WS HEADER BOX -->
<!-- START WSBODY TEXT -->
<div id="wsbodyText">
    <{$adminlink}>
    <{if $listtype == ""}>
        <p><{$smarty.const._WSA_SUBMITTEXT}></p>
        <p><{$smarty.const._WSA_SUBMIT_TOS}></p>
        <ul>
            <li><{$smarty.const._WSA_SUBMITONCE}></li>
            <li><{$smarty.const._WS_ALLPENDING}></li>
        </ul>
    <{/if}>
    <{if $listtype == "embed" and $srctype == ""}>
        <p><{$smarty.const._WSA_SUBMIT_EMBED}></p>
    <{/if}>
    <{if $listtype == "feed" and $srctype == ""}>
        <p><{$smarty.const._WSA_SUBMIT_FEED}></p>
    <{/if}>
    <{if $listtype == "single" and $srctype == ""}>
        <p><{$smarty.const._WSA_SUBMIT_SINGLE}></p>
    <{/if}>
    <{if $listtype == "dir" and $srctype == ""}>
        <p><{$smarty.const._WSA_SUBMIT_DIR}></p>
    <{/if}>
</div><!-- END WSBODY TEXT -->
<!-- START WS SUBMIT FORM -->
<div id="wssubmitform">
    <{$sform}>
</div>
<!-- END WS SUBMIT FORM -->
