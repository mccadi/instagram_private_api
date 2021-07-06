import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:instagram_private_api/src/core/insta_client.dart';
import 'package:instagram_private_api/src/repositories/insta_repository.dart';
import 'package:instagram_private_api/src/responses/upload/photo_response.dart';
import 'package:instagram_private_api/src/responses/upload/video_response.dart';
import 'package:instagram_private_api/src/utilities/time.dart';

class UploadRepository extends InstaRepository {
  UploadRepository(InstaClient client) : super(client);

  Future<UploadPhotoResponse> photo(Uint8List photo,
      {String id,
      bool isSidecar = false,
      int numReupload = 0,
      int quality = 80,
      List<String> sharingUserIds,
      int offset = 0}) async {
    final String uploadId = id ?? utcNow().floor().toString();
    final String entityName =
        '${uploadId}_0_-${Random().nextInt(999999999) + 1000000000}';
    return UploadPhotoResponse.fromJson(await client.request.postData(
      '/rupload_igphoto/$entityName',
      headers: {
        'X_FB_PHOTO_WATERFALL_ID': client.state.generateRandomUuid(),
        'X-Entity-Name': entityName,
        'X-Entity-Length': photo.length,
        'X-Instagram-Rupload-Params': jsonEncode({
          'upload_id': uploadId,
          'media_type': '1',
          'retry_context': jsonEncode({
            'num_reupload': numReupload,
            'num_step_auto_retry': numReupload,
            'num_step_manual_retry': 0,
          }),
          'image_compression': jsonEncode({
            'lib_name': 'moz',
            'lib_version': '3.1.m',
            'quality': quality.toString(),
          }),
          'xsharing_user_ids': jsonEncode(sharingUserIds ?? []),
          if (isSidecar) 'is_sidecar': '1',
        }),
        'X-Entity-Type': 'image/jpeg',
        'Offset': offset,
        'X-IG-Connection-Type': client.state.connectionType,
        'X-IG-Capabilities': client.state.capabilities,
        'X-IG-App-ID': client.state.facebookAnalyticsAppId,
        'Accept-Encoding': 'gzip',
        HttpHeaders.contentLengthHeader: photo.length,
      },
      data: Stream.fromIterable(photo.map((e) => [e])),
    ));
  }

  Future<UploadVideoResponse> video(
      Uint8List video, int width, int height, int durationMs,
      {String id,
      bool isSidecar = false,
      bool forAlbum = false,
      int numReupload = 0,
      List<String> sharingUserIds,
      int offset = 0}) async {
    final String uploadId = id ?? utcNow().floor().toString();
    final String entityName =
        '${uploadId}_0_-${Random().nextInt(999999999) + 1000000000}';
    return UploadVideoResponse.fromJson(await client.request.postData(
      '/rupload_igvideo/$entityName',
      query: {
        'target': client.state.extractCookie('rur'),
      },
      headers: {
        'X_FB_VIDEO_WATERFALL_ID': client.state.generateRandomUuid(),
        'X-Entity-Name': entityName,
        'X-Entity-Length': video.length,
        'X-Instagram-Rupload-Params': jsonEncode({
          'upload_id': uploadId,
          'upload_media_width': width.toString(),
          'upload_media_height': height.toString(),
          'upload_media_duration_ms': durationMs.toString(),
          'media_type': '2',
          'retry_context': jsonEncode({
            'num_reupload': numReupload,
            'num_step_auto_retry': numReupload,
            'num_step_manual_retry': 0,
          }),
          'xsharing_user_ids': jsonEncode(sharingUserIds ?? []),
          if (isSidecar) 'is_sidecar': '1',
          if (forAlbum) 'for_album': '1',
        }),
        'X-Entity-Type': 'video/mp4',
        'Offset': offset,
        'X-IG-Connection-Type': client.state.connectionType,
        'X-IG-Capabilities': client.state.capabilities,
        'X-IG-App-ID': client.state.facebookAnalyticsAppId,
        'Accept-Encoding': 'gzip',
        HttpHeaders.contentLengthHeader: video.length,
      },
      data: Stream.fromIterable(video.map((e) => [e])),
    ));
  }
}
