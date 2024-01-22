import 'package:flutter/material.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Recipes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RecipeScreen(),
    );
  }
}

class Recipe {
  final String name;
  final String? imageUrl; // URL gambar diubah menjadi nullable (bisa kosong)
  final List<String> ingredients;
  final List<String> steps;

  Recipe({
    required this.name,
    this.imageUrl, // URL gambar diubah menjadi nullable (bisa kosong)
    required this.ingredients,
    required this.steps,
  });
}

class RecipeScreen extends StatelessWidget {
  final List<Recipe> recipes = [
    Recipe(
      name: 'Nasi Goreng',
      imageUrl:
          'https://asset.kompas.com/crops/UesUl9w5bJlV-T1I6IhlcpBTncM=/69x0:866x531/750x500/data/photo/2023/02/09/63e4a1a21af6e.jpg',
      ingredients: [
        'Nasi',
        'Bawang Merah',
        'Bawang Putih',
        'Kecap',
        'Kecap Asin'
      ],
      steps: [
        'Tumis bawang merah dan bawang putih hingga harum.',
        'Masukkan nasi dan aduk rata.',
        'Tambahkan kecap secukupnya.',
        'Aduk hingga matang dan siap disajikan.'
      ],
    ),
    Recipe(
      name: 'Seblak',
      imageUrl:
          'https://asset.kompas.com/crops/iovFWWqcaCzqfkcwspLxRhaa8hA=/30x13:998x658/750x500/data/photo/2023/10/17/652de1507a5c0.jpeg',
      ingredients: [
        '100 gram kerupuk aci',
        '7 lembar daun caisim/sawi hijau',
        '5 butir bakso sapi',
        '1 butir telur',
        'Secukupnya air',
        'Secukupnya garam dan gula',
        '2 ruas kencur',
        '2 butir bawang merah',
        '1 butir bawang putih',
        '5 buah cabe rawit merah (sesuai selera pedas)',
        '3 buah cabe keriting merah'
      ],
      steps: [
        'Rendam kerupuk dengan air biasa selama sekitar 30 menit.',
        'Potong-potong daun caisim dan bakso sapi sesuai selera.',
        'Haluskan kencur, bawang merah, bawang putih, cabe rawit, dan cabe keriting.',
        'Tumis bumbu halus hingga harum, tambahkan air (sekitar 1 gelas). Biarkan air mendidih.',
        'Kocok lepas telur.',
        'Tambahkan telur ke dalam tumisan bumbu dan aduk hingga matang.',
        'Masukkan kerupuk, bakso sapi, daun caisim, gula, dan garam.',
        'Masak hingga matang dan sajikan selagi hangat.'
      ],
    ),
    Recipe(
      name: 'Cromboloni',
      imageUrl:
          'https://cdn-1.timesmedia.co.id/images/2023/12/09/Cromboloni.jpg',
      ingredients: [
        '250 gr terigu prot tinggi',
        '  1 sdt ragi instan',
        '30 gr gula pasir',
        '1 kuning telur',
        '20 gr margarin',
        '1 sdt garam',
        '125 ml susu cair',
        '100 gr korsvet',
        'slice filling & toping : glaze cokelat & greentea, chocolate almond & almond'
      ],
      steps: [
        'Dalam wadah besar masukkan terigu, fermipan, gula pasir & garam aduk rata.',
        'Buat lubang/sumur ditengahnya, tambahkan kuning telur & susu cair, aduk rata, lalu tambahkan margarin uleni hingga kalis atau adonan tidak menempel lg dibaskom.',
        'Setelah kalis, bulatkan adonan lalu diamkan dlm bowl dgn ditutupi serbet/plastik wrap selama 30 -45 menit atau hingga mengembang 2x lipatnya.',
        'Setelah mengembang 2x lipat, kempeskan adonan, pindahkan ke meja gilas yg sudah ditaburi terigu. taburi juga permukaan adonan dgn terigu supaya tidak lengket lalu bentuk persegi, tekan2 perlahan dgn rolling pin sambil digilas memanjang/persegi panjang.',
        'Beri korsvet dgn cara dioles rata kesemua permukaan adonan. lalu lakukan lipatan single pertama, kemudian gilas memanjang lagi dgn tetap ditaburi terigu tipis2 biar tidak lengket.',
        'Lipat lagi adonan, lalu gilas lagi dgn bentuk memanjang, lakukan sampai 2 - 4x lipatan. setelah lipatan single terakhir, bungkus adonan dgn plastik wrap, istirahatkan dalam kulkas selama 15 menit.',
        'Setelah resting 15 menit, gilas memanjang lagi adonan dgn ketebalan 0,5cm. lalu bagi adonan menjadi 4 - 6 bagian, potong bentuk pita panjang gunakan pisau & penggaris supaya hasilnya rapih & sama rata. lalu roll adonan bentuk obat nyamuk, letakkan diatas loyang yg telah diolesi tipis margarin, beri cetakan/ring cutter bulat. tutup lagi atasnya dgn loyang diamkan selama 30 - 45 menit atau hingga mengembang 2x lipat. panaskan oven suhi 200°c panggang selama 12-15 menit api atas bawah hingga matang',
        'Setelah matang, dinginkan lalu lubangi beri bahan isian dan toping.'
      ],
    ),
    Recipe(
      name: 'Ayam Geprek',
      imageUrl:
          'https://d1vbn70lmn1nqe.cloudfront.net/prod/wp-content/uploads/2023/07/17055245/Rendah-Kalori-Ini-Resep-Ayam-Geprek-Pedas-Ala-Rumahan-.jpg.webp',
      ingredients: [
        '500 gram ayam fillet, potong menjadi bagian yang lebih tipis',
        '1 butir telur',
        'Tepung serbaguna secukupnya (untuk melapisi ayam)',
        'Tepung maizena secukupnya (untuk melapisi ayam)',
        'Garam secukupnya',
        'Merica bubuk secukupnya',
        'Minyak goreng secukupnya (untuk menggoreng ayam)',
      ],
      steps: [
        'Siapkan ayam fillet, kemudian lumuri dengan garam dan merica bubuk sesuai selera.',
        'Kocok telur di dalam mangkuk terpisah.',
        'Campurkan tepung serbaguna dan tepung maizena di dalam mangkuk lain.',
        'Gulingkan potongan ayam ke dalam campuran tepung, lalu celupkan ke dalam telur kocok, dan gulingkan lagi ke dalam campuran tepung hingga rata.',
        'Panaskan minyak goreng dalam wajan dengan api sedang.',
        'Goreng potongan ayam hingga kuning keemasan dan crispy. Tiriskan.',
        'Untuk membuat sambal geprek, haluskan cabe rawit, cabai merah besar, dan bawang putih. Tambahkan garam dan gula secukupnya, lalu beri air asam jawa sesuai selera.',
        'Panaskan sedikit minyak dalam wajan, tumis bumbu yang telah dihaluskan hingga harum dan matang. Angkat dan tiriskan.',
        'Geprek ayam yang telah digoreng dengan cara menumbuknya menggunakan ulekan atau benda tumpul lainnya.',
        'Sajikan ayam geprek di atas piring, beri sambal geprek di atasnya sesuai selera.',
        'Ayam Geprek siap disajikan. Nikmati kelezatannya!',
      ],
    ),
    Recipe(
      name: 'Rendang',
      imageUrl:
          'https://cdn.idntimes.com/content-images/community/2022/04/resep-rendang-filosofi-rendang-makna-rendang-arti-rendang-rendang-dari-mana-makanan-indonesia-filosofi-9cde86371d7fc78c91ae80a6ffab250e-e0b9344da253b8e653bd42c7df03d6d9.jpg',
      ingredients: [
        '500 gram daging sapi, potong kotak',
        '2 lembar daun kunyit',
        '2 lembar daun jeruk',
        '2 batang serai, memarkan',
        '4 lembar daun salam',
        '400 ml santan kental',
        '200 ml santan encer',
        '2 sendok makan minyak untuk menumis',
        'Garam secukupnya',
        'Gula merah secukupnya (opsional)',
      ],
      steps: [
        'Panaskan minyak dalam wajan, tumis bumbu halus hingga harum dan matang.',
        'Masukkan potongan daging sapi, aduk hingga daging berubah warna.',
        'Tambahkan daun kunyit, daun jeruk, serai, dan daun salam. Aduk rata.',
        'Tuangkan santan kental dan santan encer. Biarkan mendidih sambil sesekali diaduk.',
        'Kecilkan api, masak rendang dengan api kecil hingga santan menyusut dan bumbu meresap ke daging. Aduk sesekali agar tidak gosong.',
        'Tambahkan garam dan gula merah (jika menggunakan), aduk rata. Masak terus hingga daging empuk dan bumbu meresap.',
        'Rendang siap disajikan. Nikmati kelezatannya!',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Recipes'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      RecipeDetailScreen(recipe: recipes[index]),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.all(8),
              child: ListTile(
                leading: SizedBox(
                  width: 100,
                  height: 100,
                  child: recipes[index].imageUrl !=
                          null // Cek apakah URL gambar ada
                      ? Image.network(
                          recipes[index].imageUrl!,
                          fit: BoxFit.cover,
                        )
                      : Icon(Icons
                          .fastfood), // Jika tidak ada, tampilkan ikon umum
                ),
                title: Text(recipes[index].name),
              ),
            ),
          );
        },
      ),
    );
  }
}

class RecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailScreen({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 200,
                child: recipe.imageUrl != null // Cek apakah URL gambar ada
                    ? Image.network(
                        recipe.imageUrl!,
                        fit: BoxFit.cover,
                      )
                    : Placeholder(), // Jika tidak ada, tampilkan placeholder
              ),
              SizedBox(height: 20),
              Text(
                'Ingredients:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: recipe.ingredients.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.arrow_right),
                    title: Text(recipe.ingredients[index]),
                  );
                },
              ),
              SizedBox(height: 20),
              Text(
                'Steps:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: recipe.steps.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(child: Text('${index + 1}')),
                    title: Text(recipe.steps[index]),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
