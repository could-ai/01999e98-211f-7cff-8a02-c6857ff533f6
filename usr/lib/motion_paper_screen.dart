import 'package:flutter/material.dart';

class MotionPaperScreen extends StatelessWidget {
  const MotionPaperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Makalah Tentang Gerak'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle('Makalah Tentang Gerak'),
            const SizedBox(height: 20),
            _buildSectionTitle('BAB I: PENDAHULUAN'),
            _buildParagraph(
              'A. Latar Belakang\n'
              'Gerak adalah salah satu konsep paling fundamental dalam fisika. Setiap hari, kita melihat benda-benda di sekitar kita bergerak, mulai dari orang berjalan, kendaraan melaju, hingga planet-planet yang mengorbit matahari. Memahami konsep gerak sangat penting karena menjadi dasar bagi banyak cabang ilmu pengetahuan dan teknologi.'
            ),
            _buildParagraph(
              'B. Rumusan Masalah\n'
              '1. Apa pengertian gerak?\n'
              '2. Apa saja jenis-jenis gerak?\n'
              '3. Apa saja besaran-besaran yang terkait dengan gerak?'
            ),
            const SizedBox(height: 20),
            _buildSectionTitle('BAB II: PEMBAHASAN'),
            _buildSubSectionTitle('A. Pengertian Gerak'),
            _buildParagraph(
              'Dalam fisika, gerak didefinisikan sebagai perubahan posisi suatu benda terhadap suatu titik acuan. Titik acuan adalah suatu titik yang dianggap diam. Jadi, suatu benda dikatakan bergerak jika posisinya berubah seiring waktu terhadap titik acuan tersebut. Gerak bersifat relatif, artinya gerak suatu benda bergantung pada titik acuan yang digunakan.'
            ),
            _buildSubSectionTitle('B. Jenis-Jenis Gerak'),
            _buildParagraph(
              '1. Gerak Lurus: Gerak yang lintasannya berupa garis lurus. Gerak lurus dibedakan menjadi Gerak Lurus Beraturan (GLB) dan Gerak Lurus Berubah Beraturan (GLBB).\n'
              '   - GLB: Gerak lurus dengan kecepatan konstan.\n'
              '   - GLBB: Gerak lurus dengan percepatan konstan.'
            ),
            _buildParagraph(
              '2. Gerak Melingkar: Gerak yang lintasannya berupa lingkaran. Contohnya adalah gerak jarum jam atau gerak bulan mengelilingi bumi.'
            ),
            _buildParagraph(
              '3. Gerak Parabola: Gerak yang lintasannya berbentuk parabola. Gerak ini merupakan perpaduan antara gerak lurus ke arah horizontal dan gerak lurus berubah beraturan ke arah vertikal. Contohnya adalah gerak bola yang ditendang.'
            ),
            _buildSubSectionTitle('C. Besaran dalam Gerak'),
            _buildParagraph(
              '- Jarak: Panjang total lintasan yang ditempuh oleh benda.\n'
              '- Perpindahan: Perubahan posisi benda dari titik awal ke titik akhir.\n'
              '- Kecepatan: Perpindahan yang ditempuh setiap satuan waktu.\n'
              '- Kelajuan: Jarak yang ditempuh setiap satuan waktu.\n'
              '- Percepatan: Perubahan kecepatan setiap satuan waktu.'
            ),
            const SizedBox(height: 20),
            _buildSectionTitle('BAB III: PENUTUP'),
            _buildSubSectionTitle('A. Kesimpulan'),
            _buildParagraph(
              'Gerak adalah perubahan posisi benda terhadap titik acuan. Gerak memiliki berbagai jenis, seperti gerak lurus, melingkar, dan parabola. Untuk mendeskripsikan gerak, digunakan besaran-besaran seperti jarak, perpindahan, kecepatan, kelajuan, dan percepatan. Pemahaman yang baik tentang konsep gerak sangat penting untuk mempelajari fenomena fisika yang lebih kompleks.'
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(String text) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildSectionTitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildSubSectionTitle(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: const TextStyle(fontSize: 16, height: 1.5),
    );
  }
}
