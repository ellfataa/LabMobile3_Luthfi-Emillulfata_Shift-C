import 'package:flutter/material.dart';
import 'package:pert2_prakpemob/sidemenu.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About KreasiKita'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/about.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 800), // Batasi lebar maksimum
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'KreasiKita',
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'KreasiKita adalah platform inovatif yang didedikasikan untuk memajukan dan merayakan kreativitas di Indonesia. Kami menyediakan ruang digital yang dinamis bagi para seniman, desainer, fotografer, penulis, dan semua individu kreatif untuk mengekspresikan bakat mereka, berbagi karya, dan terhubung dengan komunitas yang bersemangat.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Visi Kami:',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Menjadi katalis utama dalam mengembangkan ekosistem kreatif di Indonesia, mendorong inovasi, dan memfasilitasi pertumbuhan industri kreatif nasional.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16, height: 1.5),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Apa yang Kami Tawarkan:',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    _buildBulletPoint('Galeri Digital: Tampilkan karya Anda ke audiens yang lebih luas.'),
                    _buildBulletPoint('Kolaborasi: Temukan mitra kreatif untuk proyek bersama.'),
                    _buildBulletPoint('Pembelajaran: Akses tutorial dan sumber daya edukatif.'),
                    _buildBulletPoint('Marketplace: Jual karya dan temukan peluang kerja kreatif.'),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      drawer: const Sidemenu(),
    );
  }

  Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('• ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Expanded(
            child: Text(text, style: TextStyle(fontSize: 16, height: 1.5)),
          ),
        ],
      ),
    );
  }
}