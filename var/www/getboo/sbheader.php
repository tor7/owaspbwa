<?php
/***************************************************************************
Copyright (C) 2005-2008 GetBoo project
http://sourceforge.net/projects/getboo/
http://www.getboo.com/

This file is part of GetBoo.

GetBoo is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

GetBoo is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with GetBoo; if not, write to the Free Software
Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
***************************************************************************/
	include('conn.php');
	include('bheader.php');
	echo("<br><b>" . T_("Stats") . "</b><br>");
	echo("<table class=\"bookmarks\">");
	echo("<tr><td class=\"bookmarkstitle\"><a href=\"statsb.php\">" . T_("General") . "</a> | <a href=\"sbmostused.php\">" . T_("Most Used") . "</a> | <a href=\"sbsearches.php\">" . T_("Searches") . "</a> | <a href=\"statsexportimport.php\">" . T_("Import/Export") . "</a></td></tr></table><br>\n");
?>
