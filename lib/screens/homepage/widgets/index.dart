class CardIndex {
  final String heading;
  final String description;
  final String routepath;
  final String lottiebg;
  const CardIndex(
      this.description, this.heading, this.lottiebg, this.routepath);
}

const List<CardIndex> CardList = <CardIndex>[
  CardIndex(
      'Make the link shorter',
      'Short Link',
      'https://assets10.lottiefiles.com/packages/lf20_zvmuqszh.json',
      '/sl'),
  CardIndex(
      'Create Your blogs',
      'Blogs',
      'https://assets9.lottiefiles.com/packages/lf20_9WVhKlBG2r.json',
      '/blog'),
  CardIndex(
      'Create Adresses',
      'Fake Adress',
      'https://assets3.lottiefiles.com/packages/lf20_ixtucaik.json',
      '/adgen'),
  CardIndex(
      'Credit virtual Credit Card',
      'Credit Card',
      'https://assets1.lottiefiles.com/packages/lf20_h2ywf2y1.json',
      '/cc'),
];
