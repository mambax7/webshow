<?php
// 
//%%%%%%        Module Name 'WebShow'       %%%%%
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

defined('XOOPS_ROOT_PATH') || exit('Restricted access');

/**
 * General Terms
 */
define('_WS_ADMIN', 'Panel de Administraci�n'); //Admin link
define('_WS_CATEGORY', 'Categor�a');
define('_WS_CATSELECT', 'Seleccione Una Categor�a:');
define('_WS_CREATED', 'Creado: ');
define('_WS_DIRECTORY', 'Directorio');
define('_WS_EMBED', 'Enclavar');
define('_WS_EMBEDLINKJS', 'Script');
define('_WS_FOOTERTEXT',
       'WebShow medios de comunicaci�n es un directorio de enlaces en los que los miembros presenten enlaces a archivos multimedia, arroyos, podcast webfeeds o sitios para compartir los medios de comunicaci�n.');
define('_WS_HOST', 'Medios de Comunicaci�n de Acogida');
define('_WS_INTRESTLINK', 'Programa de web interesante en %s');  // %s is your site name
define('_WS_INTLINKFOUND', 'Aqu� est� una programa de web interesante he encontrado en %s');  // %s is your site name
define('_WS_HOME', 'P�gina de Inicio');
define('_WS_MODIFY', 'Modificar');
define('_WS_NEW', 'Nueva');
define('_WS_NEWTHISWEEK', 'Nueva Esta Semana');
define('_MS_NOTOWNER', 'No eres el propietario de esta entrada.');
define('_WS_PAGE', 'P�gina');
define('_WS_POPULAR', 'Popular');
define('_WS_POPUP', 'Pop-Up');
define('_WS_RANK', 'Rango');
define('_WS_REQUESTMOD', 'Solicitud de Modificaci�n de Entrada');
define('_WS_REQUIRED', '<b>* = Secci�n Requerido</b>');
define('_WS_SUBCATEGORY', 'Subcategor�a');
define('_WS_SUBMITLINK', 'Enviar un enlace');
define('_WS_TOP10', '%s 10 Mejores'); // %s is a category title
define('_WS_TOPHITS', 'Las Mejores Visitas a las P�ginas');
define('_WS_TOPVIEWS', 'Mejores Medios de Comunicaci�n');
define('_WS_UPDATED', 'Actualizado'); //New Button text
define('_WS_UPTHISWEEK', 'Actualizado Esta Semana');
define('_WS_VIEWMEDIA', 'Ver Materiales');

/**
 * THERE ARE ...
 **/
define('_WS_THEREARE', 'Cuenta: %s');
define('_WS_THEREAREBY', 'Tenemos %s espect�culo publicado por %s.'); // Used in Playposter view
define('_WS_THEREARECAT', 'Est�n %s catagor�as en el cat�logo.');
define('_WS_THEREARECATNONE', 'No hay entradas en esta categor�a.');
define('_WS_THEREAREINDEX', 'Nuestro cat�logo cuenta con %s medios de comunicaci�n listados en %s categor�as.'); // Used in index page
define('_WS_THEREARENONE', 'No hay entradas en el cat�logo.');
define('_WS_THEREAREPLAYCAT', 'Hay %s muestra en la categor�a de %s.');  // Play Cat view
define('_WS_THEREARESINGLE', '%s es de la categor�a de %s en el %s.'); //Singlelink.php line 379.  Listing title, category title, sitename modname
define('_WS_THEREARESUBCAT', 'Hay %s categor�as de %s en el directorio.');

/**
 * Player
 */
define('_WS_PAUSE', 'Pausa');
define('_WS_PLAY', 'Encender');
define('_WS_PLAYER', 'Reproductor');
define('_WS_PLAYER_ON', 'Encienda el reproductor');
define('_WS_PLAYER_OFF', 'Encienda el reproductor apagado');
define('_WS_STOP', 'Pare');

/**
 * Item Info
 */
define('_WS_CREDITS', 'Cr�ditos');
define('_WS_CREDIT1', 'Artista');
define('_WS_CREDIT2', '�lbum');
define('_WS_CREDIT3', 'Sello Discogr�fico');
define('_WS_DESCRIPTION', 'Descripci�n');
define('_WS_DOWNLOAD', 'Descargar');
define('_WS_PAGEHITS', 'Visitas a las P�ginas');
define('_WS_PAGE_VIEW', 'Ver P�gina');
define('_WS_POSTER', 'Presentador: ');
define('_WS_POSTERTITLE', 'Programa de Web Por %s');
define('_WS_POSTERVIEW', 'Ver Todo');
define('_WS_POSTERVIEW_DSC', 'Ver todo de este presentador.');
define('_WS_STATISTICS', 'Estad�sticas');
define('_WS_TITLE', 'T�tulo');
define('_WS_VIEWS', 'Observaci�nes de Medios');
define('_WS_WEBFEED', 'Alimentaci�n');
define('_WS_WEBSITE', 'Sitio');

/*
* BUTTONS
*/
define('_WS_BUTTON_PAGE', 'P�gina'); // Page link button text
define('_WS_BUTTON_POPULAR', 'Popular'); // Popular Button text
define('_WS_BUTTON_NEW', 'Nueva'); // New Button text
define('_WS_BUTTON_UPDATED', 'Actualizado'); // New Button text
define('_WS_BUTTON_PLAYERON', 'Reproductor Encendido');
define('_WS_BUTTON_PLAYEROFF', 'Reproductor Apagado');

/*
* Item Info Box
*/
define('_WS_CODES', 'C�digos');
define('_WS_CODES_DSC', 'Mostrar Insertar Link y C�digos');
define('_WS_CODEBOX', 'Insertar y Enlace C�digo');
define('_WS_CODEBOX_DSC', 'Haga clic dentro de la caja y luego copiar y pegar en su sitio.');
define('_WS_HIDE', 'Ocultar');
define('_WS_PERMALINK', 'Perma');
define('_WS_SENDEMAIL', 'Correo Electr�nico a un Amigo');
define('_WS_SHARE', 'Compartir');
define('_WS_SOCIALBOOKMARK', 'Marcadores Sociales');

/*
* ID3 TAGS
*/
define('_WS_ID3TAG', 'ID3 Informaci�n de Etiqueta');
define('_WS_ID3TITLE', 'T�tulp');
define('_WS_ID3ARTIST', 'Artista');
define('_WS_ID3ALBUM', '�lbum');
define('_WS_ID3COMPOSER', 'Compositor');
define('_WS_ID3COPYRIGHT', 'Los Derechos de Autor');
define('_WS_ID3GENRE', 'G�nero');
define('_WS_ID3YEAR', 'A�o');

/*
* Feed and track data
*/

define('_WS_FEED_TEXT', 'Texto de alimentaci�n');
define('_WS_FEEDDATA', 'Alimentaci�n de Datos');
define('_WS_TRACKAUDIO', 'Audio:');
define('_WS_TRACKAUTHOR', 'Autor:');
define('_WS_TRACKCAPTIONS', 'subt�tulo:');
define('_WS_TRACKCAT', 'Categor�a:');
define('_WS_TRACKCITY', 'Ciudad:');
define('_WS_TRACKDATA', 'Los Datos del Tema');
define('_WS_TRACKDATE', 'D�a:');
define('_WS_TRACKDESC', 'Descripci�n:');
define('_WS_TRACKFILE', 'Archivo:');
define('_WS_TRACKID', 'ID:');
define('_WS_TRACKIMAGE', 'Imagen:');
define('_WS_TRACKLAT', 'Latitud:');
define('_WS_TRACKLINK', 'Conexi�n:');
define('_WS_TRACKLONG', 'Longitud:');
define('_WS_TRACKSTART', 'Empazar:');
define('_WS_TRACKTITLE', 'T�tulo:');
define('_WS_TRACKTYPE', 'Tipo:');

/**
 * Rating
 */
define('_WS_CANTVOTEOWN', 'No puedes calificar tu propia entrada.');
define('_WS_DONOTVOTE', 'No vote por su propia entrada.');
define('_WS_ONEVOTE', 'Un voto');
define('_WS_NORATING', 'Nada selecci�nado.');
define('_WS_NUMVOTES', '%s votos');
define('_WS_RATE', 'Rate');
define('_WS_RATING', 'Valuaci�n');
define('_WS_RATINGNO', 'No hay votos');
define('_WS_RATETHISSITE', 'Califique este programa');
define('_WS_RATINGSCALE', 'Califique 1 (malo) - 10 (bien)');
define('_WS_THANKURATE', 'Gracias para calificar esta programa.');
define('_WS_TOPRATED', 'Mejor valorado');
define('_WS_VOTE', 'Vote');
define('_WS_VOTEONCE', 'Permite un voto por cada entrada.');
define('_WS_VOTEONCE2', 'Ya se han evaluado.');

/**
 * Report
 */
define('_WS_ALREADYREPORTED', 'Un informe se ha enviado.');
define('_WS_FORSECURITY', 'Por razones de seguridad su nombre de usuario y la direcci�n IP registrada temporalmente.');
define('_WS_REPORT', 'Informar');
define('_WS_REPORT_DSC', 'Por favor, informe programas que est�n rotas, que abusar nuestros t�rminos de servicio, o mostrar de su propiedad los medios de comunicaci�n.');
define('_WS_REPORTABUSE', 'Abuso');
define('_WS_REPORTBROKEN', 'Roto');
define('_WS_REPORTCOMMENT', 'Comentar�o');
define('_WS_REPORTCOMMENT_DSC', 'Por favor describa su problema.<br>Informes de derecho de autor debe incluir el nombre del propietario y los medios de comunicaci�n de la ubicaci�n original.');
define('_WS_REPORTCOPYRIGHT', 'Derechos de autor');
define('_WS_THANKSFORINFO', 'Gracias por la informaci�n. Veremos en breve su solicitud.');
define('_WS_THANKSFORHELP', 'Gracias por ayudarnos a mantener la integridad de este directorio.');

/*
* Response Messages
*/
define('_WS_ALLPENDING', 'Su informaci�n ser� publicada cuando se verifica.');
define('_WS_CAPTCHA_INCORRECT', 'C�digo de Confirmaci�n Incorrecto');
define('_WS_ISAPPROVED', 'Hemos aprobado su entrada los medios de comunicaci�n la presentaci�n');
define('_WS_MUSTREGFIRST', 'Lo sentimos, usted no tiene el permiso para hacerlo.<br>Por favor registro o login primero!');
define('_WS_NOTEXIST', 'No Existe');
define('_WS_NOTALLOWED', 'Not Permitido');
define('_WS_RECEIVED', 'Hemos recibido su entrada de medios de comunicaci�n. Gracias!');
define('_WS_REQUESTDENIED', 'Solicitud Denegada.');
define('_WS_ERROR_EMBEDPLUG', 'Roto Medios de comunicaci�n: Lo sentimos, este plugin ha incrustar un error.');
define('_WS_ERROR_NOMEDIALOCATION', 'Broken Media: The media location could not be found.');

/**
 * Search
 */

define('_WS_MEDIASEARCH', 'B�squeda de medios de comunicaci�n');
define('_WS_SEARCH', 'Buscar');  // used in search form
define('_WS_SEARCHFOUND', 'El b�squeda encuentra %s resulto(s) de <i>%s</i>');
define('_WS_SEARCHFOUNDNO', 'No se encontraron resultados.');
define('_WS_SEARCHRESULTS', 'Resultados de la b�squeda de %s:'); // %s is search term
define('_WS_SEARCHTERM', 'T�rmino de b�squeda');
define('_WS_SEARCHTERMENTER', 'Por favor, introduzca un t�rmino de b�squeda.');
define('_WS_SEARCHTERMNO', 'No hubo t�rmino de b�squeda disponibles.');
define('_WS_SEARCHTERMSHORT', 'La palabra clave de b�squeda debe ser m�s largo que %s letras.');
define('_WS_SEARCHTERMX', 'T�rmino no utilizadas');

/**
 * Sorting
 */
define('_WS_CATSORTEDBY', '%s Categor�a por %s'); // Category Pages
define('_WS_CURSORTEDBY', 'Ordenar por: %s');
define('_WS_MEDIASORTEDBY', 'Programas de medios de comunicaci�n la lista de la %s'); //Index Page
define('_WS_SORTBY', 'Ordenar por:');
define('_WS_CATTITLEATOZ', 'Categor�a (A hasta Z)');
define('_WS_CATTITLEZTOA', 'Categor�a (Z hasta A)');
define('_WS_DATEOLD', 'D�a (lo m�s antiguo)');
define('_WS_DATENEW', 'D�a (lo m�s nuevo)');
define('_WS_LIDLTOH', 'ID (bajo)');
define('_WS_LIDHTOL', 'ID (arriba)');
define('_WS_PAGEHITSLTOM', 'Visitas a las p�ginas (lo menos)');
define('_WS_PAGEHITSMTOL', 'Visitas a las p�ginas (lo m�s)');
define('_WS_PARENTLTOH', 'ID de archivo superior (bajo)');
define('_WS_PARENTHTOL', 'ID de archivo superior (arriba)');
define('_WS_RATINGLTOH', 'Clasificaci�n (lo menos)');
define('_WS_RATINGHTOL', 'Clasificaci�n (lo m�s)');
define('_WS_TITLEATOZ', 'T�tulo (A hasta Z)');
define('_WS_TITLEZTOA', 'T�tulo (Z hasta A)');
define('_WS_VOTESLTOM', 'Votos (lo menos)');
define('_WS_VOTESMTOL', 'Votos (lo m�s)');
define('_WS_VIEWSLTOM', 'Las observaci�nes de los medios de comunicaci�n (lo menos)');
define('_WS_VIEWSMTOL', 'Las observaci�nes de los medios de comunicaci�n (lo m�s)');
