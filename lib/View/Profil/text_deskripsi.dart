import 'package:flutter/material.dart';

class textDeskripsi extends StatelessWidget {
  const textDeskripsi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Center(
        child: Text(
          "         Sejak berdiri pada tahun 2002, GH Dance Academy telah menjadi salah satu pusat pendidikan tari terkemuka di Indonesia. Dengan pusat utamanya berlokasi di tanah air, akademi ini telah berhasil meraih prestasi yang mengagumkan dalam mengembangkan seni tari. Tidak hanya membatasi diri pada satu jenis tarian, GH Dance Academy telah meluas ke berbagai belahan dunia dengan membuka berbagai cabang di berbagai benua. Ini tidak hanya memperluas cakupan geografisnya, tetapi juga mencerminkan komitmennya untuk mempromosikan keanekaragaman dalam seni tari. Di dalam akademi ini, siswa-siswa tidak hanya diajarkan teknik dasar tari, tetapi juga diberikan kesempatan untuk menjelajahi banyak cabang tari yang berbeda, sehingga membuka pintu bagi ekspresi kreatif yang luas dan merangsang perkembangan bakat tari yang unik bagi setiap individu yang berpartisipasi. Dengan demikian, GH Dance Academy bukan hanya sekadar sekolah tari, tetapi juga merupakan wadah untuk menggali potensi seni tari yang tak terbatas, menjembatani budaya dan bakat dari berbagai penjuru dunia.",
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'Vollkorn',
          ),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
