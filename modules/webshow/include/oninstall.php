<?php
// 
// Flash Media Player by Jeroen Wijering ( http://www.jeroenwijering.com ) is licensed under a Creative Commons License (http://creativecommons.org/licenses/by-nc-sa/2.0/) //
// It allows you to use and modify the script for noncommercial purposes. //
// You must share alike any modifications. //
// For commercial use you must purchase a license from Jereon Wijering at http://www.jeroenwijering.com/?order=form. //
// By installing and using the WebShow module you agree that you will not use it to display, distribute
// or syndicate a third party's copyright protected media without the owner's permission.
// The WebShow software is not to be used to display or syndicate illegal or copyright protected media content.
//  ------------------------------------------------------------------------ //
//                XOOPS - PHP Content Management System                      //
//                  Copyright (c) 2000-2016 XOOPS.org                        //
//                       <http://xoops.org/>                             //
//  ------------------------------------------------------------------------ //
//  This program is free software; you can redistribute it and/or modify     //
//  it under the terms of the GNU General Public License as published by     //
//  the Free Software Foundation; either version 2 of the License, or        //
//  (at your option) any later version.                                      //
//                                                                           //
//  You may not change or alter any portion of this comment or credits       //
//  of supporting developers from this source code or any supporting         //
//  source code which is considered copyrighted (c) material of the          //
//  original comment or credit authors.                                      //
//                                                                           //
//  This program is distributed in the hope that it will be useful,          //
//  but WITHOUT ANY WARRANTY; without even the implied warranty of           //
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the            //
//  GNU General Public License for more details.                             //
//                                                                           //
//  You should have received a copy of the GNU General Public License        //
//  along with this program; if not, write to the Free Software              //
//  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA //
//  ------------------------------------------------------------------------ //
//** Install WebShow
// defined('XOOPS_ROOT_PATH') || exit('XOOPS root path not defined');

function xoops_module_install_webshow(XoopsModule $xoopsModule)
{
    include_once dirname(dirname(dirname(__DIR__))) . '/mainfile.php';

    xoops_loadLanguage('admin', $xoopsModule->getVar('dirname'));
    xoops_loadLanguage('modinfo', $xoopsModule->getVar('dirname'));

    $moduleDirName = $xoopsModule->getVar('dirname');
    include_once $GLOBALS['xoops']->path('modules/' . $moduleDirName . '/include/config.php');

    foreach (array_keys($uploadFolders) as $i) {
        WebshowUtilities::createFolder($uploadFolders[$i]);
    }

    $file = WEBSHOW_ROOT_PATH . '/assets/images/blank.png';
    foreach (array_keys($copyFiles) as $i) {
        $dest = $copyFiles[$i] . '/blank.png';
        WebshowUtilities::copyFile($file, $dest);
    }

    return true;

    /*
        include_once $GLOBALS['xoops']->path('modules/' . $xoopsModule->getVar('dirname') . '/include/functions.php');
 
        $ret = true;
        $msg = '';
        // Create content directory
        $dir = $GLOBALS['xoops']->path('uploads/' . $xoopsModule->getVar('dirname') . '/content');
        if (!publisherMkdir($dir)) {
            $msg .= sprintf(_AM_WEBSHOW_DIRNOTCREATED, $dir);
        }
        if (empty($msg)) {
            return $ret;
        } else {
            return $msg;
        }
    */
}
