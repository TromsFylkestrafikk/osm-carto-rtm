@transportation-icon: #0092da;
@transportation-text: #0066ff;

#amenities[highway = 'bus_stop'] {
  [zoom >= 14] {
    marker-file: url('img/icon/square.svg');
    marker-fill: @transportation-icon;
    marker-width: 4;
    marker-clip: false;
  }
  [zoom = 15] {
    marker-width: 6
  }
  [zoom >= 16] {
    marker-file: url('img/icon/bus_stop.12.svg');
    marker-width: 12;
    text-name: "[name]";
    text-size: 10;
    text-wrap-width: 80;
    text-line-spacing: 3;
    text-fill: @transportation-text;
    text-dy: 11;
    text-face-name: @sans;
    text-halo-radius: 1.5;
    text-halo-fill: #fff;
  }
  [zoom >= 18] {
    marker-width: 18;
    text-size: 12;
  }
}
