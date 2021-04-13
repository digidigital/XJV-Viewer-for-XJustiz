<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="http://www.xjustiz.de" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0">
   <xsl:output method="htmll" encoding="utf-8" version="" indent="yes" />
   <xsl:strip-space elements="*" />
   <!--

Copyright (c) 2021 - Björn Seipel - https://github.com/digidigital/XJV-Viewer-for-XJustiz

Permission is hereby granted, free of charge, to any person 
obtaining a copy of this software and associated documentation 
files (the "Software"), to deal in the Software without restriction,
 including without limitation the rights to use, copy, modify, 
merge, publish, distribute, sublicense, and/or sell copies of 
the Software, and to permit persons to whom the Software is 
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall 
be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES 
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND 
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT 
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
DEALINGS IN THE SOFTWARE.

#######################################################################

License for Light Javascript Table Filter

Copyright (c) 2021 by Chris Coyier  (https://codepen.io/chriscoyier/pen/tIuBL)
Fork of an original work Light Javascript Table Filter (https://codepen.io/oceatoon/pen/jKqEI

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

-->
   <!-- Bereitstellung von Codelisten und Suchtemplates -->
   <xsl:variable name="cl_allgemein" select="document('./tools/lookups/xjustiz_0010_cl_allgemein_3_3.xsd')" />
   
<xsl:template name="cl_allgemein">
      <xsl:param name="liste" />
      <xsl:param name="code" />
      <xsl:value-of select="$cl_allgemein//xs:complexType[@name=$liste]//xs:enumeration[@value = $code]//wert" />
   </xsl:template>
   <xsl:variable name="cl_telekommunikation" select="document('./tools/lookups/xjustiz_0060_cl_telekommunikation_3_0.xsd')" />
   
<xsl:template name="cl_telekommunikation">
      <xsl:param name="liste" />
      <xsl:param name="code" />
      <xsl:value-of select="$cl_telekommunikation//xs:complexType[@name=$liste]//xs:enumeration[@value = $code]//wert" />
   </xsl:template>
   <xsl:variable name="cl_rollenbezeichnung" select="document('./tools/lookups/xjustiz_0040_cl_rollenbezeichnung_3_2.xsd')" />
   
<xsl:template name="cl_rollenbezeichnung">
      <xsl:param name="liste" />
      <xsl:param name="code" />
      <xsl:value-of select="$cl_rollenbezeichnung//xs:complexType[@name=$liste]//xs:enumeration[@value = $code]//wert" />
   </xsl:template>
   <xsl:variable name="cl_personalstatut" select="document('./tools/lookups/xjustiz_0095_cl_personalstatut_3_0.xsd')" />
   
<xsl:template name="cl_personalstatut">
      <xsl:param name="liste" />
      <xsl:param name="code" />
      <xsl:value-of select="$cl_personalstatut//xs:complexType[@name=$liste]//xs:enumeration[@value = $code]//wert" />
   </xsl:template>
   <xsl:variable name="cl_register" select="document('./tools/lookups/xjustiz_0080_cl_register_3_0.xsd')" />
   
<xsl:template name="cl_register">
      <xsl:param name="liste" />
      <xsl:param name="code" />
      <xsl:value-of select="$cl_register//xs:complexType[@name=$liste]//xs:enumeration[@value = $code]//wert" />
   </xsl:template>
   <xsl:variable name="GDS_Staaten" select="document('./tools/lookups/Country%20Codes_2.xml')" />
   
<xsl:template name="GDS.Staaten">
      <xsl:param name="code" />
      <xsl:value-of select="$GDS_Staaten//Row[Value/SimpleValue/text() = $code]/Value[@ColumnRef = 'ShortName']/SimpleValue/text()" />
   </xsl:template>
   <xsl:variable name="GDS_Gerichte" select="document('./tools/lookups/GDS.Gerichte_3.3.xml')" />
   
<xsl:template name="GDS.Gerichte">
      <xsl:param name="code" />
      <xsl:value-of select="$GDS_Gerichte//Row[Value/SimpleValue/text() = $code]/Value[@ColumnRef = 'wert']/SimpleValue/text()" />
   </xsl:template>
   <xsl:variable name="GDS_Ereignis" select="document('./tools/lookups/GDS.Ereignis_1.3.xml')" />
   
<xsl:template name="GDS.Ereignis">
      <xsl:param name="code" />
      <xsl:value-of select="$GDS_Ereignis//Row[Value/SimpleValue/text() = $code]/Value[@ColumnRef = 'wert']/SimpleValue/text()" />
   </xsl:template>
   <xsl:variable name="GDS_Sendungsprioritaet" select="document('./tools/lookups/GDS.Sendungsprioritaet_1.0.xml')" />
   
<xsl:template name="GDS.Sendungsprioritaet">
      <xsl:param name="code" />
      <xsl:value-of select="$GDS_Sendungsprioritaet//Row[Value/SimpleValue/text() = $code]/Value[@ColumnRef = 'wert']/SimpleValue/text()" />
   </xsl:template>
   <xsl:variable name="GDS_Dokumentklasse" select="document('./tools/lookups/GDS.Dokumentklasse_1.2.xml')" />
   
<xsl:template name="GDS.Dokumentklasse">
      <xsl:param name="code" />
      <xsl:value-of select="$GDS_Dokumentklasse//Row[Value/SimpleValue/text() = $code]/Value[@ColumnRef = 'wert']/SimpleValue/text()" />
   </xsl:template>
   <xsl:variable name="GDS_Dokumenttyp" select="document('./tools/lookups/GDS.Dokumenttyp_3.4.xml')" />
   
<xsl:template name="GDS.Dokumenttyp">
      <xsl:param name="code" />
      <xsl:value-of select="$GDS_Dokumenttyp//Row[Value/SimpleValue/text() = $code]/Value[@ColumnRef = 'wert']/SimpleValue/text()" />
   </xsl:template>
   <xsl:variable name="GDS_Vertraulichkeitsstufe" select="document('./tools/lookups/Vertraulichkeitsstufe_1.0.xml')" />
   
<xsl:template name="GDS.Vertraulichkeitsstufe">
      <xsl:param name="code" />
      <xsl:value-of select="$GDS_Vertraulichkeitsstufe//Row[Value/SimpleValue/text() = $code]/Value[@ColumnRef = 'Beschreibung']/SimpleValue/text()" />
   </xsl:template>
   <!-- Ende Codelisten und Suchtemplates -->
   
<xsl:template match="/">
      <html>
         <head>
            <meta charset="UTF-8" />
            <script>
               <xsl:text disable-output-escaping="yes"><![CDATA[
function toggleVisibility(button) {
	var foldableDIV = button.closest('.akte').querySelector('.foldable');
	var property = foldableDIV.style.display;
	if (property == 'none' || property == '') {
		foldableDIV.style.display = 'flow-root';
		button.classList.remove('chevronsDown');
		button.classList.add('chevronsUp');
	} else {
		foldableDIV.style.display = 'none';
		button.classList.remove('chevronsUp');
		button.classList.add('chevronsDown');
	}
}

function unfoldAll() {
	for (const item of document.querySelectorAll(".chevronsDown")) {
		item.classList.add('chevronsUp');
		item.classList.remove('chevronsDown');
	}
	for (const item of document.querySelectorAll(".foldable")) {
		item.style.display = "flow-root";

	}
}

function foldAll() {
	for (const item of document.querySelectorAll(".chevronsUp")) {
		item.classList.add('chevronsDown');
		item.classList.remove('chevronsUp');

	}
	for (const item of document.querySelectorAll(".foldable")) {
		item.style.display = "none";
	}
}

function minimize() {
	document.querySelector('.overlay').style.display = "none";
}


var lastTable = '';

function maximize(buttonElement, tableClass) {
	var overlay = document.querySelector(".overlay");

	/* Tabelle klonen und Klasse/Data-Table-Attribut für Filter anpassen */
	if (tableClass != lastTable) {
		lastTable = tableClass;
		var clone = buttonElement.closest('.dokumentenuebersicht').cloneNode(true);
		overlay.innerHTML = '';
		overlay.appendChild(clone);
		overlay.querySelector('.maximize').style.display = "none";
		overlay.querySelector('.minimize').style.display = "block";
		overlay.querySelector('.light-table-filter').setAttribute("data-table", "overlay-table");
		overlay.querySelector('.light-table-exclude-filter').setAttribute("data-table", "overlay-table");
		var overlayTable = overlay.querySelector('.dateitabelle');
		overlayTable.setAttribute("class", "bordered dateitabelle overlay-table");

		/* Vorgabespalten für vergroesserte Overlay-Ansicht ein-/ausblenden */
		var displayColumns = ['2', '3', '4', '5', '7', '9', '10', '11', '13', '14', '20'];
		var hideColumns = ['1'];
		displayColumns.forEach(function(i) {
			displayColumn(overlayTable, i);
		});
		hideColumns.forEach(function(i) {
			hideColumn(overlayTable, i);
		});

		/* Filter neu initialisieren und ggf. leere Spalten ausblenden */
		LightTableFilter.init();
		hideEmptyColumnsAll('.overlay-table');
	}
	overlay.style.display = "block";
}

/* Leere Spalten ausblenden */
function hideEmptyColumnsAll(query) {
	for (const table of document.querySelectorAll(query)) {
		hideEmptyColumns(table);
	}
}

function hideEmptyColumns(table) {
	var tbody = table.querySelector("tbody");
	var rows = tbody.getElementsByTagName("tr");
	var columnCount = table.querySelectorAll("th").length;

	for (var i = 0; i < columnCount; i++) {
		/* put all text (without whitespaces) found in the column's cells in a variable */
		var text = '';
		for (const row of rows) {
			text += row.cells[i].innerText.replace(/\s/g, '');
		}
		if (text.length == 0) {
			hideColumn(table, i);
		}
	}
}

function toggleColumn(buttonElement, column) {
	var dokumentenuebersicht = buttonElement.closest('.dokumentenuebersicht');
	var table = dokumentenuebersicht.querySelector(".dateitabelle");
	window.getComputedStyle(table.querySelector(".col" + column)).display == 'none' ? displayColumn(table, column) : hideColumn(table, column);
}

function displayColumn(table, column) {
	for (const e of table.querySelectorAll(".col" + column)) {
		e.style.display = 'table-cell';
	}
}

function hideColumn(table, column) {
	for (const e of table.querySelectorAll(".col" + column)) {
		e.style.display = 'none';
	}
}

/* (Extended) Light Table Filter from https://github.com/digidigital/Light-Table-Filter */
var LightTableFilter = (function(Arr) {

	var _input;
	var _excludeinput;

	function _onInputEvent(e) {

		var _datatable = e.target.getAttribute('data-table');

		if (e.target.className === 'light-table-filter') {
			_input = e.target;
			_excludeinput = document.querySelector("input[class=light-table-exclude-filter][data-table=" + CSS.escape(_datatable) + "]");
		} else {
			_input = document.querySelector("input[class=light-table-filter][data-table=" + CSS.escape(_datatable) + "]");
			_excludeinput = e.target;
		}

		var tables = document.getElementsByClassName(_input.getAttribute('data-table'));
		Arr.forEach.call(tables, function(table) {
			Arr.forEach.call(table.tBodies, function(tbody) {
				Arr.forEach.call(tbody.rows, _filter);
			});
		});
	}

	function _filter(row) {
		var text = row.textContent.toLowerCase(),
			val = _input.value.toLowerCase(),
			negval = _excludeinput.value.toLowerCase();

		row.style.display = val.replace(/\s/g, '') == '' ? 'table-row' : 'none';
		val.split(' ').forEach(function(word) {
			row.style.display = text.indexOf(word) === -1 || word == '' ? row.style.display : 'table-row';
		});

		negval.split(' ').forEach(function(word) {
			row.style.display = text.indexOf(word) === -1 || word == '' ? row.style.display : 'none';
		});
	}

	return {
		init: function() {
			var inputs = document.getElementsByClassName('light-table-filter');
			Arr.forEach.call(inputs, function(input) {
				input.oninput = _onInputEvent;
			});
			inputs = document.getElementsByClassName('light-table-exclude-filter');
			Arr.forEach.call(inputs, function(input) {
				input.oninput = _onInputEvent;
			});
		}
	};
})(Array.prototype);

document.addEventListener('readystatechange', function() {
	if (document.readyState === 'complete') {
		hideEmptyColumnsAll('.dateitabelle');
		LightTableFilter.init();
	}
});

;]]></xsl:text>
            </script>
		 
            <style>/*------------------   Layout ----------------- */
.container {
    display        : flex;
    justify-content: space-between;

    height: 100vh;
    width : 100%;
}

.left {
    box-sizing : border-box;
    width      : 55%;
    resize     : horizontal;
    overflow-x : hidden;
    overflow-y : scroll;
    padding    : 20px;
    flex-shrink: 1;
    flex-grow  : 1;
}

.right {
    box-sizing        : border-box;
    width             : 45%;
    flex-grow         : 1;
    flex-shrink       : 1;
    overflow          : hidden;
    -webkit-app-region: drag;
}

/*------------------   Allgemeiner Style ----------------- */

body {
    font-family: "Verdana", sans-serif;
    font-family: Verdana, 'trebuchet MS', 'Lucida sans', Arial;
    font-size  : 14px;
    margin     : 0;
    padding    : 0;
}

.navigation {
    margin-top: 5px;
}

.foldable {
    display: none;
    margin : 0 auto;
    width  : 98%;
}

.uppercase {
    text-transform: uppercase;
}

summary:focus {
    outline: 0;
}

button {
    border-radius   : 8px;
    border          : solid silver 2px;
    background-color: #dce9f9;
    padding-left    : 5px;
    padding-right   : 5px;
    text-align      : center;
    text-decoration : none;
    display         : inline-block;
    font-size       : 12px;
    margin          : 0px 0px 0px 0px;
    cursor          : pointer;
}



hr {
    border          : none;
    height          : 1px;
    background-color: silver;
}

.akte,
.teilakte,
.instanzdaten,
.beteiligter {
    width        : 100%;
    box-sizing   : border-box;
    border-radius: 8px;
    padding      : 5px;
    padding      : 5px;
    border       : 2px solid silver;
    margin-top   : 5px;
    box-shadow   : 3px 3px 8px grey;
}

input {
    margin-top   : 5px;
    margin-bottom: 5px;
    border-radius: 4px;
    border       : 2px solid lightblue;
    width        : 150px;
    height       : 21px
}

.dokumentencontrols {
    float     : right;
    margin-top: 6px;
}

.instanzdaten {
    box-sizing: border-box;
    padding   : 5px;
}

.teilakte {
    margin-top   : 0.5%;
    margin-bottom: 0.5%;

}

.anschrift,
.natuerlichePerson,
.kanzlei,
.person,
.geburt,
.tod,
.bankverbindung,
.registrierung,
.registrierung,
.sitz,
.organisation {
    margin-top   : 5px;
    border       : 1px solid black;
    border-radius: 8px;
    padding      : 5px;

}

summary&gt;* {
    display: inline;
}

.resizable {
    resize  : both;
    overflow: auto;
}

/*------------------ Style für maximierte Darstellung----------------- */

.overlay {
    display         : none;
    position        : absolute;
    width           : 98vw;
    height          : 98vh;
    margin-top      : 1vh;
    margin-left     : 1vw;
    z-index         : 20;
    border          : 2px solid gray;
    border-radius   : 10px;
    padding         : 10;
    background-color: white;
    box-sizing      : border-box;
    box-shadow      : 5px 5px 10px grey;
    overflow        : hidden;
}

.overlay table {
    font-size: 12px;
}

/*------------------   Dropdown Style ----------------- */

.dropdown {
    position: relative;
    display : inline-block;
}

.dropdown-content {
    display         : none;
    position        : absolute;
    right           : 0;
    background-color: #f9f9f9;
    /*min-width     : 160px;*/
    box-shadow      : 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
    z-index         : 10;
}

.dropdown-content a {
    box-sizing     : border-box;
    color          : black;
    padding        : 4px 6px;
    white-space    : nowrap;
    text-decoration: none;
    display        : block;
}

.dropdown-content a:hover {
    box-sizing      : border-box;
    padding         : 0px 4px;
    background-color: Cornsilk;
    border          : solid silver 2px;
}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}

/*------------------   Icons Style ----------------- */

.icon {
    box-sizing: border-box;
    margin    : 2px;
    width     : 12px;
    height    : 12px;
    float     : left;
    cursor    : pointer;
}

.chevronsDown {
    background     : url("data:image/svg+xml,%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2224%22%20height=%2224%22%20viewBox=%220%200%2024%2024%22%20fill=%22none%22%20stroke=%22currentColor%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20class=%22feather%20feather-chevrons-down%22%3E%3Cpolyline%20points=%227%2013%2012%2018%2017%2013%22%3E%3C/polyline%3E%3Cpolyline%20points=%227%206%2012%2011%2017%206%22%3E%3C/polyline%3E%3C/svg%3E");
    background-size: contain;
    color          : green;
}

.chevronsUp {
    background     : url("data:image/svg+xml,%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2224%22%20height=%2224%22%20viewBox=%220%200%2024%2024%22%20fill=%22none%22%20stroke=%22currentColor%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20class=%22feather%20feather-chevrons-up%22%3E%3Cpolyline%20points=%2217%2011%2012%206%207%2011%22%3E%3C/polyline%3E%3Cpolyline%20points=%2217%2018%2012%2013%207%2018%22%3E%3C/polyline%3E%3C/svg%3E");
    background-size: contain;
}

.externalLink {
    background     : url("data:image/svg+xml,%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2224%22%20height=%2224%22%20viewBox=%220%200%2024%2024%22%20fill=%22none%22%20stroke=%22currentColor%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20class=%22feather%20feather-external-link%22%3E%3Cpath%20d=%22M18%2013v6a2%202%200%200%201-2%202H5a2%202%200%200%201-2-2V8a2%202%200%200%201%202-2h6%22%3E%3C/path%3E%3Cpolyline%20points=%2215%203%2021%203%2021%209%22%3E%3C/polyline%3E%3Cline%20x1=%2210%22%20y1=%2214%22%20x2=%2221%22%20y2=%223%22%3E%3C/line%3E%3C/svg%3E");
    background-size: contain;
}

.settings {
    background     : url("data:image/svg+xml,%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2224%22%20height=%2224%22%20viewBox=%220%200%2024%2024%22%20fill=%22none%22%20stroke=%22currentColor%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20class=%22feather%20feather-settings%22%3E%3Ccircle%20cx=%2212%22%20cy=%2212%22%20r=%223%22%3E%3C/circle%3E%3Cpath%20d=%22M19.4%2015a1.65%201.65%200%200%200%20.33%201.82l.06.06a2%202%200%200%201%200%202.83%202%202%200%200%201-2.83%200l-.06-.06a1.65%201.65%200%200%200-1.82-.33%201.65%201.65%200%200%200-1%201.51V21a2%202%200%200%201-2%202%202%202%200%200%201-2-2v-.09A1.65%201.65%200%200%200%209%2019.4a1.65%201.65%200%200%200-1.82.33l-.06.06a2%202%200%200%201-2.83%200%202%202%200%200%201%200-2.83l.06-.06a1.65%201.65%200%200%200%20.33-1.82%201.65%201.65%200%200%200-1.51-1H3a2%202%200%200%201-2-2%202%202%200%200%201%202-2h.09A1.65%201.65%200%200%200%204.6%209a1.65%201.65%200%200%200-.33-1.82l-.06-.06a2%202%200%200%201%200-2.83%202%202%200%200%201%202.83%200l.06.06a1.65%201.65%200%200%200%201.82.33H9a1.65%201.65%200%200%200%201-1.51V3a2%202%200%200%201%202-2%202%202%200%200%201%202%202v.09a1.65%201.65%200%200%200%201%201.51%201.65%201.65%200%200%200%201.82-.33l.06-.06a2%202%200%200%201%202.83%200%202%202%200%200%201%200%202.83l-.06.06a1.65%201.65%200%200%200-.33%201.82V9a1.65%201.65%200%200%200%201.51%201H21a2%202%200%200%201%202%202%202%202%200%200%201-2%202h-.09a1.65%201.65%200%200%200-1.51%201z%22%3E%3C/path%3E%3C/svg%3E");
    background-size: contain;
}

.maximize {
    background     : url("data:image/svg+xml,%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2224%22%20height=%2224%22%20viewBox=%220%200%2024%2024%22%20fill=%22none%22%20stroke=%22currentColor%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20class=%22feather%20feather-maximize-2%22%3E%3Cpolyline%20points=%2215%203%2021%203%2021%209%22%3E%3C/polyline%3E%3Cpolyline%20points=%229%2021%203%2021%203%2015%22%3E%3C/polyline%3E%3Cline%20x1=%2221%22%20y1=%223%22%20x2=%2214%22%20y2=%2210%22%3E%3C/line%3E%3Cline%20x1=%223%22%20y1=%2221%22%20x2=%2210%22%20y2=%2214%22%3E%3C/line%3E%3C/svg%3E");
    background-size: contain;
    float          : right;
}

.minimize {
    background     : url("data:image/svg+xml,%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2224%22%20height=%2224%22%20viewBox=%220%200%2024%2024%22%20fill=%22none%22%20stroke=%22currentColor%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20class=%22feather%20feather-minimize-2%22%3E%3Cpolyline%20points=%224%2014%2010%2014%2010%2020%22%3E%3C/polyline%3E%3Cpolyline%20points=%2220%2010%2014%2010%2014%204%22%3E%3C/polyline%3E%3Cline%20x1=%2214%22%20y1=%2210%22%20x2=%2221%22%20y2=%223%22%3E%3C/line%3E%3Cline%20x1=%223%22%20y1=%2221%22%20x2=%2210%22%20y2=%2214%22%3E%3C/line%3E%3C/svg%3E");
    background-size: contain;
    display        : none;
    float          : right;
}

.eye {
    background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' width='24' height='24' viewBox='0 0 24 24' fill='none' stroke='currentColor' stroke-width='2' stroke-linecap='round' stroke-linejoin='round' class='feather feather-eye'%3e%3cpath d='M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z'%3e%3c/path%3e%3ccircle cx='12' cy='12' r='3'%3e%3c/circle%3e%3c/svg%3e");
    background-size : contain;
}

/*------------------   Table Style ----------------- */

table {
    box-sizing     : border-box;
    width          : 100%;
    border-collapse: separate;
    border-spacing : 0;
    font-size      : 14px;
}

.dokumententabelle {
    box-sizing      : border-box;
    overflow        : scroll;
    width           : 100%;
    max-height      : 90vh;
    background-color: white;

}

th {
    position: -webkit-sticky;
    position: sticky;
    top     : 0;
    z-index : 2;
}

th[scope=row] {
    position: -webkit-sticky;
    position: sticky;
    left    : 0;
    z-index : 1;
}

.bordered {
    border               : solid #ccc 1px;
    -moz-border-radius   : 6px;
    -webkit-border-radius: 6px;
    border-radius        : 6px;
    -webkit-box-shadow   : 0 1px 1px #ccc;
    -moz-box-shadow      : 0 1px 1px #ccc;
    box-shadow           : 0 1px 1px #ccc;
}

.bordered tr:hover {
    background        : Cornsilk;
    -o-transition     : all 0.1s ease-in-out;
    -webkit-transition: all 0.1s ease-in-out;
    -moz-transition   : all 0.1s ease-in-out;
    -ms-transition    : all 0.1s ease-in-out;
    transition        : all 0.1s ease-in-out;
}

.bordered td,
.bordered th {
    border-left: 1px solid #ccc;
    border-top : 1px solid #ccc;
    padding    : 5px;
    text-align : center;
}

.bordered th {
    background-color  : #dce9f9;
    background-image  : -webkit-gradient(linear, left top, left bottom, from(#ebf3fc), to(#dce9f9));
    background-image  : -webkit-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image  : -moz-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image  : -ms-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image  : -o-linear-gradient(top, #ebf3fc, #dce9f9);
    background-image  : linear-gradient(top, #ebf3fc, #dce9f9);
    -webkit-box-shadow: 0 1px 0 rgba(255, 255, 255, .8) inset;
    -moz-box-shadow   : 0 1px 0 rgba(255, 255, 255, .8) inset;
    box-shadow        : 0 1px 0 rgba(255, 255, 255, .8) inset;
    border-top        : none;
    text-shadow       : 0 1px 0 rgba(255, 255, 255, .5);
    padding           : 5px;
    text-align        : center;
}

.bordered td:first-child,
.bordered th:first-child {
    border-left: none;
}

.bordered th:first-child {
    -moz-border-radius   : 6px 0 0 0;
    -webkit-border-radius: 6px 0 0 0;
    border-radius        : 6px 0 0 0;
}

.bordered th:last-child {
    -moz-border-radius   : 0 6px 0 0;
    -webkit-border-radius: 0 6px 0 0;
    border-radius        : 0 6px 0 0;
}

.bordered th:only-child {
    -moz-border-radius   : 6px 6px 0 0;
    -webkit-border-radius: 6px 6px 0 0;
    border-radius        : 6px 6px 0 0;
}

.bordered tr:last-child td:first-child {
    -moz-border-radius   : 0 0 0 6px;
    -webkit-border-radius: 0 0 0 6px;
    border-radius        : 0 0 0 6px;
}

.bordered tr:last-child td:last-child {
    -moz-border-radius   : 0 0 6px 0;
    -webkit-border-radius: 0 0 6px 0;
    border-radius        : 0 0 6px 0;
}

/*------------------  Spalten standardmäßig ausblenden ----------------- */

.col2,
.col3,
.col4,
.col6,
.col7,
.col8,
.col12,
.col13,
.col14,
.col15,
.col16,
.col17,
.col18,
.col19,
.col20 {
    display: none;
}

/*------------------  Spaltenbreite minimierenund zentrieren ----------------- */

.col0,
.col1,
.col2,
.col3,
.col4,
.col10,
.col14,
.col15,
.col16,
.col17,
.col19,
.col20,
.col21,
.col22 {
    width:10px;
    text-align:center;
}


/*------------------ Print Style ----------------- */

@media print {
    @page {
        size  : auto;
        margin: 0mm;
    }

    .right,
    .slider,
    .navigation,
    .overlay,
    button {
        display: none;
    }

    .left {
        width: 100%;
    }
}</style>
         </head>
         <body>
            <div class="overlay">
               <p />
            </div>
            <div class="container">
               <div id="left" class="split left">
                  <p>
                     <h1>XJustiz 3.2.1 Viewer Proof Of Concept</h1>
                     <xsl:apply-templates />
                  </p>
               </div>
               <div class="split right">
                  <iframe width="100%" height="100%" name="preview" src="about:blank" />
               </div>
            </div>
         </body>
      </html>
   </xsl:template>
   <!--NACHRICHTENKOPF-->
   
<xsl:template match="tns:nachrichtenkopf">
      <hr />
      <div class="nachrichtenkopf">
         <h2>Nachrichtenkopf</h2>
         Erstellungszeitpunkt:
         <xsl:value-of select="./tns:erstellungszeitpunkt" />
         <br />
         <xsl:apply-templates select="./tns:ereignis" />
         <xsl:apply-templates select="./tns:sendungsprioritaet" />
         <small>
            <details>
               <summary>Weitere technische Informationen</summary>
               <u>
                  XJustiz Version:
                  <xsl:value-of select="./@xjustizVersion" />
               </u>
               <br />
               <u>Nachrichten IDs</u>
               <br />
               Absender Nachrichten-ID:
               <xsl:value-of select="./tns:eigeneNachrichtenID" />
               <br />
               Fremde Nachrichten-ID:
               <xsl:value-of select="./tns:fremdeNachrichtenID" />
               <br />
               <u>Softwareinformationen</u>
               <br />
               Produkt:
               <xsl:value-of select="./tns:herstellerinformation/tns:nameDesProdukts" />
               <br />
               Hersteller:
               <xsl:value-of select="./tns:herstellerinformation/tns:herstellerDesProdukts" />
               <br />
               Version:
               <xsl:value-of select="./tns:herstellerinformation/tns:version" />
               <br />
               <u>Nachrichtenübergreifender Prozess</u>
               <br />
               Prozess-ID:
               <xsl:value-of select="./tns:nachrichtenuebergreifenderProzess/tns:prozessID" />
               <br />
               Nachricht Nummer:
               <xsl:value-of select="./tns:nachrichtenuebergreifenderProzess/tns:nachrichtenNummer" />
               <br />
               Von Gesamtnachrichten:
               <xsl:value-of select="./tns:nachrichtenuebergreifenderProzess/tns:nachrichtenAnzahl" />
               <br />
            </details>
         </small>
         <table>
            <tr>
               <td>
                  Absender:
                  <xsl:variable name="absender" select="./tns:auswahl_absender/tns:absender.sonstige" />
                  <xsl:value-of select="normalize-space(translate($absender, '&#xA;','|'))" />
                  <xsl:call-template name="GDS.Gerichte">
                     <xsl:with-param name="code" select="normalize-space(./tns:auswahl_absender/tns:absender.gericht)" />
                  </xsl:call-template>
                  <xsl:call-template name="cl_allgemein">
                     <xsl:with-param name="liste" select="'Code.GDS.RVTraeger'" />
                     <xsl:with-param name="code" select="normalize-space(./tns:auswahl_absender/tns:absender.rvTraeger)" />
                  </xsl:call-template>
                  <br />
               </td>
               <td>
                  <xsl:apply-templates select="./tns:aktenzeichen.absender" />
               </td>
            </tr>
            <tr>
               <td>
                  Empfänger:
                  <xsl:variable name="empfaenger" select="./tns:auswahl_empfaenger/tns:empfaenger.sonstige" />
                  <xsl:value-of select="normalize-space(translate($empfaenger, '&#xA;','|'))" />
                  <xsl:call-template name="GDS.Gerichte">
                     <xsl:with-param name="code" select="normalize-space(./tns:auswahl_empfaenger/tns:empfaenger.gericht)" />
                  </xsl:call-template>
                  <xsl:call-template name="cl_allgemein">
                     <xsl:with-param name="liste" select="'Code.GDS.RVTraeger'" />
                     <xsl:with-param name="code" select="normalize-space(./tns:auswahl_empfaenger/tns:empfaenger.rvTraeger)" />
                  </xsl:call-template>
                  <br />
               </td>
               <td>
                  <xsl:apply-templates select="./tns:aktenzeichen.empfaenger" />
               </td>
            </tr>
         </table>
      </div>
   </xsl:template>
   <!-- Templates für Elemente mit n-Ausprägung (und einige optionale Elemente)-->
   
<xsl:template match="tns:ereignis">
      <div class="ereignis">
         Ereignis:
         <xsl:call-template name="GDS.Ereignis">
            <xsl:with-param name="code" select="normalize-space(.)" />
         </xsl:call-template>
      </div>
   </xsl:template>
   
<xsl:template match="tns:sendungsprioritaet">
      <div class="sendungsprioritaet">
         Sendungspriorität:
         <xsl:call-template name="GDS.Sendungsprioritaet">
            <xsl:with-param name="code" select="normalize-space(.)" />
         </xsl:call-template>
      </div>
   </xsl:template>
   
<xsl:template match="tns:aktenzeichen.absender">
      <div class="aktenzeichen.absender">
         Aktenzeichen: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:aktenzeichen.empfaenger">
      <div class="aktenzeichen.empfaenger">
         Aktenzeichen: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   <!--GRUNDDATEN-->
   
<xsl:template match="tns:grunddaten">
      <hr />
      <div class="grunddaten">
         <h2>Grunddaten</h2>
         <xsl:if test="./tns:verfahrensdaten">
            <hr />
            <details>
               <summary>
                  <b>Verfahrensdaten</b>
               </summary>
               <xsl:apply-templates select="./tns:verfahrensdaten" />
            </details>
         </xsl:if>
         <xsl:if test="./tns:verfahrensdaten/tns:beteiligung">
            <hr />
            <details>
               <summary>
                  <b>Beteiligte</b>
               </summary>
               <div id="beteiligenliste">
                  <xsl:apply-templates select="./tns:verfahrensdaten/tns:beteiligung" />
               </div>
            </details>
         </xsl:if>
         <xsl:if test="./tns:verfahrensdaten/tns:auswahl_termin">
            <hr />
            Terminsdaten:
            <br />
            <xsl:apply-templates select="./tns:verfahrensdaten/tns:auswahl_termin" />
         </xsl:if>
      </div>
   </xsl:template>
   
<xsl:template match="tns:verfahrensdaten">
      <div class="verfahrensdaten">
         <xsl:apply-templates select="./tns:verfahrensnummer" />
         <xsl:apply-templates select="./tns:instanzdaten" />
      </div>
   </xsl:template>
   
<xsl:template match="tns:verfahrensnummer">
      <div class="verfahrensnummer">
         Verfahrensnummer: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:instanzdaten">
      <div class="instanzdaten">
         <xsl:apply-templates select="./tns:instanznummer" />
         Behörde:
         <xsl:call-template name="GDS.Gerichte">
            <xsl:with-param name="code" select="normalize-space(./tns:auswahl_instanzbehoerde/tns:gericht/code)" />
         </xsl:call-template>
         <!-- überprüfen -->
         <xsl:value-of select="./tns:auswahl_instanzbehoerde/tns:sonstige/code" />
         <details>
            <summary>
               <small>Weitere Details...</small>
            </summary>
            <xsl:apply-templates select="./tns:abteilung" />
            <xsl:apply-templates select="./tns:kurzrubrum" />
            <xsl:apply-templates select="./tns:aktenzeichen" />
            <xsl:apply-templates select="./tns:verfahrensgegenstand" />
            <xsl:apply-templates select="./tns:verfahrensinstanznummer" />
            <xsl:apply-templates select="./tns:telekommunikation" />
            <xsl:apply-templates select="./tns:sachgebiet" />
            <xsl:apply-templates select="./tns:sachgebietszusatz" />
         </details>
      </div>
   </xsl:template>
   
<xsl:template match="tns:aktenzeichen">
      <div class="aktenzeichen">
         Aktenzeichen:
         <xsl:value-of select="./tns:auswahl_aktenzeichen/tns:aktenzeichen.freitext" />
         <xsl:apply-templates select="./tns:auswahl_aktenzeichen/tns:aktenzeichen.strukturiert" />
      </div>
      <xsl:apply-templates select="./tns:auswahl_az.vergebendeStation" />
      <xsl:apply-templates select="./tns:az.art" />
   </xsl:template>
   
<xsl:template match="tns:sachgebiet">
      <div class="sachgebiet">
         Sachgebiet:
         <xsl:call-template name="cl_allgemein">
            <xsl:with-param name="liste" select="'Code.GDS.Sachgebiet'" />
            <xsl:with-param name="code" select="./code" />
         </xsl:call-template>
      </div>
   </xsl:template>
   
<xsl:template match="tns:sachgebietszusatz">
      <div class="sachgebietszusatz">
         Sachgebietszusatz: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   <!-- Strukturiertes Az mangels Testdaten ungetestet und unformatiert!!!-->
   
<xsl:template match="tns:aktenzeichen.strukturiert">
      <xsl:value-of select="./tns:vorsatz" />
      <xsl:value-of select="./tns:abteilung" />
      <!-- Registerzeichen wird nicht aufgelöst-->
      <xsl:value-of select="./tns:register" />
      <xsl:value-of select="./tns:laufendeNummer" />
      <xsl:value-of select="./tns:jahr" />
      <xsl:value-of select="./tns:zusatz" />
      <br />
      Ggf. abweichendes Dezernat:
      <xsl:value-of select="./tns:dezernat" />
      <br />
      Az.-Sachgebietsschlüssel:
      <xsl:value-of select="./tns:sachgebietsschluessel" />
      <br />
      Az.-Zusatzkennung:
      <xsl:value-of select="./tns:zusatzkennung" />
      <br />
      Az.-Erfassungsdatum:
      <xsl:value-of select="./tns:erfassungsdatum" />
      <br />
   </xsl:template>
   
<xsl:template match="tns:az.art">
      <div class="azart">
         Az.-Art:
         <xsl:call-template name="cl_allgemein">
            <xsl:with-param name="liste" select="'Code.GDS.Aktenzeichenart'" />
            <xsl:with-param name="code" select="normalize-space(.)" />
         </xsl:call-template>
      </div>
   </xsl:template>
   
<xsl:template match="tns:auswahl_az.vergebendeStation">
      <div class="azbehoerde">
         Az.-vergebende Behörde:
         <xsl:value-of select="normalize-space(./tns:sonstige)" />
         <xsl:call-template name="GDS.Gerichte">
            <xsl:with-param name="code" select="normalize-space(./tns:gericht)" />
         </xsl:call-template>
         <xsl:apply-templates select="./tns:beteiligter" />
      </div>
   </xsl:template>
   
<xsl:template match="tns:instanznummer">
      <div class="instanznummer">
         Instanznummer: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:abteilung">
      <div class="abteilung">
         Abteilung: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:kurzrubrum">
      <div class="kurzrubrum">
         Kurzrubrum: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:verfahrensinstanznummer">
      <div class="verfahrensinstanznummer">
         Verfahrensinstanznummer: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:verfahrensgegenstand">
      <div class="verfahrensgegenstand">
         Verfahrensgegenstand:
         <xsl:value-of select="./tns:gegenstand" />
         <br />
         Gegenstandswert:
         <xsl:value-of select="./tns:gegenstandswert/tns:zahl" />
         <xsl:value-of select="./tns:gegenstandswert/tns:waehrung" />
         <br />
         Zeitraum:
         <xsl:value-of select="./tns:auswahl_zeitraumDesVerwaltungsaktes/tns:jahr" />
         <xsl:value-of select="./tns:auswahl_zeitraumDesVerwaltungsaktes/tns:keinZeitraum" />
         <xsl:value-of select="./tns:auswahl_zeitraumDesVerwaltungsaktes/tns:stichtag" />
         <xsl:apply-templates select="./tns:zeitraum" />
      </div>
   </xsl:template>
   <!-- Templates zur Darstellung von Beteiligungen -->
   
<xsl:template match="tns:beteiligung">
      <div class="beteiligter">
         <xsl:apply-templates select="./tns:rolle" />
         <xsl:apply-templates select="./tns:beteiligter" />
      </div>
   </xsl:template>
   
<xsl:template match="tns:rolle">
      <details>
         <summary>
            <xsl:call-template name="cl_rollenbezeichnung">
               <xsl:with-param name="liste" select="'Code.GDS.Rollenbezeichnung'" />
               <xsl:with-param name="code" select="normalize-space(./tns:rollenbezeichnung)" />
            </xsl:call-template>
             
            <xsl:value-of select="./tns:nr" />
         </summary>
         <div class="rolle">
            Rollen-ID:
            <xsl:value-of select="./tns:rollenID/tns:id" />
            <br />
            Rollen-ID Instanznummer:
            <xsl:value-of select="./tns:rollenID/tns:ref.instanznummer" />
            <br />
            Geschäftszeichen:
            <xsl:value-of select="./tns:geschaeftszeichen" />
            <br />
            Bezeichnung:
            <xsl:value-of select="./tns:naehereBezeichnung" />
            <br />
            Bezug zu:
            <xsl:apply-templates select="./tns:referenz" />
         </div>
      </details>
   </xsl:template>
   
<xsl:template match="tns:organisation">
      <details>
         <summary>
            Organisation:
            <xsl:value-of select="./tns:bezeichnung/tns:bezeichnung.aktuell" />
         </summary>
         <div class="organisation">
            <xsl:apply-templates />
         </div>
      </details>
   </xsl:template>
   
<xsl:template match="tns:bezeichnung.aktuell">
      <div class="bezeichnung.aktuell">
         Organisation:
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:bezeichnung.alt">
      <div class="bezeichnung.alt">
         Ehemals:
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:kurzbezeichnung">
      <div class="kurzbezeichnung">
         Kurzbezeichnung:
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:sitz">
      <details>
         <summary>Sitz der Organisation</summary>
         <div class="sitz">
            <xsl:apply-templates />
         </div>
      </details>
   </xsl:template>
   
<xsl:template match="tns:ort">
      <div class="ort">
         Ort:
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:postleitzahl">
      <div class="postleitzahl">
         Postleitzahl:
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   <!-- Templates zur Darstellung von Terminen -->
   
<xsl:template match="tns:auswahl_termin/*">
      <div class="terminübersicht">
         Terminsübersicht noch nicht implementiert
         <!--
<table >
  <thead>
  
    <tr>
      <th>ID</th>
      <th>Zeit</th>
      <th>Art</th>
      <th>Ort</th>
      <th>Teilnehmer</th>
      <th>Spruchkörper</th>
      <th>Sonstiges</th>
    </tr>
    
   </thead>
  <tbody>
  <appy-templates/>
   
  </tbody>
</table>
-->
      </div>
   </xsl:template>
   <!--SCHRIFTGUTOBJEKTE-->
   
<xsl:template match="//tns:schriftgutobjekte">
      <hr />
      <div class="schriftgutobjekte">
         <h2>Schriftgutobjekte</h2>
         <xsl:if test="./tns:anschreiben">
            <hr />
            <details>
               <summary>
                  <b>Anschreiben (Verweis auf begleitendes Dokument oder Dokument in einer Akte)</b>
               </summary>
               <xsl:call-template name="dokumententabelle">
                  <xsl:with-param name="sgoID" select="normalize-space(./tns:anschreiben/tns:ref.sgo/text())" />
               </xsl:call-template>
            </details>
         </xsl:if>
         <xsl:if test="./tns:dokument">
            <hr />
            <details>
               <summary>
                  <b>Begleitende Dokumente</b>
               </summary>
               <xsl:call-template name="dokumententabelle" />
            </details>
         </xsl:if>
         <xsl:if test="./tns:akte">
            <hr />
            <details>
               <summary>
                  <b>Akten</b>
               </summary>
               <div class="navigation">
                  <button onclick="unfoldAll()">Alles aufklappen</button>
                  |
                  <button onclick="foldAll()">Alles einklappen</button>
               </div>
               <xsl:apply-templates select="tns:akte">
                  <xsl:sort select="./tns:akte/tns:identifikation/tns:nummerImUebergeordnetenContainer" />
               </xsl:apply-templates>
            </details>
         </xsl:if>
         <hr />
         <div style="height: 50vh;width: 1px">
            <p />
         </div>
      </div>
   </xsl:template>
   
<xsl:template match="tns:akte | tns:teilakte">
      <hr />
      <div class="akte">
         <div class="chevronsDown icon" onclick="toggleVisibility(this)">
            <span />
         </div>
          
         <b>
            <xsl:choose>
               <xsl:when test="local-name() = 'akte'">Akte:</xsl:when>
               <xsl:otherwise>Teilakte:</xsl:otherwise>
            </xsl:choose>
            <xsl:value-of select="./tns:xjustiz.fachspezifischeDaten/tns:anzeigename/text()" />
         </b>
         <xsl:if test="./tns:anwendungsspezifischeErweiterung ">
            <div>
               <br />
               <b>Diese Akte enthält nicht unterstützte anwendungsspezifische Erweiterungen!</b>
            </div>
            <br />
         </xsl:if>
         <xsl:if test="./tns:laufzeit">
            <div>
               Laufzeit: 
               <xsl:value-of select="./tns:laufzeit/tns:beginn" />
                bis 
               <xsl:value-of select="./tns:laufzeit/tns:ende" />
            </div>
         </xsl:if>
         <xsl:apply-templates select="./tns:vertraulichkeitsstufe" />
         <xsl:apply-templates select="tns:xjustiz.fachspezifischeDaten" />
      </div>
   </xsl:template>
   
<xsl:template match="tns:xjustiz.fachspezifischeDaten">
      <xsl:apply-templates select="tns:aktentyp" />
      <xsl:apply-templates select="tns:aktenzeichen" />
      <xsl:apply-templates select="tns:weiteresOrdnungskriteriumBehoerde" />
      <xsl:apply-templates select="tns:teilaktentyp" />
      <xsl:apply-templates select="tns:erstellungszeitpunktAkteVersand" />
      <div class="foldable innerdiv">
         <xsl:apply-templates select="tns:inhalt" />
      </div>
   </xsl:template>
   
<xsl:template match="tns:aktentyp">
      <div class="aktentyp">
         Aktentyp: 
         <xsl:call-template name="cl_allgemein">
            <xsl:with-param name="liste" select="'Code.GDS.Aktentyp'" />
            <xsl:with-param name="code" select="./code/text()" />
         </xsl:call-template>
      </div>
   </xsl:template>
   
<xsl:template match="tns:teilaktentyp">
      <div class="teilaktentyp">
         Teilaktentyp: 
         <xsl:call-template name="cl_allgemein">
            <xsl:with-param name="liste" select="'Code.GDS.Teilaktentyp'" />
            <xsl:with-param name="code" select="./code/text()" />
         </xsl:call-template>
      </div>
   </xsl:template>
   
<xsl:template match="tns:weiteresOrdnungskriteriumBehoerde">
      <div class="weiteresOrdnungskriteriumBehoerde">
         Weiteres Ordnungskriterium: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:erstellungszeitpunktAkteVersand">
      <div class="erstellungszeitpunktAkteVersand">
         Stand (Erzeugung): 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:inhalt">
      <xsl:apply-templates select="tns:teilakte">
         <xsl:sort select="./tns:teilakte/tns:nummerImUebergeordnetenContainer" />
      </xsl:apply-templates>
      <hr />
      <xsl:if test="./tns:dokument">
         <xsl:call-template name="dokumententabelle" />
      </xsl:if>
   </xsl:template>
   
<xsl:template name="dokumententabelle">
      <xsl:param name="sgoID" />
      <xsl:variable name="tabellenID">
         <!-- Dokumente gehören zu Akte oder Teilakte normalize-space(../../tns:identifikation/tns:id)-->
         <xsl:if test="../../tns:identifikation/tns:id">
            <xsl:value-of select="normalize-space(../../tns:identifikation/tns:id)" />
         </xsl:if>
         <!-- Dokumente sind ohne Aktenbezug im SGOContainer -->
         <xsl:if test="not(../../tns:identifikation/tns:id)">rootContainer</xsl:if>
         <!-- Dokument ist Anschreiben und sgoID ist gesetzt -->
         <xsl:if test="$sgoID != ''">Anschreiben</xsl:if>
      </xsl:variable>
      <div class="dokumentenuebersicht">
         <input type="search" class="light-table-filter" data-table="{$tabellenID}" placeholder="Filter / Suchbegriff" />
          | 
         <input type="search" class="light-table-exclude-filter" data-table="{$tabellenID}" placeholder="Negativfilter" />
         <div class="dokumentencontrols">
            <div class="maximize icon" onclick="maximize(this, '{$tabellenID}')">
               <span />
            </div>
            <div class="minimize icon" onclick="minimize()">
               <span />
            </div>
            <div class="dropdown">
               <div class="eye icon">
                  <span />
               </div>
               <div class="dropdown-content">
                  <a onclick="toggleColumn(this, 1)">Datum</a>
                  <a onclick="toggleColumn(this, 2)">Dokumentendatum</a>
                  <a onclick="toggleColumn(this, 3)">Eingangsdatum</a>
                  <a onclick="toggleColumn(this, 4)">Veraktungsdatum</a>
                  <a onclick="toggleColumn(this, 5)">Absender</a>
                  <a onclick="toggleColumn(this, 6)">Fremdes Gz.</a>
                  <a onclick="toggleColumn(this, 7)">Adressat</a>
                  <a onclick="toggleColumn(this, 8)">Person</a>
                  <a onclick="toggleColumn(this, 9)">Klasse</a>
                  <a onclick="toggleColumn(this, 10)">Typ</a>
                  <a onclick="toggleColumn(this, 11)">Bestandteil</a>
                  <a onclick="toggleColumn(this, 12)">Bezugsdateien</a>
                  <a onclick="toggleColumn(this, 13)">Verweis</a>
                  <a onclick="toggleColumn(this, 14)">EEB</a>
                  <a onclick="toggleColumn(this, 15)">Akteneinsicht</a>
                  <a onclick="toggleColumn(this, 16)">§41StPO</a>
                  <a onclick="toggleColumn(this, 17)">Justizkostenrelevanz</a>
                  <a onclick="toggleColumn(this, 18)">Vertraulichkeitsstufe</a>
                  <a onclick="toggleColumn(this, 19)">Version</a>
                  <a onclick="toggleColumn(this, 20)">Anzeigename</a>
               </div>
            </div>
         </div>
         <div class="dokumententabelle">
            <table width="300px" class="bordered dateitabelle {$tabellenID}">
               <thead>
                  <tr>
                     <th class="col0">#</th>
                     <th class="col1">Datum</th>
                     <th class="col2">Dokument­en­datum</th>
                     <th class="col3">Ein­gangs­datum</th>
                     <th class="col4">Ver­akt­ungs­datum</th>
                     <th class="col5">Absender</th>
                     <th class="col6">Fremdes Gz.</th>
                     <th class="col7">Adressat</th>
                     <th class="col8">Person</th>
                     <th class="col9">Klasse</th>
                     <th class="col10">Typ</th>
                     <th class="col11">Be­stand­teil</th>
                     <th class="col12">Bezugs­datei­en</th>
                     <th class="col13">Ver­weis</th>
                     <th class="col14">EEB</th>
                     <th class="col15">Akten­ein­sicht</th>
                     <th class="col16">§41StPO</th>
                     <th class="col17">Kosten­rele­vanz</th>
                     <th class="col18">Ver­trau­lich­keits­stufe</th>
                     <th class="col19">Ver­sion</th>
                     <th class="col20">Anzeige­name</th>
                     <th class="col21">Datei</th>
                     <th class="col22">
                        <div class="externalLink icon">
                           <span />
                        </div>
                     </th>
                  </tr>
               </thead>
               <tbody>
                  <xsl:choose>
                     <xsl:when test="$sgoID != ''">
                        <xsl:apply-templates select="//tns:dokument[./tns:identifikation/tns:id/text() = $sgoID]" />
                     </xsl:when>
                     <xsl:otherwise>
                        <xsl:apply-templates select="./tns:dokument">
                           <xsl:sort select="./tns:identifikation/tns:nummerImUebergeordnetenContainer" />
                        </xsl:apply-templates>
                     </xsl:otherwise>
                  </xsl:choose>
               </tbody>
            </table>
         </div>
      </div>
   </xsl:template>
   
<xsl:template match="tns:dokument">
      <xsl:apply-templates select="./tns:xjustiz.fachspezifischeDaten/tns:datei" />
   </xsl:template>
   
<xsl:template match="tns:datei">
      <tr>
         <td class="col0">
            <xsl:value-of select="normalize-space(../../tns:identifikation/tns:nummerImUebergeordnetenContainer/text())" />
         </td>
         <td class="col1">
            <xsl:attribute name="title">
               Datum des Schreibens: 
               <xsl:value-of select="normalize-space(../../tns:datumDesSchreibens/text())" />
               Eingangsdatum: 
               <xsl:value-of select="substring(normalize-space(../../tns:posteingangsdatum/text()),1,10)" />
               Veraktungsdatum: 
               <xsl:value-of select="normalize-space(../tns:veraktungsdatum/text())" />
            </xsl:attribute>
            <xsl:choose>
               <xsl:when test="../../tns:datumDesSchreibens">
                  <xsl:value-of select="normalize-space(../../tns:datumDesSchreibens/text())" />
               </xsl:when>
               <xsl:when test="../../tns:posteingangsdatum">
                  <xsl:value-of select="substring(normalize-space(../../tns:posteingangsdatum/text()),1,10)" />
               </xsl:when>
               <xsl:when test="../tns:veraktungsdatum">
                  <xsl:value-of select="normalize-space(../tns:veraktungsdatum/text())" />
               </xsl:when>
               <xsl:otherwise />
            </xsl:choose>
         </td>
         <td class="col2">
            <xsl:value-of select="normalize-space(../../tns:datumDesSchreibens/text())" />
         </td>
         <td class="col3">
            <xsl:value-of select="substring(normalize-space(../../tns:posteingangsdatum/text()),1,10)" />
         </td>
         <td class="col4">
            <xsl:value-of select="normalize-space(../tns:veraktungsdatum/text())" />
         </td>
         <td class="col5">
            <xsl:if test="../tns:adressatAnzeigename">
               <xsl:attribute name="title">
                  Adressat: 
                  <xsl:value-of select="normalize-space(../tns:adressatAnzeigename/text())" />
               </xsl:attribute>
            </xsl:if>
            <xsl:value-of select="normalize-space(../tns:absenderAnzeigename/text())" />
         </td>
         <td class="col6">
            <xsl:value-of select="normalize-space(../../tns:fremdesGeschaeftszeichen/text())" />
         </td>
         <td class="col7">
            <xsl:value-of select="normalize-space(../tns:adressatAnzeigename/text())" />
         </td>
         <td class="col8">
            <xsl:apply-templates select="../tns:person" />
         </td>
         <td class="col9">
            <xsl:apply-templates select="../tns:dokumentklasse" />
         </td>
         <td class="col10">
            <xsl:apply-templates select="../tns:dokumententyp" />
         </td>
         <td class="col11">
            <xsl:apply-templates select="./tns:bestandteil" />
         </td>
         <td class="col12">
            <xsl:apply-templates select="./tns:dateiname.bezugsdatei" />
         </td>
         <td class="col13">
            <xsl:apply-templates select="../tns:verweis" />
         </td>
         <td class="col14">
            <xsl:choose>
               <xsl:when test="../tns:ruecksendungEEB.erforderlich/text() = 'true'">ja</xsl:when>
               <xsl:otherwise>nein</xsl:otherwise>
            </xsl:choose>
         </td>
         <td class="col15">
            <xsl:choose>
               <xsl:when test="../tns:akteneinsicht/text() = 'true'">ja</xsl:when>
               <xsl:otherwise>nein</xsl:otherwise>
            </xsl:choose>
         </td>
         <td class="col16">
            <xsl:choose>
               <xsl:when test="../tns:zustellung41StPO/text() = 'true'">ja</xsl:when>
               <xsl:otherwise>nein</xsl:otherwise>
            </xsl:choose>
         </td>
         <td class="col17">
            <xsl:choose>
               <xsl:when test="../tns:justizkostenrelevanz/text() = 'true'">ja</xsl:when>
               <xsl:otherwise>nein</xsl:otherwise>
            </xsl:choose>
         </td>
         <td class="col18">
            <xsl:apply-templates select="../../tns:vertraulichkeitsstufe" />
         </td>
         <td class="col19">
            <xsl:apply-templates select="./tns:versionsnummer" />
         </td>
         <td class="col20">
            <xsl:value-of select="normalize-space(../tns:anzeigename/text())" />
         </td>
         <td class="col21">
            <xsl:attribute name="title">
               <xsl:apply-templates select="./tns:bestandteil" />
               <xsl:choose>
                  <xsl:when test="../tns:ruecksendungEEB.erforderlich/text() = 'true'">EEB ist erforderlich</xsl:when>
                  <xsl:otherwise>EEB ist nicht erforderlich</xsl:otherwise>
               </xsl:choose>
               <xsl:apply-templates select="../tns:verweis" />
            </xsl:attribute>
            <xsl:apply-templates select="./tns:dateiname" />
         </td>
         <td class="col22">
            <a class="external">
               <xsl:attribute name="href">
                  <xsl:value-of select="normalize-space(./tns:dateiname/text())" />
               </xsl:attribute>
               <xsl:attribute name="target">_blank</xsl:attribute>
               <div class="externalLink icon">
                  <div style="visibility: hidden;">.</div>
               </div>
            </a>
         </td>
      </tr>
   </xsl:template>
   
<xsl:template match="tns:person">
      <div class="person">
         <xsl:variable name="beteiligtennummer" select="normalize-space(./tns:ref.beteiligtennummer)" />
         <span class="uppercase">
            <xsl:value-of select="//tns:beteiligter[./tns:beteiligtennummer=$beteiligtennummer]/tns:auswahl_beteiligter/tns:natuerlichePerson/tns:vollerName/tns:nachname" />
         </span>
         <xsl:if test="//tns:beteiligter[./tns:beteiligtennummer=$beteiligtennummer]/tns:auswahl_beteiligter/tns:natuerlichePerson/tns:vollerName/tns:vorname">
            , 
            <xsl:value-of select="//tns:beteiligter[./tns:beteiligtennummer=$beteiligtennummer]/tns:auswahl_beteiligter/tns:natuerlichePerson/tns:vollerName/tns:vorname" />
         </xsl:if>
      </div>
   </xsl:template>
   
<xsl:template match="tns:dokumentklasse">
      <div class="dokumentklasse">
         <xsl:call-template name="GDS.Dokumentklasse">
            <xsl:with-param name="code" select="normalize-space(./code/text())" />
         </xsl:call-template>
      </div>
   </xsl:template>
   
<xsl:template match="tns:vertraulichkeitsstufe">
      <div class="vertraulichkeitsstufe">
         <xsl:call-template name="GDS.Vertraulichkeitsstufe">
            <xsl:with-param name="code" select="normalize-space(./code/text())" />
         </xsl:call-template>
      </div>
   </xsl:template>
   
<xsl:template match="tns:dateiname | tns:dateiname.bezugsdatei">
      <div class="dateilink">
         <a class="datei">
            <xsl:attribute name="href">
               <xsl:value-of select="normalize-space(./text())" />
            </xsl:attribute>
            <xsl:attribute name="target">preview</xsl:attribute>
            <xsl:value-of select="substring(normalize-space(./text()), 38)" />
         </a>
      </div>
   </xsl:template>
   
<xsl:template match="tns:dokumententyp">
      <div class="dokumententyp">
         <xsl:call-template name="GDS.Dokumenttyp">
            <xsl:with-param name="code" select="normalize-space(./code/text())" />
         </xsl:call-template>
      </div>
   </xsl:template>
   
<xsl:template match="tns:verweis">
      <xsl:call-template name="cl_allgemein">
         <xsl:with-param name="liste" select="'Code.GDS.Verweistyp'" />
         <xsl:with-param name="code" select="normalize-space(./tns:verweistyp/code/text())" />
      </xsl:call-template>
      zu
      <xsl:value-of select="normalize-space(./tns:anzeigenameSGO/text())" />
   </xsl:template>
   
<xsl:template match="tns:bestandteil">
      <xsl:call-template name="cl_allgemein">
         <xsl:with-param name="liste" select="'Code.GDS.Bestandteiltyp'" />
         <xsl:with-param name="code" select="./code" />
      </xsl:call-template>
   </xsl:template>
   <!-- Komplexe Typen -->
   
<xsl:template name="Type.GDS.NatuerlichePerson" match="tns:aliasNatuerlichePerson | tns:natuerlichePerson | tns:raImVerfahren | tns:eigentuemer.person">
      <xsl:param name="typ" />
      <details>
         <summary class="summary.natuerlichePerson">
            <xsl:choose>
               <xsl:when test="$typ='Alias:'">Alias: </xsl:when>
               <xsl:when test="$typ='Eigentümer:'">Eigentümer: </xsl:when>
               <xsl:otherwise>Person: </xsl:otherwise>
            </xsl:choose>
            <xsl:call-template name="nameAllgemein" />
         </summary>
         <div class="natuerlichePerson">
            <xsl:if test="./tns:auswahl_auskunftssperre">
               <div>
                  <xsl:if test="./tns:auswahl_auskunftssperre/tns:auskunftssperre.vorhanden = 'true'">
                     <div>Hinweis: Es liegt eine Auskunftssperre vor!</div>
                  </xsl:if>
                  <xsl:if test="./tns:auswahl_auskunftssperre/tns:auskunftssperre.details/tns:grundlage">
                     <div>
                        Grundlage: 
                        <xsl:value-of select="./tns:auswahl_auskunftssperre/tns:auskunftssperre.details/tns:grundlage" />
                     </div>
                  </xsl:if>
                  <xsl:if test="./tns:auswahl_auskunftssperre/tns:auskunftssperre.details/tns:umfang">
                     <div>
                        Umfang: 
                        <xsl:value-of select="./tns:auswahl_auskunftssperre/tns:auskunftssperre.details/tns:umfang" />
                     </div>
                  </xsl:if>
                  <xsl:if test="./tns:auswahl_auskunftssperre/tns:auskunftssperre.details/tns:sperrstufe">
                     <div>
                        Sperrstufe: 
                        <xsl:value-of select="./tns:auswahl_auskunftssperre/tns:auskunftssperre.details/tns:sperrstufe" />
                     </div>
                  </xsl:if>
               </div>
            </xsl:if>
            <div>
               <xsl:apply-templates select="./tns:vollerName" />
            </div>
            <xsl:if test="./tns:geburt">
               <xsl:apply-templates select="./tns:geburt" />
            </xsl:if>
            <xsl:if test="./tns:tod">
               <xsl:apply-templates select="./tns:tod" />
            </xsl:if>
            <xsl:if test="./tns:geschlecht">
               <xsl:apply-templates select="./tns:geschlecht" />
            </xsl:if>
            <xsl:if test="./tns:familienstand">
               <xsl:apply-templates select="./tns:familienstand" />
            </xsl:if>
            <xsl:if test="./tns:anschrift">
               <div>
                  <xsl:apply-templates select="./tns:anschrift" />
               </div>
            </xsl:if>
            <xsl:apply-templates select="./tns:staatsangehoerigkeit" />
            <xsl:apply-templates select="./tns:personalstatut" />
            <xsl:if test="./tns:beruf">
               <div>
                  Beruf:
                  <xsl:value-of select="./tns:beruf" />
               </div>
            </xsl:if>
            <xsl:if test="./tns:telekommunikation">
               <div>
                  <xsl:apply-templates select="./tns:telekommunikation" />
               </div>
            </xsl:if>
            <xsl:if test="./tns:bankverbindung">
               <div>
                  <xsl:apply-templates select="./tns:bankverbindung" />
               </div>
            </xsl:if>
            <xsl:apply-templates select="./tns:herkunftsland" />
            <xsl:if test="./tns:sprache">
               <div>
                  <xsl:apply-templates select="./tns:sprache" />
               </div>
            </xsl:if>
            <xsl:if test="./tns:zustaendigeInstitution">
               <xsl:for-each select="./tns:zustaendigeInstitution">
                  <div>
                     Zuständige Institution:
                     <xsl:apply-templates select="./tns:ref.rollennummer" />
                  </div>
               </xsl:for-each>
            </xsl:if>
            <xsl:if test="./tns:aliasNatuerlichePerson and not(./tns:aliasNatuerlichePerson = '')">
               <div>
                  <xsl:apply-templates select="./tns:aliasNatuerlichePerson">
                     <xsl:with-param name="typ" select="'Alias:'" />
                  </xsl:apply-templates>
               </div>
            </xsl:if>
            <xsl:apply-templates select="./tns:umsatzsteuerID" />
            <xsl:if test="./tns:registereintragungNatuerlichePerson">
               <div>
                  <xsl:apply-templates select="./tns:registereintragungNatuerlichePerson" />
               </div>
            </xsl:if>
         </div>
      </details>
   </xsl:template>
   
<xsl:template name="Type.GDS.NameNatuerlichePerson" match="tns:vollerName">
      <xsl:if test="./tns:titel">
         <div>
            Titel: 
            <xsl:value-of select="./tns:titel" />
         </div>
      </xsl:if>
      <xsl:if test="./tns:vorname">
         <div>
            Vorname: 
            <xsl:value-of select="./tns:vorname" />
         </div>
      </xsl:if>
      <xsl:if test="./tns:rufname">
         <div>
            Rufname: 
            <xsl:value-of select="./tns:rufname" />
         </div>
      </xsl:if>
      <xsl:if test="./tns:namensvorsatz">
         <div>
            Namensvorsatz: 
            <xsl:value-of select="./tns:namensvorsatz" />
         </div>
      </xsl:if>
      <xsl:if test="./tns:nachname">
         <div>
            Nachname: 
            <xsl:value-of select="./tns:nachname" />
         </div>
      </xsl:if>
      <xsl:if test="./tns:namenszusatz">
         <div>
            Namenszusatz: 
            <xsl:value-of select="./tns:namenszusatz" />
         </div>
      </xsl:if>
      <xsl:if test="./tns:geburtsnamensvorsatz">
         <div>
            Geburtsnamensvorsatz: 
            <xsl:value-of select="./tns:geburtsnamensvorsatz" />
         </div>
      </xsl:if>
      <xsl:if test="./tns:geburtsname">
         <div>
            Geburtsname: 
            <xsl:value-of select="./tns:geburtsname" />
         </div>
      </xsl:if>
      <xsl:apply-templates select="./tns:weitererName" />
      <xsl:apply-templates select="./tns:vorname.alt" />
      <xsl:apply-templates select="./tns:nachname.alt" />
   </xsl:template>
   
<xsl:template match="tns:herkunftsland">
      <div class="herkunftsland">
         Herkunftsland: 
         <xsl:apply-templates select="./tns:auswahl_staat" />
      </div>
   </xsl:template>
   
<xsl:template match="tns:staatsangehoerigkeit">
      <div class="herkunftsland">
         Staatsangehörigkeit: 
         <xsl:apply-templates select="./tns:auswahl_staat" />
      </div>
   </xsl:template>
   
<xsl:template match="tns:weitererName">
      <div class="weitererName">
         Weiterer Name: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:vorname.alt">
      <div class="vorname.alt">
         Vorname (alt): 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:nachname.alt">
      <div class="nachname.alt">
         Nachname (alt): 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template name="nameAllgemein">
      <xsl:if test="./tns:vollerName/tns:titel">
         <xsl:value-of select="./tns:vollerName/tns:titel" />
          
      </xsl:if>
      <xsl:if test="./tns:vollerName/tns:vorname">
         <xsl:value-of select="./tns:vollerName/tns:vorname" />
          
      </xsl:if>
      <xsl:if test="./tns:vollerName/tns:namensvorsatz">
         <xsl:value-of select="./tns:vollerName/tns:namensvorsatz" />
          
      </xsl:if>
      <xsl:if test="./tns:vollerName/tns:nachname">
         <span class="uppercase">
            <xsl:value-of select="./tns:vollerName/tns:nachname" />
         </span>
      </xsl:if>
   </xsl:template>
   
<xsl:template name="Type.GDS.Tod" match="tns:tod">
      <details class="tod.details">
         <summary>
            Sterbedatum: 
            <xsl:if test="./tns:sterbedatum">
               <xsl:value-of select="./tns:sterbedatum" />
            </xsl:if>
            <xsl:if test="./tns:sterbedatumZeitraum">
               <xsl:apply-templates select="./tns:sterbedatumZeitraum" />
            </xsl:if>
         </summary>
         <div class="tod">
            <xsl:apply-templates select="./tns:sterbeort" />
            <xsl:apply-templates select="./tns:sterbestandesamtBehoerdennummer" />
            <xsl:apply-templates select="./tns:sterbestandesamtName" />
            <xsl:apply-templates select="./tns:sterberegisternummer" />
            <xsl:apply-templates select="./tns:eintragungsdatum" />
            <xsl:apply-templates select="./tns:sterberegisterart" />
            <xsl:if test="./tns:todErklaert = 'true'">
               <div>Tod wurde erklärt.</div>
            </xsl:if>
         </div>
      </details>
   </xsl:template>
   
<xsl:template match="tns:eintragungsdatum">
      <div class="eintragungsdatum">
         Eintragungsdatum: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:sterberegisternummer">
      <div class="sterberegisternummer">
         Sterberegisternr.: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:sterbestandesamtBehoerdennummer">
      <div class="sterbestandesamtBehoerdennummer">
         StAmt-Behördennr.: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:sterbestandesamtName">
      <div class="sterbestandesamtName">
         StAmt-Name: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template name="Code.GDS.Registerart" match="tns:register | tns:sterberegisterart | tns:registerart ">
      <div class="register">
         Register: 
         <xsl:call-template name="cl_register">
            <xsl:with-param name="liste" select="'Code.GDS.Registerart'" />
            <xsl:with-param name="code" select="normalize-space(.)" />
         </xsl:call-template>
      </div>
   </xsl:template>
   
<xsl:template name="Type.GDS.Xdomea.ZeitraumType" match="tns:zeitraum | tns:ausschlusszeitraum | tns:ehezeit | tns:zeitraum.unterhaltsrueckstand | tns:sonstigerZeitraum | tns:zeitraumZuordnung | tns:sterbedatumZeitraum | tns:laufzeit">
      <xsl:value-of select="./tns:beginn" />
      -
      <xsl:value-of select="./tns:ende" />
   </xsl:template>
   
<xsl:template name="Code.GDS.Sprachen" match="tns:sprache">
      <div class="sprache">
         Sprache: 
         <xsl:call-template name="cl_allgemein">
            <xsl:with-param name="liste" select="'Code.GDS.Sprachen'" />
            <xsl:with-param name="code" select="normalize-space(.)" />
         </xsl:call-template>
      </div>
   </xsl:template>
   
<xsl:template name="Code.GDS.Geschlecht" match="tns:geschlecht">
      <div class="geschlecht">
         Geschlecht: 
         <xsl:call-template name="cl_allgemein">
            <xsl:with-param name="liste" select="'Code.GDS.Geschlecht'" />
            <xsl:with-param name="code" select="normalize-space(.)" />
         </xsl:call-template>
      </div>
   </xsl:template>
   
<xsl:template name="Code.GDS.Familienstand" match="tns:familienstand">
      <div class="familienstand">
         Familienstand: 
         <xsl:call-template name="cl_allgemein">
            <xsl:with-param name="liste" select="'Code.GDS.Familienstand'" />
            <xsl:with-param name="code" select="normalize-space(.)" />
         </xsl:call-template>
      </div>
   </xsl:template>
   
<xsl:template name="Code.GDS.Personalstatut" match="tns:personalstatut">
      <div class="personalstatut">
         Personalstatut: 
         <xsl:call-template name="cl_personalstatut">
            <xsl:with-param name="liste" select="'Code.GDS.Personalstatut'" />
            <xsl:with-param name="code" select="normalize-space(.)" />
         </xsl:call-template>
      </div>
   </xsl:template>
   
<xsl:template name="Type.GDS.Geburt" match="tns:geburt">
      <details class="details.geburt">
         <summary class="summary.geburt">
            Geburtsdatum: 
            <xsl:if test="./tns:geburtsdatum">
               <xsl:value-of select="./tns:geburtsdatum" />
            </xsl:if>
            <xsl:if test="./tns:geburtsdatum.unbekannt = 'true'">unbekannt</xsl:if>
         </summary>
         <div class="geburt">
            <xsl:apply-templates select="./tns:geburtsort" />
            <xsl:apply-templates select="./tns:geburtsname.mutter" />
            <xsl:if test="./tns:name.eltern and not(./tns:name.eltern = '')">
               <div>
                  <u>Name(n) der Eltern</u>
               </div>
               <xsl:apply-templates select="./tns:name.eltern/tns:nachname.vater" />
               <xsl:apply-templates select="./tns:name.eltern/tns:vorname.vater" />
               <xsl:apply-templates select="./tns:name.eltern/tns:nachname.mutter" />
               <xsl:apply-templates select="./tns:name.eltern/tns:vorname.mutter" />
            </xsl:if>
         </div>
      </details>
   </xsl:template>
   
<xsl:template match="tns:geburtsname.mutter">
      <div class="geburtsname.mutter">
         Geburtsname der Mutter: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template name="Type.GDS.Ortsangabe" match="tns:geburtsort">
      <xsl:apply-templates select="./tns:ort" />
      <xsl:apply-templates select="./tns:staat" />
   </xsl:template>
   
<xsl:template match="tns:staat">
      <!-- Nur ausführen, wenn auswahl_staat folgt -->
      <xsl:if test="./tns:auswahl_staat">
         <div class="staat">
            Staat: 
            <xsl:apply-templates select="./tns:auswahl_staat" />
         </div>
      </xsl:if>
   </xsl:template>
   
<xsl:template match="tns:nachname.vater">
      <div class="nachname.vater">
         Nachname Vater: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:vorname.vater">
      <div class="vorname.vater">
         Vorname Vater: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:nachname.mutter">
      <div class="nachname.mutter">
         Nachname Mutter: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:vorname.mutter">
      <div class="vorname.mutter">
         Vorname Mutter: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template name="Type.GDS.Anschrift" match="tns:anschrift | tns:sterbeort">
      <details class="details.anschrift">
         <summary class="summary.anschrift">
            Anschrift 
            <xsl:if test="./tns:anschriftstyp">
               (
               <xsl:apply-templates select="./tns:anschriftstyp" />
               )
            </xsl:if>
            <br />
         </summary>
         <!--Adressfeld folgt möglichst DIN 5008-->
         <div class="anschrift">
            <xsl:if test="./tns:ehemaligeAnschrift/text() = 'true'">
               <div>Hinweis: Es handelt sich um eine ehemalige Anschrift!</div>
            </xsl:if>
            <xsl:if test="./tns:ortsteil" />
            <div>
               <xsl:value-of select="./tns:ortsteil" />
            </div>
            <xsl:if test="./tns:strasse">
               <div>
                  <xsl:value-of select="./tns:strasse" />
                   
                  <xsl:value-of select="./tns:hausnummer" />
                  <xsl:if test="./tns:anschriftenzusatz">
                      // 
                     <xsl:value-of select="./tns:anschriftenzusatz" />
                  </xsl:if>
               </div>
            </xsl:if>
            <xsl:if test="./tns:postfachnummer">
               <div>
                  Postfach
                  <xsl:value-of select="./tns:postfachnummer" />
               </div>
            </xsl:if>
            <div>
               <xsl:value-of select="./tns:postleitzahl" />
               <xsl:if test="./tns:postleitzahl.unbekannt/text() = 'true'">- Postleitzahl unbekannt -</xsl:if>
                
               <xsl:value-of select="./tns:ort" />
               <xsl:if test="./tns:ort.unbekannt/text() = 'true'">- Ort unbekannt -</xsl:if>
            </div>
            <xsl:apply-templates select="./tns:staat" />
            <xsl:apply-templates select="./tns:wohnungsgeber" />
            <xsl:apply-templates select="././tns:erfassungsdatum" />
         </div>
      </details>
   </xsl:template>
   
<xsl:template match="tns:wohnungsgeber">
      <div class="wohnungsgeber">
         Wohnungsgeber: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:erfassungsdatum">
      <div class="erfassungsdatum">
         Erfassungsdatum: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template name="Code.GDS.Anschriftstyp" match="tns:anschriftstyp">
      <xsl:call-template name="cl_allgemein">
         <xsl:with-param name="liste" select="'Code.GDS.Anschriftstyp'" />
         <xsl:with-param name="code" select="normalize-space(.)" />
      </xsl:call-template>
   </xsl:template>
   
<xsl:template name="Type.GDS.Staat" match="tns:auswahl_staat">
      <xsl:call-template name="GDS.Staaten">
         <xsl:with-param name="code" select="normalize-space(./tns:staat)" />
      </xsl:call-template>
      <!-- Kürzel auflösen implementieren ??? -->
      <xsl:value-of select="./tns:staat.alternativ" />
   </xsl:template>
   
<xsl:template name="Type.GDS.Kommunikation" match="tns:telekommunikation">
      <div class="telekommunikation">
         <xsl:call-template name="cl_telekommunikation">
            <xsl:with-param name="liste" select="'Code.GDS.Telekommunikationsart'" />
            <xsl:with-param name="code" select="normalize-space(./tns:telekommunikationsart)" />
         </xsl:call-template>
         <xsl:if test="./tns:telekommunikationszusatz">
            (
            <xsl:call-template name="cl_telekommunikation">
               <xsl:with-param name="liste" select="'Code.GDS.Telekommunikationszusatz'" />
               <xsl:with-param name="code" select="normalize-space(./tns:telekommunikationszusatz)" />
            </xsl:call-template>
            )
         </xsl:if>
         :
         <xsl:value-of select="./tns:verbindung" />
      </div>
   </xsl:template>
   <!---Bankdaten -->
   
<xsl:template name="Type.GDS.Bankverbindung" match="tns:bankverbindung">
      <details class="details.bankverbindung">
         <summary>Bankverbindung</summary>
         <div class="bankverbindung">
            <xsl:apply-templates select="./tns:bankverbindungsnummer" />
            <xsl:apply-templates select="./tns:bank" />
            <xsl:apply-templates select="./tns:kontoinhaber" />
            <xsl:apply-templates select="./tns:iban" />
            <xsl:apply-templates select="./tns:bic" />
            <xsl:apply-templates select="./tns:verwendungszweck" />
            <xsl:apply-templates select="././tns:erfassungsdatum" />
            <xsl:choose>
               <xsl:when test="tns:sepa-mandat = 'true'">Dem Gericht liegt ein SEPA-Mandat vor.</xsl:when>
               <xsl:otherwise>Dem Gericht liegt kein SEPA-Mandat vor.</xsl:otherwise>
            </xsl:choose>
         </div>
      </details>
   </xsl:template>
   
<xsl:template match="tns:bankverbindungsnummer">
      <div class="bankverbindungsnummer">
         Bankverbindungsnummer: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:bank">
      <div class="bank">
         Bank: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:kontoinhaber">
      <div class="kontoinhaber">
         Kontoinhaber: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:iban">
      <div class="iban">
         IBAN: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:bic">
      <div class="bic">
         BIC: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:verwendungszweck">
      <div class="verwendungszweck">
         Verwendungszweck: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   <!-- Registerdaten -->
   
<xsl:template match="tns:registereintragungNatuerlichePerson">
      <xsl:apply-templates />
   </xsl:template>
   
<xsl:template match="tns:verwendeteFirma">
      <div class="verwendeteFirma">
         Firma:
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:weitereBezeichnung">
      <div class="weitereBezeichnung">
         Weitere Bezeichnung:
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template name="Type.GDS.Registrierung" match="tns:registereintragung">
      <details class="details.registrierung">
         <summary>Registrierung</summary>
         <div class="registrierung">
            <xsl:apply-templates />
         </div>
      </details>
   </xsl:template>
   
<xsl:template match="tns:gericht">
      <div class="gericht">
         Gericht:
         <xsl:call-template name="GDS.Gerichte">
            <xsl:with-param name="code" select="normalize-space(./code)" />
         </xsl:call-template>
      </div>
   </xsl:template>
   
<xsl:template match="tns:registerbehoerde">
      <div class="registerbehoerde">
         Registerbehörde:
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:registerbezeichnung">
      <div class="registerbezeichnung">
         Registerbezeichnung:
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:registernummer">
      <div class="registernummer">
         Registernummer:
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:reid">
      <div class="reid">
         Registered Entity Identifyer:
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:lei">
      <div class="lei">
         Legal Entity Identifyer:
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:euid">
      <div class="euid">
         European Unique Idetifyer:
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template name="Code.GDS.Rechtsform" match="tns:rechtsform">
      <!-- Wird bewusst nicht aufgelöst, da code geläuftigen Abkürzungen (AG, GmbH, etc.) entspricht -->
      <div>
         Rechtsform:
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   <!-- Kanzleidaten -->
   
<xsl:template name="Code.GDS.Kanzleiform" match="tns:kanzleiform">
      <div class="kanzleiform">
         Kanzleiform:
         <xsl:call-template name="cl_allgemein">
            <xsl:with-param name="liste" select="'Code.GDS.Kanzleiform'" />
            <xsl:with-param name="code" select="normalize-space(.)" />
         </xsl:call-template>
      </div>
   </xsl:template>
   
<xsl:template name="Type.GDS.RA.Kanzlei" match="tns:ra.kanzlei">
      <details>
         <summary>
            Kanzlei:
            <xsl:value-of select="./tns:bezeichnung/tns:bezeichnung.aktuell" />
         </summary>
         <div class="kanzlei">
            <xsl:apply-templates select="./tns:bezeichnung/tns:bezeichnung.alt" />
            <xsl:apply-templates select="./tns:anschrift" />
            <xsl:apply-templates select="./tns:raImVerfahren" />
            <xsl:apply-templates select="./tns:kanzleiform" />
            <xsl:apply-templates select="./tns:geschlecht" />
            <xsl:apply-templates select="./tns:rechtsform" />
            <xsl:apply-templates select="./tns:telekommunikation" />
            <xsl:apply-templates select="./tns:umsatzsteuerID" />
         </div>
      </details>
   </xsl:template>
   
<xsl:template match="tns:bezeichnung.alt">
      <div class="bezeichnung.alt">
         Vormals: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template match="tns:umsatzsteuerID">
      <div class="umsatzsteuerID">
         UmsatzsteuerID: 
         <xsl:value-of select="." />
      </div>
   </xsl:template>
   
<xsl:template name="Type.GDS.Beteiligter" match="tns:beteiligter">
      <xsl:apply-templates select="./tns:auswahl_beteiligter/tns:ra.kanzlei" />
      <xsl:apply-templates select="./tns:auswahl_beteiligter/tns:natuerlichePerson" />
      <xsl:apply-templates select="./tns:auswahl_beteiligter/tns:organisation" />
   </xsl:template>
   
<xsl:template name="Type.GDS.Ref.Rollennummer" match="tns:referenz | tns:sonstigeRegisterbeteiligte | tns:referenzierungBevollmaechtigter | tns:vollmachtgeber | tns:betroffener | tns:ref.rollennummer | tns:teilnehmer | tns:vielmelder | tns:rueckgabeempfaenger | tns:versorgungstraeger | tns:versicherter | tns:andererEhegatte | tns:empfaengerDesAuskunftsersuchens | tns:versicherungstraeger | tns:ausgleichspflichtiger | tns:ausgleichsberechtigter | tns:zielversorgungstraeger.ausgleichsberechtigter | tns:versorgungstraeger.ausgleichpflichtiger | tns:betroffenerRechtstraeger | tns:urkundsperson | tns:vertretungsberechtigte | tns:empfangsberechtigte | tns:unternehmensteile | tns:sonstigeRegisterbeteiligte | tns:datenKommanditist | tns:datenMitgliedEWIV | tns:referenz.glaeubiger | tns:schuldner | tns:referenz.schuldner | tns:drittschuldner | tns:aussteller | tns:notar | tns:referenzZuDrittschuldner.arbeitseinkommen | tns:unpfaendbarerBetragBeiEinkommenDrittschuldner | tns:drittschuldner.sozialleistung | tns:anzeigenerstatter | tns:personenbezug | tns:besucher | tns:zustellungsempfaenger | tns:eingelegtFuer | tns:untersuchter | tns:herausgabe | tns:eintragungsbehoerde | tns:eingelegtDurch | tns:referenzZuDrittschuldner.arbeitseinkommen | tns:antragsteller | tns:sachbearbeiter | tns:antragsgegner | tns:bevollmaechtigter | tns:auszahlungskonto">
      <xsl:variable name="rollennummer" select="." />
      <xsl:call-template name="cl_rollenbezeichnung">
         <xsl:with-param name="liste" select="'Code.GDS.Rollenbezeichnung'" />
         <xsl:with-param name="code" select="//tns:rollennummer[text() = $rollennummer]/../tns:rollenbezeichnung" />
      </xsl:call-template>
       
      <xsl:for-each select="//tns:beteiligung">
         <xsl:if test="contains(tns:rolle/tns:rollennummer, $rollennummer)">
            <xsl:value-of select=".//tns:bezeichnung.aktuell" />
            <!-- ungetestet -->
            <xsl:call-template name="nameAllgemein" select="./tns:beteiligter/tns:auswahl_beteiligter/tns:natuerlichePerson" />
         </xsl:if>
      </xsl:for-each>
   </xsl:template>
</xsl:stylesheet>
