<script language="javascript" type="text/javascript">
    function wsSearch(boxid) {
        document.getElementById(boxid + 'link').style.display = 'none';
        document.getElementById(boxid).innerHTML = '<form class="wssearchform wsnowrap" name="search" id="search" action="mediasearch.php" method="post" onsubmit="return xoopsFormValidate_search();"><input type="hidden" name="mids[]" value="<{$ws_mid}>" /><input type="hidden" name="action" id="action" value="results" /><input  style="margin-top: 0px;" onclick="this.value=\'\';" type="text" name="query" id="query" size="16" maxlength="64" value="<{$smarty.const._WS_SEARCH}>" /><input type="image" src="<{$xoops_url}>/modules/<{$xoops_dirname}>/assets/images/search.gif" value="<{$smarty.const._WS_SEARCH}>" alt="<{$smarty.const._WS_SEARCH}>" name="<{$smarty.const._WS_SEARCH}>" /></form>';
        setTimeout(wssearchoff, 10000);

        function wssearchoff() {
            document.getElementById(boxid).innerHTML = '';
            document.getElementById(boxid + 'link').style.display = 'inline';
        }
    }
</script>
<div id="wscatselect" class="wscatselect">
    <!-- <{$smarty.const._WS_CATEGORY}> --><{$category_select}>
</div>
<div class="wssearchbox">
    <span id="wssearchbox"></span>
   <span id="wssearchboxlink" onmouseover="wsSearch('wssearchbox');">
      <a href="mediasearch.php" target="_self" rel="follow" title="<{$smarty.const._WS_MEDIASEARCH}>">
         <!-- <{$smarty.const._WS_MEDIASEARCH}> -->
         <img src="<{$xoops_url}>/modules/<{$xoops_dirname}>/assets/images/search.gif" alt="<{$smarty.const._WS_MEDIASEARCH}>"/>
      </a>
   </span>
    <{if $submitlink}>
        <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/submit.php" target="_self" rel="nofollow" title="<{$smarty.const._WS_SUBMITLINK}>">
            <img src="<{$xoops_url}>/modules/<{$xoops_dirname}>/assets/images/submit.gif" alt="<{$smarty.const._WS_SUBMITLINK}>"/>
            <!-- <{$smarty.const._WS_SUBMITLINK}> -->
        </a>
    <{/if}>
    <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/index.php" target="_self" rel="follow" title="<{$smarty.const._WS_HOME}>">
        <!-- <{$smarty.const._WS_HOME}> -->
        <img src="<{$xoops_url}>/modules/<{$xoops_dirname}>/assets/images/home.gif" alt="<{$smarty.const._WS_HOME}>"/>
    </a>
</div>
