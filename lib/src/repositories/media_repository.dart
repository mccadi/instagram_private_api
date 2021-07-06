import 'dart:convert';

import 'package:instagram_private_api/src/core/insta_client.dart';
import 'package:instagram_private_api/src/enums/insta_module.dart';
import 'package:instagram_private_api/src/repositories/insta_repository.dart';
import 'package:instagram_private_api/src/responses/media/blocked_response.dart';
import 'package:instagram_private_api/src/responses/media/configure_response.dart';
import 'package:instagram_private_api/src/responses/media/configure_to_story_response.dart';
import 'package:instagram_private_api/src/responses/media/configure_to_video_story_response.dart';
import 'package:instagram_private_api/src/responses/media/configure_video_response.dart';
import 'package:instagram_private_api/src/responses/media/upload_finish_response.dart';
import 'package:instagram_private_api/src/responses/status_response.dart';
import 'package:instagram_private_api/src/types/timeline_media_types.dart';
import 'package:instagram_private_api/src/utilities/time.dart';
import 'package:instagram_private_api/src/utilities/video_utility.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

class MediaRepository extends InstaRepository {
  MediaRepository(InstaClient client) : super(client);

  Future<MediaBlockedResponse> blocked() async => MediaBlockedResponse.fromJson(
      await client.request.get('/api/v1/media/blocked/'));

  Future<StatusResponse> seen(
          {Map<String, dynamic> reels,
          Map<String, dynamic> reelMediaSkipped,
          Map<String, dynamic> liveVods,
          Map<String, dynamic> liveVodsSkipped,
          Map<String, dynamic> nuxes,
          Map<String, dynamic> nuxesSkipped,
          InstaModule module = InstaModule.feedTimeline}) async =>
      StatusResponse.fromJson(await client.request.post('/api/v2/media/seen/',
          query: {
            'reel': (reels != null || reelMediaSkipped != null) ? '1' : '0',
            'live_vod':
                (liveVods != null || liveVodsSkipped != null) ? '1' : '0',
          },
          form: client.request.sign({
            '_csrftoken': client.state.cookieCsrfToken,
            '_uid': client.state.cookieUserId,
            '_uuid': client.state.device.uuid,
            'live_vods_skipped': liveVodsSkipped ?? {},
            'nuxes_skipped': nuxesSkipped ?? {},
            'nuxes': nuxes ?? {},
            'reels': reels ?? {},
            'live_vods': liveVods ?? {},
            'reel_media_skipped': reelMediaSkipped ?? {},
          })));

  Future<MediaConfigureResponse> configure({
    @required String uploadId,
    @required int width,
    @required int height,
    String caption = '',
    List<double> cropCenter,
    double cropZoom = 1.0,
    String mediaFolder,
    MediaLocation location,
    Usertags usertags,
  }) async =>
      MediaConfigureResponse.fromJson(
          await client.request.post('/api/v1/media/configure/',
              form: client.request.sign({
                'timezone_offset': client.state.timezoneOffset,
                '_csrftoken': client.state.cookieCsrfToken,
                'source_type': mediaFolder != null ? '4' : '3',
                '_uid': client.state.cookieUserId,
                'device_id': client.state.device.deviceId,
                'caption': caption,
                'upload_id': uploadId,
                'device': client.state.device.devicePayload,
                'edits': {
                  'crop_original_size': [width.toDouble(), height.toDouble()],
                  'crop_center': cropCenter ?? [0.0, -0.0],
                  'crop_zoom': cropZoom,
                },
                'extra': {
                  'source_width': width,
                  'source_height': height,
                },
                'creation_logger_session_id': client.state.clientSessionId,
                if (mediaFolder != null)
                  'media_folder': mediaFolder
                else
                  'date_time_original':
                      DateFormat('yyyy:MM:DD hh:mm:ss').format(DateTime.now()),
                if (location != null) ...{
                  'location': jsonEncode(location),
                  'geotag_enabled': '1',
                  if (mediaFolder == null) ...{
                    'media_latitude': location.lat.toString(),
                    'media_longitude': location.lng.toString()
                  },
                  'is_suggested_venue': false,
                  'suggested_venue_position': -1
                },
                if (usertags != null) 'usertags': jsonEncode(usertags)
              })));

  Future<MediaConfigureVideoResponse> configureVideo({
    @required String uploadId,
    @required VideoData video,
    String caption = '',
    MediaLocation location,
    Usertags usertags,
    bool audioMuted = false,
    int posterFrameIndex = 0,
  }) async =>
      MediaConfigureVideoResponse.fromJson(
          await client.request.post('/api/v1/media/configure/',
              query: {'video': '1'},
              form: client.request.sign({
                'timezone_offset': client.state.timezoneOffset,
                '_csrftoken': client.state.cookieCsrfToken,
                'source_type': '4',
                '_uid': client.state.cookieUserId,
                'device_id': client.state.device.deviceId,
                'caption': caption,
                'upload_id': uploadId,
                'device': client.state.device.devicePayload,
                'extra': {
                  'source_width': video.width,
                  'source_height': video.height,
                },
                'creation_logger_session_id': client.state.clientSessionId,
                'length': video.duration / 1000.0,
                'clips': [
                  {
                    'length': video.duration / 1000.0,
                    'source_type': '4',
                  }
                ],
                'audio_muted': audioMuted,
                'poster_frame_index': 0,
                if (location != null) ...{
                  'location': jsonEncode(location),
                  'geotag_enabled': '1',
                  'is_suggested_venue': false,
                  'suggested_venue_position': -1
                },
                if (usertags != null) 'usertags': jsonEncode(usertags)
              })));

  Future<MediaConfigureToStoryResponse> configureToStory({
    @required String uploadId,
    @required int width,
    @required int height,
    List<double> cropCenter,
    double cropZoom = 1.0,
    String configureMode = '1',
    String sourceType = '3',
    String creationSurface = 'camera',
    String captureType = 'normal',
    List<String> recipientUsers,
    List<String> threadIds,
    Map<String, dynamic> additional,
  }) async =>
      MediaConfigureToStoryResponse.fromJson(
          await client.request.post('/api/v1/media/configure_to_story/',
              form: client.request.sign({
                'supported_capabilities_new':
                    client.state.supportedCapabilities,
                'camera_session_id': client.state.clientSessionId,
                'timezone_offset': client.state.timezoneOffset,
                '_csrftoken': client.state.cookieCsrfToken,
                'client_shared_at': (utcNow().floor() - 35).toString(),
                'configure_mode': configureMode,
                'source_type': sourceType,
                '_uid': client.state.cookieUserId,
                'device_id': client.state.device.deviceId,
                '_uuid': client.state.device.uuid,
                'creation_surface': creationSurface,
                'capture_type': captureType,
                'upload_id': uploadId,
                'client_timestamp': utcNow().floor().toString(),
                'device': client.state.device.devicePayload,
                'edits': {
                  'crop_original_size': [width.toDouble(), height.toDouble()],
                  'crop_center': cropCenter ?? [0.0, -0.0],
                  'crop_zoom': cropZoom,
                },
                'extra': {
                  'source_width': width,
                  'source_height': height,
                },
                if (recipientUsers != null) 'recipient_users': recipientUsers,
                if (threadIds != null) 'thread_ids': threadIds,
                if (additional != null) ...additional,
              })));

  Future<MediaConfigureToVideoStoryResponse> configureToVideoStory({
    @required String uploadId,
    @required VideoData videoData,
    bool audioMuted = false,
    String configureMode = '1',
    String sourceType = '3',
    String creationSurface = 'camera',
    String captureType = 'normal',
    String cameraPosition = 'front',
    List<String> recipientUsers,
    List<String> threadIds,
    Map<String, dynamic> additional,
  }) async =>
      MediaConfigureToVideoStoryResponse.fromJson(
          await client.request.post('/api/v1/media/configure_to_story/',
              query: {
                'video': '1',
              },
              form: client.request.sign({
                'supported_capabilities_new':
                    client.state.supportedCapabilities,
                'camera_session_id': client.state.clientSessionId,
                'timezone_offset': client.state.timezoneOffset,
                '_csrftoken': client.state.cookieCsrfToken,
                'client_shared_at': (utcNow().floor() - 35).toString(),
                'configure_mode': configureMode,
                'source_type': sourceType,
                '_uid': client.state.cookieUserId,
                'device_id': client.state.device.deviceId,
                '_uuid': client.state.device.uuid,
                'creation_surface': creationSurface,
                'capture_type': captureType,
                'upload_id': uploadId,
                'client_timestamp': utcNow().floor().toString(),
                'device': client.state.device.devicePayload,
                'length': videoData.duration / 1000.0,
                'clips': [
                  {
                    'length': videoData.duration / 1000.0,
                    'source_type': sourceType,
                    'camera_position': cameraPosition,
                  }
                ],
                'extra': {
                  'source_width': videoData.width,
                  'source_height': videoData.height,
                },
                'audio_muted': audioMuted,
                'poster_frame_index': 0,
                if (recipientUsers != null) 'recipient_users': recipientUsers,
                if (threadIds != null) 'thread_ids': threadIds,
                if (additional != null) ...additional,
              })));

  Future<MediaUploadFinishResponse> uploadFinish(
          {@required String uploadId,
          @required int width,
          @required int height,
          double videoLength,
          bool audioMuted = false,
          int posterFrameIndex = 0,
          String sourceType = '4',
          String caption = ''}) async =>
      MediaUploadFinishResponse.fromJson(
          await client.request.post('/api/v1/media/upload_finish/',
              query: {
                if (videoLength != null) 'video': '1',
              },
              form: client.request.sign({
                'filter_type': '0',
                'timezone_offset': client.state.timezoneOffset,
                '_csrftoken': client.state.cookieCsrfToken,
                'source_type': sourceType,
                '_uid': client.state.cookieUserId,
                'device_id': client.state.device.deviceId,
                '_uuid': client.state.device.uuid,
                'caption': caption,
                'upload_id': uploadId,
                'device': client.state.device.devicePayload,
                'extra': {
                  'source_width': width,
                  'source_height': height,
                },
                if (videoLength != null) ...{
                  'length': videoLength,
                  'clips': [
                    {
                      'length': videoLength,
                      'source_type': sourceType,
                    }
                  ],
                  'audio_muted': audioMuted,
                  'poster_frame_index': posterFrameIndex,
                }
              })));
}
