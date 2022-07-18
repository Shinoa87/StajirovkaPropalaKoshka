import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

enum SocialMedia {facebook, vkontakte, odnoklassniki,}

Future share(SocialMedia platform) async {
  const text = 'Пропала кошка, помогите неравнодушные';
  final urls = {
    SocialMedia.facebook : ('https://www.facebook.com/sharer/sharer.php?u=адрес_страницы&text=$text')
    ,SocialMedia.odnoklassniki : ('https://connect.ok.ru/offer?url=адрес_страницы&text=$text')
    ,SocialMedia.vkontakte : ('https://vk.com/share.php?url=адрес_страницы&text=$text')
  };
  final url = Uri.parse(urls[platform]!);
  if (await canLaunchUrl(url)){
    await launchUrl(url);
  }
}

Widget buildSocialButton({required image, required Function() onClicked})
=> InkWell(
  onTap: onClicked,
  child: Image(image: image),
);

class ShareInfo extends StatelessWidget{
  const ShareInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 22.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:   [
            const Text('Поделиться',
              style: TextStyle(
                color: Color(0xFF000000),
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Roboto',
                letterSpacing: 0.03
              ),
            ),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildSocialButton(
                  image : const AssetImage('images/Vector.png'),
                  onClicked: () => share(SocialMedia.vkontakte),
                ), const SizedBox(width: 8),
                buildSocialButton(
                  image : const AssetImage('images/ico.png'),
                  onClicked: () => share(SocialMedia.odnoklassniki),
                ),const SizedBox(width: 8),
                buildSocialButton(
                  image : const AssetImage('images/ico1.png'),
                  onClicked: () => share(SocialMedia.facebook),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

