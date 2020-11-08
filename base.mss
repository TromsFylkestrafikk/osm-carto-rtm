/* BASE.MSS CONTENTS
 * - Landuse & landcover
 * - Water areas
 * - Water ways
 * - Administrative Boundaries
 */

/* ================================================================== */
/* LANDUSE & LANDCOVER
/* ================================================================== */

#land-low[zoom>=0][zoom<10],
#land-high[zoom>=10] {
  polygon-fill: @land;
  polygon-gamma: 0.75;
}

#landuse_gen0[zoom>3][zoom<=9],
#landuse_gen1[zoom>9][zoom<=12],
#landuse[zoom>12] {
  [type='cemetery']      { polygon-fill: @cemetery; }
  [type='college']       { polygon-fill: @school; }
  [type='commercial']    { polygon-fill: @industrial; }
  [type='common']        { polygon-fill: @park; }
  [type='forest']        { polygon-fill: @wooded; }
  [type='glacier']       { polygon-fill: @glacier; }
  [type='golf_course']   { polygon-fill: @sports; }
  [type='grass']         { polygon-fill: @grass; }
  [type='hospital']      { polygon-fill: @hospital; }
  [type='industrial']    { polygon-fill: @industrial; }
  [type='park']          { polygon-fill: @park; }
  [type='parking']       { polygon-fill: @parking; }
  [type='pedestrian']    { polygon-fill: @pedestrian_fill; }
  [type='pitch']         { polygon-fill: @sports; }
  [type='residential']   { polygon-fill: @residential; }
  [type='school']        { polygon-fill: @school; }
  [type='sports_center'] { polygon-fill: @sports; }
  [type='stadium']       { polygon-fill: @sports; }
  [type='university']    { polygon-fill: @school; }
  [type='wood']          { polygon-fill: @wooded; }
  [type='heath']         { polygon-fill: @heath; }
  [type='scrub']         { polygon-fill: @scrub; }
  [type='meadow']        { polygon-fill: @meadow; }
  [type='farmland']      { polygon-fill: @agriculture; }
  [type='beach']         { polygon-fill: @beach; }
}

#landuse_overlays[zoom>=8] {
  [type='nature_reserve'] {
    line-color: darken(@wooded,25%);
    line-opacity:  0.3;
    line-dasharray: 1,1;
    polygon-fill: darken(@wooded,25%);
    polygon-opacity: 0.1;
  }
  [military = 'danger_area'],
  [type = 'military'][area > 1600000],
  [type = 'military'][zoom >= 13],  {
    polygon-pattern-file: url('img/military_red_hatch.png');
    polygon-pattern-alignment: global;
    line-color: @military;
    line-opacity: 0.24;
    line-width: 1.0;
    line-offset: -0.5;
  }
  [type='wetland'][zoom>11] {
    polygon-fill: @wooded;
    polygon-pattern-file:url(img/wetland.png);
  }
}

#landuse_gen0[zoom > 3][zoom <= 9][type = 'glacier'],
#landuse_gen1[zoom > 9][zoom <= 12][type = 'glacier'],
#landuse[zoom >= 13][type = 'glacier'] {
  [zoom >= 7] {
    line-width: 1.0;
    line-color: @glacier_line;
    polygon-fill: @glacier;
  }
}
#landuse_gen1[zoom > 9][zoom <= 12][type = 'glacier'],
#landuse[zoom >= 13][type = 'glacier'] {
  [zoom > 10] {
    line-dasharray: 4,2;
    line-width: 1.5;
  }
}
/* ---- BUILDINGS ---- */
#buildings[zoom>=14][zoom<=16] {
  polygon-fill:@building;
  [zoom>=14] {
    line-color:darken(@building,5%);
    line-width:0.2;
  }
  [zoom=16] {
    line-color:darken(@building,10%);
    line-width:0.4;
  }
}
// At the highest zoom levels, render buildings in fancy pseudo-3D.
// Ordering polygons by their Y-position is necessary for this effect
// so we use a separate layer that does this for us.
#buildings[zoom>=17][type != 'hedge'] {
  building-fill:@building;
  building-height:1.25;
}

#buildings[zoom>=17][type = 'hedge'] {
  building-fill:@wooded;
  building-height:1.25;
}

/* ================================================================== */
/* WATER AREAS
/* ================================================================== */

Map { background-color: @water; }

#water_gen0[zoom>3][zoom<=9],
#water_gen1[zoom>9][zoom<=12],
#water[zoom>12] {
  polygon-fill: @water;
}

#water[zoom>=10] {  
  line-color: @water_line;
  line-width: .5;

  [zoom>=12] {
    line-width: 1;
  }
}

/* ================================================================== */
/* WATER WAYS
/* ================================================================== */

#waterway_low[zoom>=8][zoom<=12] {
  line-color: @water;
  [zoom=8] { line-width: 0.1; }
  [zoom=9] { line-width: 0.2; }
  [zoom=10]{ line-width: 0.4; }
  [zoom=11]{ line-width: 0.6; }
  [zoom=12]{ line-width: 0.8; }
}

#waterway_med[zoom>=13][zoom<=14] {
  line-color: @water;
  [type='river'],
  [type='canal'] {
    line-cap: round;
    line-join: round;
    [zoom=13]{ line-width: 1; }
    [zoom=14]{ line-width: 1.5; }
  }
  [type='stream'] {
    [zoom=13]{ line-width: 0.2; }
    [zoom=14]{ line-width: 0.4; }
  }
}
  
#waterway_high[zoom>=15] {
  line-color: @water;
  [type='river'],
  [type='canal'] {
    line-cap: round;
    line-join: round;
    [zoom=15]{ line-width: 2; }
    [zoom=16]{ line-width: 3; }
    [zoom=17]{ line-width: 4; }
    [zoom=18]{ line-width: 5; }
    [zoom=19]{ line-width: 6; }
    [zoom>19]{ line-width: 7; }
  }
  [type='stream'] {
    [zoom=15]{ line-width: 0.6; }
    [zoom=16]{ line-width: 0.8; }
    [zoom=17]{ line-width: 1; }
    [zoom=18]{ line-width: 1.5; }
    [zoom>18]{ line-width: 2; }
  }
  [type='ditch'],
  [type='drain'] {
    [zoom=15]{ line-width: 0.1; }
    [zoom=16]{ line-width: 0.3; }
    [zoom=17]{ line-width: 0.5; }
    [zoom=18]{ line-width: 0.7; }
    [zoom=19]{ line-width: 1; }
    [zoom>19]{ line-width: 1.5; }
  }
}

/* ================================================================== */
/* ADMINISTRATIVE BOUNDARIES
/* ================================================================== */

#admin[admin_level = '2'][zoom > 1] {
  line-color: @admin_2;
  line-width: 0.5;
  [zoom = 2] { line-opacity: 0.25; }
  [zoom = 3] { line-opacity: 0.3; }
  [zoom = 4] { line-opacity: 0.4; }
}

/* Norwegian counties */
#admin[admin_level = '4'][zoom >= 7][zoom <= 15] {
  line-color: @admin_4;
  line-width: 2;
  [zoom = 7]  { line-opacity: 0.3; }
  [zoom = 8]  { line-opacity: 0.4; line-width: 3; }
  [zoom >= 9] {
    line-width: 4;
    inner/line-color: lighten(@admin_4, 30%);
    inner/line-width: 1;
    inner/line-dasharray: 5,10;
  }
}

/* Norwegian municipals */
#admin[admin_level = '7'][zoom >= 9][zoom <= 15] {
  line-color: @admin_7;
  line-width: 1;
  [zoom = 9],[zoom = 15] { line-opacity: 0.35; }
}

/* Add labels along the inside of the polygon lines */
#admin_border_label[admin_level = '7'][zoom >= 12][zoom <= 15],
#admin_border_label[admin_level = '4'][zoom >= 9][zoom <= 15] {
  text-face-name: @sans;
  text-name: '[name]';
  text-fill: @admin_7 * .8;
  text-halo-fill: lighten(@admin_7, 40%);
  text-halo-radius: 2;
  text-largest-bbox-only: false;
  text-placement: line;
  text-spacing: 750;
  text-repeat-distance: 250;
  text-margin: 10;
  text-clip: true;
  text-vertical-alignment: middle;
  text-dy: -10;
}

#county_label[zoom >= 7][zoom <= 8],
#municipal_label[zoom >= 9][zoom <= 11] {
  text-face-name: @sans;
  text-name: '[name]';
  text-character-spacing: 5;
  text-transform: uppercase;
  text-size: 11;
  text-fill: @admin_7 * .8;
  text-halo-fill: lighten(@admin_7, 40%);
  text-halo-radius: 2;
}
#county_label[zoom >= 7][zoom <= 8] {
  [zoom = 7] { text-size: 13; text-character-spacing: 4 }
  [zoom = 8] { text-size: 14; text-character-spacing: 5 }
}
#county_label[zoom = 8], 
#municipal_label[zoom = 9] {
  text-allow-overlap: true;
}
#municipal_label[zoom >= 9][zoom <= 11] {
  [zoom = 9] { text-size: 11; text-character-spacing: 3 }
  [zoom = 10] { text-size: 12.5; text-character-spacing: 4 }
  [zoom = 11] { text-size: 14; text-character-spacing: 5 }
}
