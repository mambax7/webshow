<?php
/*
 * You may not change or alter any portion of this comment or credits
 * of supporting developers from this source code or any supporting source code
 * which is considered copyrighted (c) material of the original comment or credit authors.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 */

/**
 * @copyright    XOOPS Project (http://xoops.org)
 * @license      GNU GPL 2 or later (http://www.gnu.org/licenses/gpl-2.0.html)
 * @package
 * @since
 * @author       XOOPS Development Team
 */

$rootPath      = dirname(dirname(dirname(__DIR__)));
$moduleDirName = basename(dirname(__DIR__));
include_once $rootPath . '/mainfile.php';
include_once $rootPath . '/include/cp_functions.php';
require_once $rootPath . '/include/cp_header.php';
xoops_load('XoopsRequest');

include_once dirname(__DIR__) . '/include/config.php';

global $xoopsModule;

//$moduleDirName = $GLOBALS['xoopsModule']->getVar('dirname');
//require_once $moduleDirName . '/include/common.php';

//if functions.php file exist
//require_once dirname(__DIR__) . '/include/functions.php';

//$myts = & MyTextSanitizer::getInstance();

// Load language files
xoops_loadLanguage('admin', $moduleDirName);
xoops_loadLanguage('modinfo', $moduleDirName);
xoops_loadLanguage('main', $moduleDirName);

$pathIcon16      = XOOPS_URL . '/' . $xoopsModule->getInfo('icons16');
$pathIcon32      = XOOPS_URL . '/' . $xoopsModule->getInfo('icons32');
$pathModuleAdmin = XOOPS_ROOT_PATH . '/' . $xoopsModule->getInfo('dirmoduleadmin');
require_once $pathModuleAdmin . '/moduleadmin/moduleadmin.php';

// Load language files
xoops_loadLanguage('admin', $moduleDirName);
xoops_loadLanguage('modinfo', $moduleDirName);
xoops_loadLanguage('main', $moduleDirName);

//xoops_cp_header();
$adminObject = new ModuleAdmin();
