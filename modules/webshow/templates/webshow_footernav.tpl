<div id="wscatselect2" class="wscatselect wsnowrap">
    <!-- <{$smarty.const._WS_CATEGORY}> --><{$category_select}>
</div>
<div class="wssearchbox">
    <span id="wssearchbox2"></span>
   <span id="wssearchbox2link" onmouseover="wsSearch('wssearchbox2');">
      <a href="mediasearch.php" target="_self" rel="follow" title="<{$smarty.const._WS_MEDIASEARCH}>">
         <!-- <{$smarty.const._WS_MEDIASEARCH}> -->
         <img src="<{$xoops_url}>/modules/<{$xoops_dirname}>/assets/images/search.gif" alt="<{$smarty.const._WS_MEDIASEARCH}>"/>
      </a>
   </span>
    <{if $submitlink}>
        <a href="<{$xoops_url}>/modules/<{$xoops_dirname}>/submit.php" target="_self" rel="nofollow" title="<{$smarty.const._WS_SUBMITLINK}>">
            <!-- <{$smarty.const._WS_SUBMITLINK}> -->
            <img src="<{$xoops_url}>/modules/<{$xoops_dirname}>/assets/images/submit.gif" alt="<{$smarty.const._WS_SUBMITLINK}>"/>
        </a>
    <{/if}>
    <a href="index.php" target="_self" rel="follow" title="<{$smarty.const._WS_HOME}>">
        <!-- <{$smarty.const._WS_HOME}> -->
        <img src="<{$xoops_url}>/modules/<{$xoops_dirname}>/assets/images/home.gif" alt="<{$smarty.const._WS_HOME}>"/>
    </a>
</div>
