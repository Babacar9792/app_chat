import "package:flutter/material.dart";

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width * 0.7;
    if (MediaQuery.of(context).size.width <= 600) {
      largeur = MediaQuery.of(context).size.width * 0.7;
    }
    if (MediaQuery.of(context).size.width > 600 &&
        MediaQuery.of(context).size.width > 1200) {
      largeur = MediaQuery.of(context).size.width * 0.5;
    }
    if (MediaQuery.of(context).size.width > 1200) {
      largeur = MediaQuery.of(context).size.width * 0.3;
    }
    return Scaffold(
        backgroundColor: Colors.white54,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Heureux de vous revoir",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white),
              ),
              const Text(
                "Connecter vous à votre compte",
                style: TextStyle(fontSize: 30, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: largeur,
                child: const ChampText(
                  placeHolderText: "Email",
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: largeur,
                  child: const ChampText(
                    placeHolderText: "Mot de passe",
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: largeur,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    mouseCursor: MaterialStateMouseCursor.clickable,
                  ),
                  onPressed: () {
                    print("connexion");
                  },
                  child: const Text('Connexion'),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "S'inscrire",
                  style: TextStyle(decorationStyle: TextDecorationStyle.double, color: Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}

class ChampText extends StatelessWidget {
  final String placeHolderText;
  const ChampText({super.key, required this.placeHolderText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
          border: const UnderlineInputBorder(),
          labelText: placeHolderText,
          hintStyle: const TextStyle(color: Colors.white)),
    );
  }
}

// Text("bonjour", gtjuiyopmlùjmhkgifcrutfgyklbj n  style: TextStyle(color: Colors.green, fontSize: 25),)

/**
 * Link(
  uri: Uri.parse('/home'),
  builder: (BuildContext context, FollowLink? followLink) => ElevatedButton(
    onPressed: followLink,
    // ... other properties here ...
  )},
)
 */
