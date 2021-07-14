// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;
import 'dart:io';
import 'structs.dart';

ffi.DynamicLibrary gsgStitchLib = Platform.isAndroid
    ? ffi.DynamicLibrary.open("libgsgStitch.so")
    : ffi.DynamicLibrary.process();

class StitchLibrary {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  StitchLibrary() : _lookup = gsgStitchLib.lookup;

  /// The symbols are looked up with [lookup].
  StitchLibrary.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  int loadAllMap(
    ffi.Pointer<ffi.Int8> pPath,
    ffi.Pointer<MappingInfo> maps,
    ffi.Pointer<ffi.Int32> pSpherialRadius,
  ) {
    return _loadAllMap(
      pPath,
      maps,
      pSpherialRadius,
    );
  }

  late final _loadAllMap_ptr =
      _lookup<ffi.NativeFunction<_c_loadAllMap>>('loadAllMap');
  late final _dart_loadAllMap _loadAllMap =
      _loadAllMap_ptr.asFunction<_dart_loadAllMap>();

  void releaseMaps(
    ffi.Pointer<MappingInfo> maps,
  ) {
    return _releaseMaps(
      maps,
    );
  }

  late final _releaseMaps_ptr =
      _lookup<ffi.NativeFunction<_c_releaseMaps>>('releaseMaps');
  late final _dart_releaseMaps _releaseMaps =
      _releaseMaps_ptr.asFunction<_dart_releaseMaps>();

  void releaseImageInfo(
    ffi.Pointer<ImageInfo> pImage,
  ) {
    return _releaseImageInfo(
      pImage,
    );
  }

  late final _releaseImageInfo_ptr =
      _lookup<ffi.NativeFunction<_c_releaseImageInfo>>('releaseImageInfo');
  late final _dart_releaseImageInfo _releaseImageInfo =
      _releaseImageInfo_ptr.asFunction<_dart_releaseImageInfo>();

  int loadImageData(
    ffi.Pointer<ffi.Int8> pFileName,
    int iImgW,
    int iImgH,
    ffi.Pointer<ffi.Pointer<ffi.Uint8>> ppData,
  ) {
    return _loadImageData(
      pFileName,
      iImgW,
      iImgH,
      ppData,
    );
  }

  late final _loadImageData_ptr =
      _lookup<ffi.NativeFunction<_c_loadImageData>>('loadImageData');
  late final _dart_loadImageData _loadImageData =
      _loadImageData_ptr.asFunction<_dart_loadImageData>();

  ImageInfo makeImageInfo(
    int imageW,
    int imageH,
    ffi.Pointer<ffi.Uint8> pImageData,
  ) {
    return _makeImageInfo(
      imageW,
      imageH,
      pImageData,
    );
  }

  late final _makeImageInfo_ptr =
      _lookup<ffi.NativeFunction<_c_makeImageInfo>>('makeImageInfo');
  late final _dart_makeImageInfo _makeImageInfo =
      _makeImageInfo_ptr.asFunction<_dart_makeImageInfo>();

  int HDRFuse(
    ffi.Pointer<ImageInfo> images,
    int iImgNum,
    ffi.Pointer<HDRParams> pPars,
    ffi.Pointer<ImageInfo> pResult,
  ) {
    return _HDRFuse(
      images,
      iImgNum,
      pPars,
      pResult,
    );
  }

  late final _HDRFuse_ptr = _lookup<ffi.NativeFunction<_c_HDRFuse>>('HDRFuse');
  late final _dart_HDRFuse _HDRFuse = _HDRFuse_ptr.asFunction<_dart_HDRFuse>();

  int fuseFinal(
    ffi.Pointer<FeImageContext> imgContext,
    ffi.Pointer<MappingInfo> maps,
    ffi.Pointer<ImageInfo> pResult,
  ) {
    return _fuseFinal(
      imgContext,
      maps,
      pResult,
    );
  }

  late final _fuseFinal_ptr =
      _lookup<ffi.NativeFunction<_c_fuseFinal>>('fuseFinal');
  late final _dart_fuseFinal _fuseFinal =
      _fuseFinal_ptr.asFunction<_dart_fuseFinal>();
}

typedef _c_loadAllMap = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> pPath,
  ffi.Pointer<MappingInfo> maps,
  ffi.Pointer<ffi.Int32> pSpherialRadius,
);

typedef _dart_loadAllMap = int Function(
  ffi.Pointer<ffi.Int8> pPath,
  ffi.Pointer<MappingInfo> maps,
  ffi.Pointer<ffi.Int32> pSpherialRadius,
);

typedef _c_releaseMaps = ffi.Void Function(
  ffi.Pointer<MappingInfo> maps,
);

typedef _dart_releaseMaps = void Function(
  ffi.Pointer<MappingInfo> maps,
);

typedef _c_releaseImageInfo = ffi.Void Function(
  ffi.Pointer<ImageInfo> pImage,
);

typedef _dart_releaseImageInfo = void Function(
  ffi.Pointer<ImageInfo> pImage,
);

typedef _c_loadImageData = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> pFileName,
  ffi.Int32 iImgW,
  ffi.Int32 iImgH,
  ffi.Pointer<ffi.Pointer<ffi.Uint8>> ppData,
);

typedef _dart_loadImageData = int Function(
  ffi.Pointer<ffi.Int8> pFileName,
  int iImgW,
  int iImgH,
  ffi.Pointer<ffi.Pointer<ffi.Uint8>> ppData,
);

typedef _c_makeImageInfo = ImageInfo Function(
  ffi.Int32 imageW,
  ffi.Int32 imageH,
  ffi.Pointer<ffi.Uint8> pImageData,
);

typedef _dart_makeImageInfo = ImageInfo Function(
  int imageW,
  int imageH,
  ffi.Pointer<ffi.Uint8> pImageData,
);

typedef _c_HDRFuse = ffi.Int32 Function(
  ffi.Pointer<ImageInfo> images,
  ffi.Int32 iImgNum,
  ffi.Pointer<HDRParams> pPars,
  ffi.Pointer<ImageInfo> pResult,
);

typedef _dart_HDRFuse = int Function(
  ffi.Pointer<ImageInfo> images,
  int iImgNum,
  ffi.Pointer<HDRParams> pPars,
  ffi.Pointer<ImageInfo> pResult,
);

typedef _c_fuseFinal = ffi.Int32 Function(
  ffi.Pointer<FeImageContext> imgContext,
  ffi.Pointer<MappingInfo> maps,
  ffi.Pointer<ImageInfo> pResult,
);

typedef _dart_fuseFinal = int Function(
  ffi.Pointer<FeImageContext> imgContext,
  ffi.Pointer<MappingInfo> maps,
  ffi.Pointer<ImageInfo> pResult,
);
