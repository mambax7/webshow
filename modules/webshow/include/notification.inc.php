<?php
// 
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
// defined('XOOPS_ROOT_PATH') || exit('XOOPS root path not defined');

function webshow_notify_iteminfo($category, $item_id)
{
    global $xoopsModule, $xoopsModuleConfig, $xoopsConfig;

    if (empty($xoopsModule) || $xoopsModule->getVar('dirname') != 'webshow') {
        $moduleHandler  = xoops_getHandler('module');
        $module         = $moduleHandler->getByDirname('webshow');
        $config_handler = xoops_getHandler('config');
        $config         = $config_handler->getConfigsByCat(0, $module->getVar('mid'));
    } else {
        $module = $xoopsModule;
        $config = $xoopsModuleConfig;
    }

    //include_once XOOPS_ROOT_PATH . '/modules/' . $module->getVar('dirname') . '/language/' . $xoopsConfig['language'] . '/main.php';

    if ($category == 'global') {
        $item['name'] = '';
        $item['url']  = '';

        return $item;
    }

    global $xoopsDB;
    if ($category == 'category') {
        // Assume we have a valid category id
        $sql          = 'SELECT title FROM ' . $xoopsDB->prefix('webshow_cat') . ' WHERE cid = ' . $item_id;
        $result       = $xoopsDB->query($sql); // TODO: error check
        $result_array = $xoopsDB->fetchArray($result);
        $item['name'] = $result_array['title'];
        $item['url']  = XOOPS_URL . '/modules/' . $module->getVar('dirname') . '/viewcat.php?cid=' . $item_id;

        return $item;
    }

    if ($category == 'link') {
        // Assume we have a valid link id
        $sql          = 'SELECT cid,title FROM ' . $xoopsDB->prefix('webshow_links') . ' WHERE lid = ' . $item_id;
        $result       = $xoopsDB->query($sql); // TODO: error check
        $result_array = $xoopsDB->fetchArray($result);
        $item['name'] = $result_array['title'];
        $item['url']  = XOOPS_URL . '/modules/' . $module->getVar('dirname') . '/singlelink.php?lid=' . $item_id;

        return $item;
    }
}
