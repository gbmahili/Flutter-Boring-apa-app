class Article {
  final String text;
  final String domain;
  final String by;
  final String age;
  final int score;
  final int commentsCount;

  const Article({this.text, this.domain, this.by, this.age, this.score, this.commentsCount });
}
final articles = [
  new Article(
      text: 'Circular Shock Accoustic Waves in Iconsphere Triggered by Launch of Formosat-5',
      domain: 'wiley.com',
      by: 'zdw',
      age: '3 hours',
      score: 177,
      commentsCount: 62
  ),
  new Article(
      text: 'BMW says electric car mass production not viable until 2020',
      domain: 'reuters.com',
      by: 'Mononokay',
      age: '2 hours',
      score: 81,
      commentsCount: 128
  ),
  new Article(
      text: 'Evolution Is The New Deep Learning',
      domain: 'sentient.ai',
      by: 'jonbaer',
      age: '4 hours',
      score: 200,
      commentsCount: 62
  ),
  new Article(
      text: 'Cutting "Old Head" at IBM',
      domain: 'propublica.org',
      by: 'mwexler',
      age: '7 hours',
      score: 287,
      commentsCount: 240
  ),
  new Article(
      text: 'Where to score: Classified Ads from Haight-Ashbury',
      domain: 'theparisreview.org',
      by: 'tintinnabula',
      age: '7 hours',
      score: 47,
      commentsCount: 12
  ),
  new Article(
      text: 'TravisBuddy: Adds comments to failed pull requests, tells author what went wrong',
      domain: 'github.com',
      by: 'bluzi',
      age: '8 hours',
      score: 37,
      commentsCount: 26
  ),

  new Article(
      text: 'Using Technical Debt in Your Favor',
      domain: 'gitconnected.com',
      by: 'treyhuffine',
      age: '7 hours',
      score: 140,
      commentsCount: 123
  ),
];