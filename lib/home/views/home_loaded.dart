import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_counter/component/title_widget.dart';
import 'package:flutter_counter/data/models/news_response.dart';

class HomeLoadedView extends StatelessWidget {
  final List<Articles> articles;

  const HomeLoadedView(this.articles, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TitleWidget('Hot news', 24),
        SizedBox(height: 200, child: HorizontalList()),
        TitleWidget('Dernière news en France', 24),
        VerticalList(),
      ],
    );
  }

  Widget VerticalList() {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: articles.length - 3,
      itemBuilder: (context, index) =>
          _getItemLayout(context, articles[index + 3], index),
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 4,
        );
      },
    );
  }

  _getItemLayout(BuildContext context, Articles article, int index) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
        elevation: 1,
        child: InkWell(
          onTap: () async {
            html.window.open(article.url.toString(), 'new tab');
          },
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                    child: Image.network(
                      article.urlToImage ?? "https://picsum.photos/200",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (article.title != null)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                              Expanded(
                                child: Text(
                                  article.title!,
                                  style: Theme.of(context).textTheme.headline5,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ]),
                          ),
                        if (article.publishedAt != null)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('' + article.publishedAt.toString()),
                              ],
                            ),
                          )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget HorizontalList() {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 3,
        itemBuilder: (context, index) =>
            _getSimpleItemLayout(context, articles[index], index),
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 4,
          );
        },
      ),
    );
  }

  _getSimpleItemLayout(BuildContext context, Articles article, int index) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.2), BlendMode.dstATop),
                image: NetworkImage(
                  article.urlToImage!,
                ),
              ),
            ),
            width: 260,
            child: InkWell(
              onTap: () async {
                html.window.open(article.url.toString(), 'new tab');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        article.title!,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
