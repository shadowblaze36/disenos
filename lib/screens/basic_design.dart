import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      const Image(image: AssetImage('assets/landscape.jpg')),
      //Titulo
      const Title(),

      //Button Section
      const ButtonSection(),

      //Description

      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: const Text(
            'Ad culpa culpa cillum sit ea culpa qui consequat aliquip. Ut laborum cupidatat id voluptate incididunt sit quis dolor. Est labore sit labore ipsum officia duis exercitation labore exercitation nulla excepteur. Reprehenderit sunt quis minim elit in nostrud tempor Lorem. Proident id amet id commodo excepteur veniam dolore pariatur et. Cupidatat aliquip occaecat est aute eiusmod consequat ut laborum pariatur eu nulla cillum esse dolor. Laborum incididunt irure cillum dolore occaecat mollit deserunt. Sit aliqua exercitation consequat nulla enim nulla ut ex irure ad enim sint ullamco. Nulla eu amet proident duis eu velit ut pariatur laborum ipsum proident. Anim culpa laboris non ut irure nulla amet.'),
      ),
    ]));
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Kandrsteg, Switzerland',
                  style: TextStyle(color: Colors.black45)),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            CustomButton(icon: Icons.call, text: 'CALL'),
            CustomButton(icon: Icons.route, text: 'ROUTE'),
            CustomButton(icon: Icons.share, text: 'SHARE'),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: Colors.lightBlueAccent),
          Text(text,
              style:
                  const TextStyle(color: Colors.lightBlueAccent, fontSize: 12))
        ],
      ),
    );
  }
}
