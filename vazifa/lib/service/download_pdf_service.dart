// ignore_for_file: avoid_print

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class DownloadPdfService extends ChangeNotifier {
  static final _dio = Dio();
  static void downloadAndSavePdf() async {
    await Future.delayed(const Duration(seconds: 1));
    final savePath = await _getSavePath();
    _dio.download(
        'https://kitobsevar.uz/kxpv/xrpt_tve5vm8odlmvkneofa11ejfb0i5ajxy5i4z5fvjj8y6ic0yian9fyegynbyyzls8eg3k3cu11o9.pdf',
        savePath);
  }

  static Future<String> _getSavePath() async {
    Directory? savePath = await getApplicationDocumentsDirectory();

    if (Platform.isAndroid) {
      savePath = Directory("/storage/emulated/0/download");
    }
    final fullPath = "${savePath.path}/cv.pdf";
    return fullPath;
  }

  Future<void> _downloadPdfIsolate(String url) async {
    final Dio dio = Dio();
    final Directory savePath = await getApplicationDocumentsDirectory();
    final String filePath = "${savePath.path}/resume.pdf";
    await dio.download(url, filePath);
  }
}
