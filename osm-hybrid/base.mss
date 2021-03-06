/* BASE.MSS CONTENTS
 * - Landuse & landcover
 * - Water areas
 * - Water ways
 * - Administrative Boundaries
 *
 */

/* ================================================================== */
/* LANDUSE & LANDCOVER
/* ================================================================== */

#landuse[zoom>14] {
  [type='cemetery']      { polygon-opacity: 0; line-color: @cemetery; }
  [type='college']       { polygon-opacity: 0; line-color: @school; }
  [type='commercial']    { polygon-opacity: 0; line-color: @industrial; }
  [type='common']        { polygon-opacity: 0; line-color: @park; }
  [type='forest']        { polygon-opacity: 0; line-color: @wooded; }
  [type='golf_course']   { polygon-opacity: 0; line-color: @sports; }
  [type='grass']         { polygon-opacity: 0; line-color: @grass; }
  [type='hospital']      { polygon-opacity: 0; line-color: @hospital; }
  [type='industrial']    { polygon-opacity: 0; line-color: @industrial; }
  [type='park']          { polygon-opacity: 0; line-color: @park; }
  [type='parking']       { polygon-opacity: 0; line-color: @parking; }
  [type='pedestrian']    { polygon-opacity: 0; line-color: @pedestrian_fill; }
  [type='pitch']         { polygon-opacity: 0; line-color: @sports; }
  [type='residential']   { polygon-opacity: 0; line-color: @residential; }
  [type='school']        { polygon-opacity: 0; line-color: @school; }
  [type='sports_center'] { polygon-opacity: 0; line-color: @sports; }
  [type='stadium']       { polygon-opacity: 0; line-color: @sports; }
  [type='university']    { polygon-opacity: 0; line-color: @school; }
  [type='wood']          { polygon-opacity: 0; line-color: @wooded; }
}

#landuse_overlays[type='nature_reserve'][zoom>8] {
  line-color: darken(@wooded,25%);
  line-opacity:  0.3;
  line-dasharray: 1,1;
  line-color: darken(@wooded,25%);
  polygon-opacity: 0.1;
  [zoom=9] { line-width: 0.8; }
  [zoom=10] { line-width: 1.0; }
  [zoom=11] { line-width: 1.5; }
  [zoom>=12] { line-width: 2.0; }
}
 
#landuse_overlays[type='wetland'][zoom>11] {
  [zoom>11][zoom<=14] { polygon-pattern-file:url(img/marsh-16.png); }
  [zoom>14] { polygon-pattern-file:url(img/marsh-32.png);}
  }

/* ================================================================== */
/* WATER AREAS
/* ================================================================== */

Map { background-color: transparent; }

#water_gen0[zoom>7][zoom<=9],
#water_gen1[zoom>9][zoom<=12],
#water[zoom>12] {
  line-color: @water;
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


#admin[admin_level='2'][zoom>1] {
  line-color:@admin_2;
  line-width:1;
}
#admin[admin_level='3'][zoom>2] {
  line-color:@admin_3;
  line-opacity:  50%;
  line-dasharray: 10, 3, 2, 3;
  line-width:1;
}
#admin[admin_level='4'][zoom>5] {
  line-color:@admin_4;
  line-dasharray: 10, 4;
  line-width:0.5;
}

/* ================================================================== */
/* BARRIER POINTS
/* ================================================================== */


#barrier_points[zoom>=17][stylegroup = 'divider'] {
  marker-height: 2;
  marker-fill: #c7c7c7;
  marker-line-opacity:0;
  marker-allow-overlap:true;
}

/* ================================================================== */
/* BARRIER LINES
/* ================================================================== */

#barrier_lines[zoom>=17][stylegroup = 'gate'] {
  line-width:2.5;
  line-color:#aab;
  line-dasharray:3,2;
}

#barrier_lines[zoom>=17][stylegroup = 'fence'] {
  line-width:1.75;
  line-color:#aab;
  line-dasharray:1,1;
}

#barrier_lines[zoom>=17][stylegroup = 'hedge'] {
  line-width:3;
  line-color:darken(@park,5%);

}
