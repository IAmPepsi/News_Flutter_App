import 'package:firebase_api_task/models/news.dart';
import 'package:firebase_api_task/utilities/utilities.dart';
import 'package:flutter/material.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({required Article article, Key? key})
      : _article = article,
        super(key: key);
  final Article _article;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
      if (orientation == Orientation.portrait) {
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              _imageButton(context),
              _header(),
              const Divider(),
              Padding(
                padding: EdgeInsets.all(Utilities.padding / 2),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        _article.author!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        ' ${_article.publishedAt!}',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(Utilities.padding / 2),
                        child: Text(
                          _article.description!,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 20,
                          style: const TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        );
      } else {
        final Size _size = MediaQuery.of(context).size;
        return Scaffold(
          body: Row(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  SizedBox(
                    width: _size.height * 0.7,
                    height: _size.height,
                    child: Image.network(
                      _article.urlToImage!,
                      fit: BoxFit.cover,
                      errorBuilder: (BuildContext context, Object error,
                          StackTrace? stackTrace) {
                        return const Center(
                          child: Text('No Image Found'),
                        );
                      },
                    ),
                  ),
                  Positioned(
                    top: Utilities.padding * 2,
                    left: Utilities.padding,
                    child: InkWell(
                      onTap: () => Navigator.of(context).pop(),
                      child: const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white60,
                        child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child:
                              Icon(Icons.arrow_back_ios, color: Colors.black54),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: Utilities.padding / 2,
                    right: Utilities.padding * 2,
                    top: Utilities.padding,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _header(),
                      const Divider(),
                      Text(
                        _article.author!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        ' ${_article.publishedAt!}',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: const TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(Utilities.padding / 2),
                        child: Text(
                          _article.description!,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 20,
                          style: const TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }
    });
  }

  Padding _header() {
    return Padding(
      padding: EdgeInsets.all(Utilities.padding / 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            _article.title!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Source: ${_article.source!.name!}',
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: const TextStyle(
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }

  SizedBox _imageButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Image.network(
            _article.urlToImage!,
            fit: BoxFit.cover,
            errorBuilder:
                (BuildContext context, Object error, StackTrace? stackTrace) {
              return const Center(
                child: Text('No Image Found'),
              );
            },
          ),
          Positioned(
            top: Utilities.padding * 2,
            left: Utilities.padding,
            child: InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white60,
                child: Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Icon(Icons.arrow_back_ios, color: Colors.black54),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
