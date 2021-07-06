import 'dart:typed_data';

class VideoData {

  static const int moov = 0x6d6f6f76;
  static const int mvhd = 0x6d766864;
  static const int trak = 0x7472616b;
  static const int stbl = 0x7374626c;
  static const int avc1 = 0x61766331;

  int timescale;
  int length;
  int width;
  int height;

  double get duration => length / timescale * 1000.0;

  VideoData(Uint8List video) {
    final ByteDataViewer viewer =
        ByteDataViewer(ByteData.view(video.buffer));

    final iMoov = viewer.indexOf32BE(moov);
    final iMvhd = viewer.indexOf32BE(mvhd, iMoov);
    final iTrak = viewer.indexOf32BE(trak, iMoov);
    final iStbl = viewer.indexOf32BE(stbl, iTrak);
    final iAvc1 = viewer.indexOf32BE(avc1, iStbl);

    timescale = viewer.read32BE(iMvhd + 16);
    length = viewer.read32BE(iMvhd + 20);
    width = viewer.read16BE(iAvc1 + 28);
    height = viewer.read16BE(iAvc1 + 30);
  }
}

class ByteDataViewer {
  ByteData data;

  ByteDataViewer(this.data);

  int indexOf32BE(int int32, [int start = 0]) {
    int index = start;
    while (index + 4 < data.lengthInBytes) {
      if (data.getUint32(index) == int32) {
        return index;
      }
      index += 4;
    }
    throw Exception('Couldn\'t find $int32 in data');
  }

  int read32BE([int offset = 0]) => data.getUint32(offset);

  int read16BE([int offset = 0]) => data.getUint16(offset);
}
