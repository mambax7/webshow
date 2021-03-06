<!-- START CATEGORY MAIN -->
<div id="wsmain">
    <!-- START HEADER BOX -->
    <div id="wsheader">
        <div id="wsheadernav">
            <{include file="db:webshow_headernav.tpl"}>
        </div>
        <img id="wslogo" src="<{$xoops_url}>/modules/<{$xoops_dirname}>/assets/images/logo.gif" alt="<{$wsmodname}>&nbsp;<{$smarty.const._WS_CATEGORY}>"
             title="<{$wsmodname}>&nbsp;<{$smarty.const._WS_CATEGORY}>"/>
        <h1 id="wsheadertitle" class="wsitemtitle itemHead itemTitle">
            <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/category.php" target="_self" title="<{$wsmodname}>&nbsp;<{$smarty.const._WS_CATEGORY}>">
                <{$wsmodname}>&nbsp;<{$smarty.const._WS_CATEGORY}>
            </a>
        </h1>
        <h2 id="wsheadersubtitle">
            <{$thereare}>
        </h2>
    </div>

    <!-- START CATEGORY BOX -->
    <{if count($categories) > 0}>
        <div class="wscatbox">
            <!-- START CAT ROW LOOP -->
            <{foreach item=category from=$categories}>
                <div class="wscatrow">
                    <div class="wscathead">
                        <{if $category.image != ""}>
                            <img class="wscatlogo" src="<{$xoops_url}>/modules/<{$xoops_dirname}>/assets/images/category/<{$category.image}>" alt="<{$category.cattitle}>"/>
                        <{/if}>
                        <div class="wscattitle itemHead itemTitle">
                            <h3>
                                <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/playcat.php?cid=<{$category.id}>" target="_self" rel="follow"
                                   title="<{$category.cattitle}>&nbsp;<{$smarty.const._WS_CATEGORY}>">
                                    <{$category.cattitle}>&nbsp;(<{$category.totallink}>)
                                </a>
                            </h3>
                        </div>
                    </div>

                    <{if $category.catdesc != ""}>
                        <div class="wscatdesc">
                            <{$category.catdesc}>
                        </div>
                    <{/if}>

                    <{if $category.subcategories}>
                        <div class="wssubcatbox">
                            <div class="wssubcattitle">
                                <h4><{$smarty.const._WS_SUBCATEGORY}>:</h4>
                            </div>
                            <div class="wssubcatcontents">
                                <{$category.subcategories}>
                            </div>
                        </div>
                    <{/if}>
                </div>
                <!-- END CATEGORY ROW -->
            <{/foreach}>
        </div>
        <!-- END CATEGORY BOX -->
    <{/if}>

    <!-- START MAIN FOOTER -->
    <div id="wsfooter">
        <div id="wsfooternav">
            <{include file="db:webshow_footernav.tpl"}>
        </div>
    </div>
    <!-- END MAIN FOOTER -->

    <div id="wsnotify">
        <{include file='db:system_notification_select.tpl'}>
    </div>
</div><!-- END CATEGORY MAIN -->
