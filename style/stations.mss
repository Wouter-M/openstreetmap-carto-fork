@station-color: #7981b0;
@station-text: darken(saturate(@station-color, 15%), 10%);
@minor-station-color: #b08378;
@minor-station-text: darken(saturate(@minor-station-color, 15%), 10%);

#stations {
  [railway = 'subway_entrance'][zoom >= 18] {
    marker-file: url('symbols/amenity/entrance.svg');
    marker-fill: @transportation-icon;
    marker-clip: false;
    [zoom >= 19] {
      text-name: [ref];
      text-face-name: @book-fonts;
      text-size: 10;
      text-fill: @transportation-text;
      text-dy: 10;
      text-halo-radius: @standard-halo-radius * 1.5;
      text-halo-fill: @standard-halo-fill;
      text-wrap-width: 0;
    }
  }

  [railway = 'station'][zoom >= 12] {
    marker-file: url('symbols/square.svg');
    marker-fill: @station-color;
    marker-clip: false;
    [station != 'subway'][usage != 'tourism'] {
      marker-width: 4;
    }
    [usage = 'tourism'] {
      marker-fill: @minor-station-color;
    }
    [zoom >= 13][station != 'subway'][usage != 'tourism'],
    [zoom >= 14][station = 'subway'][usage != 'tourism'] {
      marker-width: 6;
    }
    [zoom >= 14][station != 'subway'][usage != 'tourism'],
    [zoom >=15][usage != 'tourism'] {
      text-name: "[name]";
      text-face-name: @bold-fonts;
      text-size: 10;
      text-fill: @station-text;
      text-dy: 9;
      text-halo-radius: @standard-halo-radius * 1.5;
      text-halo-fill: @standard-halo-fill;
      text-wrap-width: 30; // 3 em
      text-line-spacing: -1.5; // -0.15 em
    }
    [zoom >= 16] {
      marker-width: 5;
    }
    [zoom >= 15][station != 'subway'][usage != 'tourism'],
    [zoom >= 16][usage != 'tourism'] {
      marker-width: 7;
      text-size: 11;
      text-wrap-width: 33; // 3 em
      text-line-spacing: -1.65; // -0.15 em
      text-dy: 10;
    }
    [zoom >= 15][usage = 'tourism'] {
      marker-width: 5;
      [zoom >= 17] {
        text-name: "[name]";
        text-face-name: @bold-fonts;
        text-size: 10;
        text-fill: @minor-station-text;
        text-dy: 9;
        text-halo-radius: @standard-halo-radius * 1.5;
        text-halo-fill: @standard-halo-fill;
        text-wrap-width: 30; // 3 em
        text-line-spacing: -1.5; // -0.15 em
      }
    }

  }

  [railway = 'halt'] {
    [zoom >= 13] {
      marker-file: url('symbols/square.svg');
      marker-fill: @station-color;
      marker-width: 4;
      marker-clip: false;
      [zoom >= 15] {
        marker-width: 6;
      }
      [usage = 'tourism'] {
        marker-fill: @minor-station-color;
      }
    }
    [zoom >= 15] {
      text-name: "[name]";
      text-face-name: @bold-fonts;
      text-size: @standard-font-size;
      text-fill: @station-text;
      text-dy: 10;
      text-halo-radius: @standard-halo-radius * 1.5;
      text-halo-fill: @standard-halo-fill;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      [usage = 'tourism'] {
        text-fill: @minor-station-text;
      }
    }
  }

  [aerialway = 'station']::aerialway {
    [zoom >= 13] {
      marker-file: url('symbols/square.svg');
      marker-fill: @station-color;
      marker-width: 4;
      marker-clip: false;
    }
    [zoom >= 15] {
      marker-width: 6;
    }
    [zoom >= 14] {
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-size: @standard-font-size;
      text-fill: @station-text;
      text-dy: 10;
      text-halo-radius: @standard-halo-radius * 1.5;
      text-halo-fill: @standard-halo-fill;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
    }
  }

  [railway = 'tram_stop'] {
    [zoom >= 14] {
      marker-file: url('symbols/square.svg');
      marker-fill: @station-color;
      marker-width: 4;
      marker-clip: false;
      [zoom >= 15] {
        marker-width: 6;
      }
    }
    [zoom >= 16] {
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-size: @standard-font-size;
      text-fill: @station-text;
      text-dy: 10;
      text-halo-radius: @standard-halo-radius * 1.5;
      text-halo-fill: @standard-halo-fill;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
    }
  }
}
