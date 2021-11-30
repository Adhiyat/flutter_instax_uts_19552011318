import 'package:flutter_instax_uts_19552011318/instax/models/description.dart';

class DescriptionConst {
  static Description blank = Description(
      title: "blank",
      text:
          "");
  static Description image = Description(
      title: "image",
      text:
          "");
  static Description description1 = Description(
      title: "title",
      text:
          "Be real and fun with the INSTAX MINI 7+. Cool design, colorful and compact, this instant camera is fun and easy to use. Point and shoot and give your day some fun!");
  static Description description2 = Description(
      title: "Point & Shoot",
      text:
          "The Mini 7+ is easy to use! Simply point and shoot! With its exposure control adjustment and 60mm fixed-focus lens, the Mini 7+ makes it easy for you to be creative and live in the moment.");
  static Description description3 = Description(
      title: "Mini But With Full-Size Memories",
      text:
          "Pop it in your wallet, stick it to your wall – the INSTAX Mini film brings you instant 2 x 3 sized photos you can show and tell. Using professional high-quality film technology (as you’d expect from Fujifilm), your festival frolicking, sun worshipping, crowd surfing memories that you print will transport you right back into that moment.");
  static Description description4 = Description(
      title: "Mini Film",
      text: "Mini moments with maximum impact. What’s your next mini moment?");
  static Description description5 = Description(
      title: "Plenty of Great Color Choices",
      text:
          "Available in five awesome colors: Lavender, Seafoam Green, Coral, Light Pink & Light Blue");
  static Description description6 = Description(
      title: "The Mini 7+ Has Your Back!",
      text:
          "Depending upon the weather conditions, you can easily control brightness to obtain a great picture");
  static Description description7 = Description(
      title: "Fun All The Time!",
      text:
          "Live in the moment and enjoy your Mini 7+, and give your day some instant fun!");

  static List getAll() {
    return [
      blank,
      image,
      description1,
      description2,
      description3,
      description4,
      description5,
      description6,
      description7
    ];
  }
}
