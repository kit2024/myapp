
import 'package:flutter/material.dart';

class MinistryCard extends StatelessWidget {
  final String title;
  final IconData? icon;
  final String? imageUrl;

  const MinistryCard({
    super.key,
    required this.title,
    this.icon,
    this.imageUrl,
  }) : assert(icon != null || imageUrl != null, 'Either icon or imageUrl must be provided.');

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {},
        child: buildCardContent(context),
      ),
    );
  }

  Widget buildCardContent(BuildContext context) {
    if (imageUrl != null) {
      return Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.network(
            imageUrl!,
            fit: BoxFit.cover,
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.4),
            colorBlendMode: BlendMode.darken,
          ),
          Center(
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (icon != null) ...[
            Icon(icon!, size: 48.0, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 16.0),
          ],
          Text(title, style: Theme.of(context).textTheme.titleLarge),
        ],
      );
    }
  }
}
