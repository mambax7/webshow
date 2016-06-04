<?php

// defined('XOOPS_ROOT_PATH') || exit('XOOPS root path not defined');

// Enter The Embed Host's name
$hostname = 'Picassa';

// Enter the Host's URL.  If possible use listurl to create a link to the media's page.
//$hostlink = "http://www.flickr.com/search/show/?q=".$listurl;
$hostlink = $listurl;
// Enter instructions used in the submit form
$embed_dsc = 'Enter a short search term to embed a Picassa SlideShow.';

$vCode = '5360294633090056081';

$backgroundcolor = '0xFFFFFF';
$language        = '';
$movie           = '';
$startpos        = strpos($listurl, 'albumid/') + 8;
$endpos          = strpos($listurl, '?');
$length          = $endpos - $startpos;
$vCode           = substr($listurl, $startpos, $length);

$startpos = strpos($listurl, 'user/') + 5;
$endpos   = strpos($listurl, '/', $startpos);
$length   = $endpos - $startpos;
$user     = substr($listurl, $startpos, $length);

echo 'USER:' . $user . '<P>';

$movie =
    '<embed pluginspage = "http://www.macromedia.com/go/getflashplayer" wmode="transparent" src="http://picasaweb.google.com/s/c/bin/slideshow.swf" type= "application/x-shockwave-flash" flashvars="host=picasaweb.google.com&RGB=0x'
    . $backgroundcolor
    . '&feed=http%3A%2F%2Fpicasaweb.google.com%2Fdata%2Ffeed%2Fapi%2Fuser%2F'
    . $user
    . '%2Falbumid%2F'
    . $vCode
    . '%3Fkind%3Dphoto%26alt%3Drss" width="'
    . $width
    . '"height="'
    . $height
    . '"></embed>';

// Embed Logo
// Flickr Logo: http://l.yimg.com/g/images/spaceball.gif
$embed_logo = '';
