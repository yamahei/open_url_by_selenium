open url by selenium
====================

just open url in browser by selenium on docker

Reference information
---------------------

- Chrome & Selenium & Ruby によるスクレイピング環境を Docker で構築する
  https://zenn.dev/ydammatsu/articles/49f1d8b68a920c

USAGE
-----

- URL_TO_OPEN:
  your url to open.

```
docker build --rm -t local/open_url_by_selenium .
docker run --init -e URL_TO_OPEN=https://kisejin-aa27gkw5ha-uc.a.run.app/app local/open_url_by_selenium
```