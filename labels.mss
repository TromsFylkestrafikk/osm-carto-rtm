/* LABELS.MSS CONTENTS:
 * - place names
 * - area labels
 * - waterway labels 
 */

/* Font sets are defined in palette.mss */

/* ================================================================== */
/* PLACE NAMES
/* ================================================================== */

#place::country[type='country'][zoom>3][zoom<8] {
  text-name:'[name]';
  text-face-name:@sans_bold;
  text-placement:point;
  text-fill:@country_text;
  text-halo-fill: @country_halo;
  text-halo-radius: 1;
  [zoom=4] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
  }
  [zoom>4] {
    text-halo-radius: 2;
  }
  [zoom=5] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
    text-line-spacing: 1;
  }
  [zoom=6] {
    text-size:12 + @text_adjust;
    text-character-spacing: 1;
    text-wrap-width: 80;
    text-line-spacing: 2;
  }
  [zoom=7] {
    text-size:14 + @text_adjust;
    text-character-spacing: 2;
  }
}

#place::state[type='state'][zoom>=5][zoom<=10] {
  text-name:'[name]';
  text-face-name:@sans_bold_italic;
  text-placement:point;
  text-fill:@state_text;
  text-halo-fill: @state_halo;
  text-halo-radius: 1;
  [zoom=6] {
    text-size:10 + @text_adjust;
    text-wrap-width: 40;
  }
  [zoom=7] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
  }
  [zoom>8] {
    text-halo-radius: 2;
  }
  [zoom=8] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
    text-line-spacing: 1;
  }
  [zoom=9] {
    text-size:12 + @text_adjust;
    text-character-spacing: 1;
    text-wrap-width: 80;
    text-line-spacing: 2;
  }
  [zoom=10] {
    text-size:14 + @text_adjust;
    text-character-spacing: 2;
  }
}

/* ---- Cities ------------------------------------------------------ */

#place[population > 2000][zoom >= 8] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@other_text;
  text-halo-fill:@other_halo;
  text-halo-radius:2;
  text-size: 11;
}

#place::city[type = 'city'][zoom >= 5][zoom <= 15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@city_text;
  text-halo-fill:@city_halo;
  text-halo-radius:2;
  [zoom >= 7] {
    text-transform: uppercase;
  }
  [zoom <= 8] {
    text-size: 12;
  }
  [zoom >= 9][zoom <= 12] {
    text-size:13;
    text-character-spacing: 1;
    text-wrap-width: 100;
  }
  [zoom = 13] {
    text-size:14;
    text-character-spacing: 2;
    text-wrap-width: 200;
  }
  [zoom = 14] {
    text-size:15;
    text-character-spacing: 4;
    text-wrap-width: 300;
  }
  [zoom = 15] {
    text-size:16;
    text-character-spacing: 6;
    text-wrap-width: 400;
  }
}

/* ---- Towns ------------------------------------------------------- */

#place::town[type='town'][zoom>=7][zoom<=17] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@town_text;
  text-size:9;
  text-halo-fill:@town_halo;
  text-halo-radius:1;
  text-wrap-width: 50;
  [zoom=7] { text-size: 9; }
  [zoom>=8] { text-size: 10; }
  [zoom>=9] {
    text-size:11;
    text-line-spacing: 1;
  }
  [zoom>=13]{
    text-transform: uppercase;
    text-character-spacing: 1;
    text-line-spacing: 2;
  }
  [zoom>=14]{
    text-size:13;
    text-character-spacing: 2;
    text-line-spacing: 3;
  }
  [zoom>=15]{
    text-size:14;
    text-character-spacing: 3;
    text-line-spacing: 4;
  }
  [zoom>=15]{
    text-size:15;
    text-character-spacing: 4;
    text-line-spacing: 5;
  }
  [zoom>=17]{
    text-size:16;
    text-character-spacing: 5;
    text-line-spacing: 6;
  }
}

/* ---- Other small places ------------------------------------------ */

#place::small[type='village'][zoom>=9],
#place::small[type='suburb'][zoom>=12],
#place::small[type='hamlet'][zoom>=11],
#place::small[type='neighbourhood'][zoom>=13] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@other_text;
  text-size:10;
  text-halo-fill:@other_halo;
  text-halo-radius:1;
  text-wrap-width: 30;
  [zoom>=14] {
    text-size:11;
    text-character-spacing: 1;
    text-wrap-width: 40;
    text-line-spacing: 1;
  }
  [zoom>=15] {
    text-halo-radius: 2;
    text-transform: uppercase;
    text-character-spacing: 1;
    text-wrap-width: 60; 
    text-line-spacing: 1;
  }
  [zoom>=16] {
    text-size:12;
    text-character-spacing: 2;
    text-wrap-width: 120;
    text-line-spacing: 2;
  } 
  [zoom>=17] {
    text-size:13; 
    text-character-spacing: 3;
    text-wrap-width: 160;
    text-line-spacing: 4;
  }
  [zoom>=18] {
    text-size:14;
    text-character-spacing: 4;
    text-line-spacing: 6;
  }
}

#place::small[type='locality'][zoom>=15] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:@locality_text;
  text-size:9;
  text-halo-fill:@locality_halo;
  text-halo-radius:1;
  text-wrap-width: 30;
  [zoom>=16] {
    text-size:10;
    text-wrap-width: 60;
    text-line-spacing: 1;
  }
  [zoom>=17] {
    text-size:11;
    text-wrap-width: 120;
    text-line-spacing: 2;
  }
  [zoom>=18] {
    text-size:12;
    text-character-spacing: 1;
    text-line-spacing: 4;
  }
}


// =====================================================================
// AREA LABELS
// =====================================================================

// Less expensive query for lower zoom level.
#area_label_med {
  [zoom >= 8][area >= 2000000000],
  [zoom >= 9][area >= 409600000][area < 2000000000],
  [zoom = 10][area >= 102400000][area < 409600000] {
    text-name: [name];
    text-halo-radius: 1.5;
    text-face-name: @sans;
    text-size: 11;
    text-wrap-width: 30;
    text-fill: #888;
    text-halo-fill: #fff;

    // Bump font sizes as the zoom increases.
    [zoom = 10][area > 2000000000] {
      text-size: 13;
      text-wrap-width: 60;
      text-character-spacing: 1;
      text-halo-radius: 2;
    }

    [type='water'],
    [type='bay'],
    [type='strait'],
    [type='sea'] {
      text-face-name: @sans_italic;
      text-fill: @water_text;
      text-halo-fill: @water_halo;
    }
    [type='glacier'] {
      text-fill: @glacier_text;
      text-halo-fill: #fff;
    }
    [type='island'],
    [type='islet'] {
      text-face-name: @sans_italic;
    }
  }
}

#area_label_high {
  // Bring in labels gradually as one zooms in, bases on polygon area
  [zoom >= 11][zoom <= 12][area >= 2000000000],
  [zoom >= 11][zoom <= 13][area >= 409600000][area < 2000000000],
  [zoom >= 11][zoom <= 14][area >= 102400000][area < 409600000],
  [zoom >= 11][zoom <= 15][area >= 25600000][area < 102400000],
  [zoom >= 12][zoom <= 16][area >= 6400000][area < 25600000],
  [zoom >= 13][zoom <= 17][area >= 1600000][area < 6400000],
  [zoom >= 14][area >= 320000][area < 1600000],
  [zoom >= 15][area >= 80000][area < 320000],
  [zoom >= 16][area >= 20000][area < 80000],
  [zoom >= 17][area >= 5000][area < 20000],
  [zoom >= 18][area > 0][area < 5000] {
    text-name: [name];
    text-halo-radius: 1.5;
    text-face-name: @sans;
    text-size: 11;
    text-wrap-width: 30;
    text-fill: #888;
    text-halo-fill: #fff;

    // Bump font sizes as the zoom increases.
    [zoom = 11][area > 409600000],
    [zoom = 12][area > 102400000],
    [zoom = 13][area > 25600000],
    [zoom = 14][area > 6400000],
    [zoom = 15][area > 1600000],
    [zoom = 16][area > 320000],
    [zoom = 17][area > 80000],
    [zoom = 18][area > 20000] {
      text-size: 13;
      text-wrap-width: 60;
      text-character-spacing: 1;
      text-halo-radius: 2;
    }
    [zoom >= 11][area > 2000000000],
    [zoom >= 12][area > 409600000],
    [zoom >= 13][area > 102400000],
    [zoom >= 14][area > 25600000],
    [zoom = 15][area > 6400000],
    [zoom = 16][area > 1600000],
    [zoom = 17][area > 320000],
    [zoom = 18][area > 80000] {
      text-size: 15;
      text-character-spacing: 2;
      text-wrap-width: 120;
    }
    [zoom = 16][area > 6400000],
    [zoom = 17][area > 1600000],
    [zoom = 18][area > 320000] {
      text-size: 20;
      text-character-spacing: 3;
      text-wrap-width: 180;
    }

    // Specific style overrides for different types of areas:
    [type='park'] {
      text-face-name: @sans_lt_italic;
      text-fill: @park * 0.6;
      text-halo-fill: lighten(@park, 10%);
    }
    [type='golf_course'] {
      text-fill: @sports * 0.6;
      text-halo-fill: lighten(@sports, 10%);
    }
    [type='cemetery'] {
      text-fill: @cemetery * 0.6;
      text-halo-fill: lighten(@cemetery, 10%);
    }
    [type='hospital'] {
      text-fill: @hospital * 0.6;
      text-halo-fill: lighten(@hospital, 10%);
    }
    [type='college'],
    [type='school'],
    [type='university'] {
      text-fill: @school * 0.6;
      text-halo-fill: lighten(@school, 10%);
    }
    [type='water'],
    [type='bay'],
    [type='strait'],
    [type='sea'] {
      text-face-name: @sans_italic;
      text-fill: @water_text;
      text-halo-fill: @water_halo;
    }
    [type='glacier'] {
      text-fill: @glacier_text;
      text-halo-fill: #fff;
    }
    [type="island"],
    [type="islet"] {
      text-face-name: @sans_italic;
    }
  }
}

/* ================================================================== */
/* WATERWAY LABELS
/* ================================================================== */

#waterway_label[type='river'][zoom>=13],
#waterway_label[type='canal'][zoom>=15],
#waterway_label[type='stream'][zoom>=17] {
  text-name: '[name]';
  text-face-name: @sans_italic;
  text-fill: @water * 0.75;
  text-halo-fill: fadeout(lighten(@water,5%),25%);
  text-halo-radius: 1;
  text-placement: line;
  text-min-distance: 400;
  text-size: 10;
  [type='river'][zoom=15],
  [type='canal'][zoom=17] {
    text-size: 11;
  }
  [type='river'][zoom>=16],
  [type='canal'][zoom=18] {
    text-size: 14;
    text-spacing: 300;
  }
}

/* ================================================================== */
/* ROAD LABELS
/* ================================================================== */

#motorway_label[zoom>=8][zoom<=14][reflen<=8],
#mainroad_label[type='primary'][zoom >= 11][zoom<=14][reflen<=8],
#mainroad_label[type='secondary'][zoom >= 11][zoom<=14][reflen<=8] {
  shield-face-name: @sans_bold;
  shield-file: url(img/shield-motorway-1.svg);
  shield-name: "[ref]";
  shield-margin: 40;
  shield-placement: line;
  shield-repeat-distance: 400;
  shield-size: 10;
  shield-spacing: 700;
}

#motorway_label[zoom>=8][zoom<=14][reflen<=8] {
  shield-fill: #fff;
  [reflen=1] { shield-file: url(img/shield-motorway-1.svg); }
  [reflen=2] { shield-file: url(img/shield-motorway-2.svg); }
  [reflen=3] { shield-file: url(img/shield-motorway-3.svg); }
  [reflen=4] { shield-file: url(img/shield-motorway-4.svg); }
  [reflen=5] { shield-file: url(img/shield-motorway-5.svg); }
  [reflen=6] { shield-file: url(img/shield-motorway-6.svg); }
  [reflen=7] { shield-file: url(img/shield-motorway-7.svg); }
  [reflen=8] { shield-file: url(img/shield-motorway-8.svg); }
}

#mainroad_label[type='primary'][zoom >= 11][zoom<=14][reflen<=8],
#mainroad_label[type='secondary'][zoom >= 11][zoom<=14][reflen<=8] {
  shield-fill: #666;
  [reflen=1] { shield-file: url(img/shield-primary-1.svg); }
  [reflen=2] { shield-file: url(img/shield-primary-2.svg); }
  [reflen=3] { shield-file: url(img/shield-primary-3.svg); }
  [reflen=4] { shield-file: url(img/shield-primary-4.svg); }
  [reflen=5] { shield-file: url(img/shield-primary-5.svg); }
  [reflen=6] { shield-file: url(img/shield-primary-6.svg); }
  [reflen=7] { shield-file: url(img/shield-primary-7.svg); }
  [reflen=8] { shield-file: url(img/shield-primary-8.svg); }
}

#motorway_label[type='motorway'][zoom>9],
#motorway_label[type='trunk'][zoom>9] {
  text-name:"[name]";
  text-face-name:@sans_bold;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:10;
  [zoom=11] { text-min-distance:70; }
  [zoom=12] { text-min-distance:80; }
  [zoom=13] { text-min-distance:100; }
}

#mainroad_label[type='primary'][zoom>12],
#mainroad_label[type='secondary'][zoom>13],
#mainroad_label[type='tertiary'][zoom>13] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:11;
}

#minorroad_label[zoom>14] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:line;
  text-size:9;
  text-fill:@road_text;
  text-halo-fill:@road_halo;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:11;
}

/* ================================================================== */
/* ONE-WAY ARROWS
/* ================================================================== */
#motorway_label[zoom>=16],
#mainroad_label[zoom>=16],
#minorroad_label[zoom>=16] {
  [oneway = 'yes'],
  [oneway='-1'] {
     marker-placement:line;
     marker-max-error: 0.5;
     marker-spacing: 200;
     marker-file: url(img/icon/oneway.svg);
     [oneway='-1'] { marker-file: url(img/icon/oneway-reverse.svg); }
     [zoom=16] { marker-transform: "scale(0.5)"; }
     [zoom=17] { marker-transform: "scale(0.75)"; }
  }
}


/* ================================================================== */
/* TRAIN STATIONS
/* ================================================================== */

#train_stations[zoom>15]{
  point-file:url('img/icon/rail-12.png');
  [zoom>=17] { point-file:url('img/icon/rail-18.png'); }
}

/* ****************************************************************** */


