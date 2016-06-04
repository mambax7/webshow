<?php
/*
You may not change or alter any portion of this comment or credits
of supporting developers from this source code or any supporting source code
which is considered copyrighted (c) material of the original comment or credit authors.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
*/
/**
 * WebShow module for xoops
 *
 * @copyright       {@link http://sourceforge.net/projects/thmod/ The TXMod XOOPS Project}
 * @copyright       {@link http://sourceforge.net/projects/xoops/ The XOOPS Project}
 * @license         GPL 2.0 or later
 * @package         webshow
 * @author          XOOPS Module Dev Team (http://xoops.org)
 * @version         $Id: $
 */

require_once dirname(dirname(dirname(__DIR__))) . '/mainfile.php';

if (!defined('WEBSHOW_DIRNAME')) {
    define('WEBSHOW_DIRNAME', $GLOBALS['xoopsModule']->dirname());
    define('WEBSHOW_PATH', XOOPS_ROOT_PATH . "/modules/" . WEBSHOW_DIRNAME);
    define('WEBSHOW_URL', XOOPS_URL . "/modules/" . WEBSHOW_DIRNAME);
    define('WEBSHOW_ADMIN', WEBSHOW_URL . "/admin/index.php");
    define('WEBSHOW_ROOT_PATH', XOOPS_ROOT_PATH . '/modules/' . WEBSHOW_DIRNAME);
    define('WEBSHOW_AUTHOR_LOGOIMG', WEBSHOW_URL . "/assets/images/logo_module.png");
}

// Define here the place where main upload path

//$img_dir = $GLOBALS['xoopsModuleConfig']['uploaddir'];

define('WEBSHOW_UPLOAD_URL', XOOPS_UPLOAD_URL . '/' . WEBSHOW_DIRNAME); // WITHOUT Trailing slash
//define("WEBSHOW_UPLOAD_PATH", $img_dir); // WITHOUT Trailing slash
define('WEBSHOW_UPLOAD_PATH', XOOPS_UPLOAD_PATH . '/' . WEBSHOW_DIRNAME); // WITHOUT Trailing slash

$moduleDirName = basename(dirname(__DIR__));
$uploadFolders = array(
    WEBSHOW_UPLOAD_PATH,
    WEBSHOW_UPLOAD_PATH . '/logo',
    WEBSHOW_UPLOAD_PATH . '/logo/stock',
    WEBSHOW_UPLOAD_PATH . '/images',
    WEBSHOW_UPLOAD_PATH . '/images/player',
    WEBSHOW_UPLOAD_PATH . '/images/category'
);

$copyFiles = array(
    WEBSHOW_UPLOAD_PATH . '/images/category',
    WEBSHOW_UPLOAD_PATH . '/images/player'
);

// module information
$mod_copyright = "<a href='http://xoops.org' title='XOOPS Project' target='_blank'>
                    <img src='" . WEBSHOW_AUTHOR_LOGOIMG . "' alt='XOOPS Project' /></a>";

