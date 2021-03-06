// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;
import 'dart:io';
import 'structs.dart';

ffi.DynamicLibrary nativeLib = Platform.isAndroid
    ? ffi.DynamicLibrary.open("libnative-lib.so")
    : ffi.DynamicLibrary.process();

class NativeLibrary {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  NativeLibrary() : _lookup = nativeLib.lookup;

  /// The symbols are looked up with [lookup].
  NativeLibrary.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

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

  void releaseImageData(
    ffi.Pointer<ffi.Pointer<ffi.Uint8>> ppData,
  ) {
    return _releaseImageData(
      ppData,
    );
  }

  late final _releaseImageData_ptr =
      _lookup<ffi.NativeFunction<_c_releaseImageData>>('releaseImageData');
  late final _dart_releaseImageData _releaseImageData =
      _releaseImageData_ptr.asFunction<_dart_releaseImageData>();

  int fuse(
    ffi.Pointer<ffi.Int8> pFileName1,
    ffi.Pointer<ffi.Int8> pFileName2,
    ffi.Pointer<ffi.Int8> pMapPath,
    ffi.Pointer<ffi.Int8> pVignetPath,
    ffi.Pointer<ffi.Int8> pSavePath,
  ) {
    return _fuse(pFileName1, pFileName2, pMapPath, pVignetPath, pSavePath);
  }

  late final _fuse_ptr = _lookup<ffi.NativeFunction<_c_fuse>>('fuse');
  late final _dart_fuse _fuse = _fuse_ptr.asFunction<_dart_fuse>();
}

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

typedef _c_releaseImageData = ffi.Void Function(
  ffi.Pointer<ffi.Pointer<ffi.Uint8>> ppData,
);

typedef _dart_releaseImageData = void Function(
  ffi.Pointer<ffi.Pointer<ffi.Uint8>> ppData,
);

typedef _c_fuse = ffi.Int32 Function(
  ffi.Pointer<ffi.Int8> pFileName1,
  ffi.Pointer<ffi.Int8> pFileName2,
  ffi.Pointer<ffi.Int8> pMapPath,
  ffi.Pointer<ffi.Int8> pVignetPath,
  ffi.Pointer<ffi.Int8> pSavePath,
);

typedef _dart_fuse = int Function(
  ffi.Pointer<ffi.Int8> pFileName1,
  ffi.Pointer<ffi.Int8> pFileName2,
  ffi.Pointer<ffi.Int8> pMapPath,
  ffi.Pointer<ffi.Int8> pVignetPath,
  ffi.Pointer<ffi.Int8> pSavePath,
);
