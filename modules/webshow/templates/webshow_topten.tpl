<!-- START WEBSHOW TOP TEN MAIN -->
<div id="wsmain">
    <!-- START HEADER BOX -->
    <div id="wsheader">
        <div id="wsheadernav">
            <{include file="db:webshow_headernav.tpl"}>
        </div>
        <img id="wslogo" src="<{$xoops_url}>/modules/<{$xoops_dirname}>/assets/images/logo.gif" alt="<{$xoops_pagetitle}>" title="<{$xoops_pagetitle}>"/>
        <h1 id="wsheadertitle" class="wsitemtitle itemHead itemTitle">
            <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/topten.php" target="_self">
                <{$xoops_pagetitle}>
            </a>
        </h1>
        <h2 id="wsheadersubtitle">
            <{$thereareindex}>
        </h2>
        <div id="wsheadertext">
            <form name="sortform" id="wssortform" action="">
                <select name="orderby" onchange="location = this.options[this.selectedIndex].value;">
                    <option value=""><{$lang_cursortedby}></option>
                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/topten.php?orderby=ratingD"><{$smarty.const._WS_RATINGHTOL}></option>
                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/topten.php?orderby=hitsD"><{$smarty.const._WS_PAGEHITSMTOL}></option>
                    <option value="<{$xoops_url}>/modules/<{$xoops_dirname}>/topten.php?orderby=viewsD"><{$smarty.const._WS_VIEWSMTOL}></option>
                </select>
            </form>
        </div>
    </div>

    <!-- START WS LINKS TABLE -->
    <div style="float: left; width: 99%;">
        <{foreach item=ranking from=$rankings}>
            <{if $ranking.links !=''}>
                <table class="outer">
                    <tr>
                        <th colspan="6">
                            <h3>
                                <a class="itemTitle wsitemtitle itemHead" href="<{$xoops_url}>/modules/<{$xoops_dirname}>/category.php?cid=<{$ranking.cid}>"
                                   title="<{$ranking.cattitle}>&nbsp;<{$smarty.const._WS_CATEGORY}>" target="_self" rel="follow">
                                    <img src="<{$xoops_url}>/modules/<{$xoops_dirname}>/assets/images/category/<{$ranking.catimgurl}>" alt="<{$ranking.cattitle}>&nbsp;<{$smarty.const._WS_CATEGORY}>"/>
                                    <{$ranking.cattitle}>&nbsp;<{$smarty.const._WS_TOP10}>
                                </a>
                            </h3>
                        </th>
                    </tr>
                    <tr>
                        <td class="head" width='5%'><{$smarty.const._WS_RANK}><{$lang_rank}></td>
                        <td class="head" width='46%'><{$smarty.const._WS_TITLE}></td>
                        <td class="head" width='8%' align='center'><{$smarty.const._WS_PAGEHITS}></td>
                        <td class="head" width='8%' align='center'><{$smarty.const._WS_VIEWS}></td>
                        <td class="head" width='7%' align='center'><{$smarty.const._WS_RATING}></td>
                        <td class="head" width='6%' align='right'><{$smarty.const._WS_VOTE}></td>
                    </tr>
                    <{foreach item=link from=$ranking.links}>
                        <tr>
                            <td class="even"><{$link.rank}></td>
                            <td class="odd"><a href='<{$xoops_url}>/modules/<{$xoops_dirname}>/singlelink.php?lid=<{$link.id}>'><{$link.title}></a></td>
                            <td class="odd" align='center'><{$link.hits}></td>
                            <td class="even" align='center'><{$link.views}></td>
                            <td class="odd" align='center'><{$link.rating}></td>
                            <td class="even" align='right'><{$link.votes}></td>
                        </tr>
                    <{/foreach}>
                </table>
                <br>
            <{/if}>
        <{/foreach}>
    </div>
    <!-- END WS LINKS TABLE -->
    <!-- START MAIN FOOTER -->
    <div id="wsfooter">
        <div id="wsfooternav">
            <{include file="db:webshow_footernav.tpl"}>
        </div>
        <{$smarty.const._WS_FOOTERTEXT}>
    </div>
    <!-- END MAIN FOOTER -->
</div><!-- END WEBSHOW TOP TEN MAIN -->
