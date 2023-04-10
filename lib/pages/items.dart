
import 'package:portfolio/pages/project_every_escreen.dart';

import '../pages/project_screen.dart';

class FeedItem {
  final String title;
  final String description;
  final String imageUrl;
  final String objectives;
  final String githuburl;
  final String techstack;

  FeedItem({ required this.description, required this.imageUrl, required this.title,required this.objectives,required this.githuburl,required this.techstack});
}

final List<FeedItem> items = [
  FeedItem(
      title:'News Classifier Application',
      description: 'News Classfier classifies all news which are present in real-time database into the category it belongs to.',
      imageUrl: 'https://miro.medium.com/v2/resize:fit:720/format:webp/1*UmhR7X6HNsjS74Ok6HI7NA.png',
      objectives: ' 1. Built a mobile News application based on flutter which classifies news\n 2. Used News-REST API to fetch news details\n 3. Used Flask to deploy Machine Learning model',
      githuburl: 'https://github.com/prajyot-pawar/mahabhoomiweb.git',
      techstack: ' Flutter, Flask, API, Machine Learning'
  ),
  FeedItem(
      title:'Mahabhoomi',
      description: 'John Doe Bob Johnson John Doe Bob Johnson John Doe Bob Johnson John Doe Bob Johnson Bob Johnson',
      imageUrl: 'https://miro.medium.com/v2/resize:fit:720/format:webp/1*UmhR7X6HNsjS74Ok6HI7NA.png',
      objectives: ' 1. Developed a web application called Mahabhoomi which provides a solution for land registry system based on blockchain technology.\n 2. Developed a web application called Mahabhoomi which provides a solution for land registry system based on blockchain technology.\n 3.The block-chain technology ensures that the data is secure and tamper-proof, providing a robust system for land registration and management.\n 4.Implemented the smart contract in Solidity and deployed it on the Polygon network',
      githuburl: 'https://github.com/Prajyot02/Mahabhoomi.git',
      techstack: 'Flutter, Blockchain, Solidity, Polygon Network'
  ),
  FeedItem(
      title:'ChatWalk',
      description: 'John Doe Bob Johnson John Doe Bob Johnson John Doe Bob Johnson John Doe Bob Johnson Bob Johnson',
      imageUrl: 'https://miro.medium.com/v2/resize:fit:720/format:webp/1*UmhR7X6HNsjS74Ok6HI7NA.png',
      objectives: ' 1.Built a real-time video and audio chat mobile application based on Flutter.\n 2. Implementation of Firebase for back-end services\n 3.Implementation of SQLite as a database for storing account information and chat logs in encrypted format \n 4.Authentication of Accounts with Firebase authentication',
      githuburl: 'https://github.com/prajyot-pawar/Chatwalk.git',
      techstack: 'Flutter, Firebase'
  ),
  // FeedItem(
  //     title:'The Property Podcast',
  //     description: 'John Doe Bob Johnson John Doe Bob Johnson John Doe Bob Johnson John Doe Bob Johnson Bob Johnson',
  //     imageUrl: 'https://via.placeholder.com/150',
  //     objectives: ' 1. Built a mobile News application based on flutter which classifies news\n 2. Built a mobile News application based on flutter which classifies news\n 3.required this.objectives',
  //     githuburl: 'https://miro.medium.com/v2/resize:fit:720/format:webp/1*UmhR7X6HNsjS74Ok6HI7NA.png',
  //     techstack: 'https://github.com/prajyot-pawar/mahabhoomiweb.git'
  // ),
  // FeedItem(
  //     title:'The Property Podcast',
  //     description: 'John Doe Bob Johnson John Doe Bob Johnson John Doe Bob Johnson John Doe Bob Johnson Bob Johnson',
  //     imageUrl: 'https://via.placeholder.com/150',
  //     objectives: ' 1. Built a mobile News application based on flutter which classifies news\n 2. Built a mobile News application based on flutter which classifies news\n 3.required this.objectives',
  //     githuburl: 'https://miro.medium.com/v2/resize:fit:720/format:webp/1*UmhR7X6HNsjS74Ok6HI7NA.png',
  //     techstack: 'https://github.com/prajyot-pawar/mahabhoomiweb.git'
  // ),
  // FeedItem(
  //     title:'The Property Podcast',
  //     description: 'John Doe Bob Johnson John Doe Bob Johnson John Doe Bob Johnson John Doe Bob Johnson Bob Johnson',
  //     imageUrl: 'https://picsum.photos/536/354',
  //     objectives: ' 1. Built a mobile News application based on flutter which classifies news\n 2. Built a mobile News application based on flutter which classifies news\n 3.required this.objectives',
  //     githuburl: 'https://miro.medium.com/v2/resize:fit:720/format:webp/1*UmhR7X6HNsjS74Ok6HI7NA.png',
  //     techstack: 'https://github.com/prajyot-pawar/mahabhoomiweb.git'
  // ),

];