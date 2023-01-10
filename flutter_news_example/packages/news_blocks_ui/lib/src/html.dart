import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart' as flutter_html;

import 'package:news_blocks/news_blocks.dart';

/// {@template html}
/// A reusable html news block widget.
/// {@endtemplate}
class Html extends StatelessWidget {
  /// {@macro html}
  const Html({super.key, required this.block});

  /// The associated [HtmlBlock] instance.
  final HtmlBlock block;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.sm),
      child: flutter_html.Html(
        data: block.content,
        style: {
          'p': flutter_html.Style.fromTextStyle(
            theme.textTheme.bodyLarge!,
          ),
          'h1': flutter_html.Style.fromTextStyle(
            theme.textTheme.displayLarge!,
          ),
          'h2': flutter_html.Style.fromTextStyle(
            theme.textTheme.displayMedium!,
          ),
          'h3': flutter_html.Style.fromTextStyle(
            theme.textTheme.displaySmall!,
          ),
          'h4': flutter_html.Style.fromTextStyle(
            theme.textTheme.headlineMedium!,
          ),
          'h5': flutter_html.Style.fromTextStyle(
            theme.textTheme.headlineSmall!,
          ),
          'h6': flutter_html.Style.fromTextStyle(
            theme.textTheme.titleLarge!,
          ),
        },
      ),
    );
  }
}
