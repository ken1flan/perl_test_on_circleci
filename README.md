# perl_test_on_circleci

Sample application of perl on docker, and testing on circleci.

## 準備

### イメージの作成

```console
$ docker build -t ken1flan/perl_test_on_circleci .
```

### DockerHubにpush

```console
docker push ken1flan/perl_test_on_circleci:latest
```

### コンテナ起動

```console
$ docker-compose up
```

### Perlコンテナ上のbashを実行

```console
$ docker-compose exec perl bash
```

### Perlコンテナ

### モジュールをインストール

```console
# cd /code
# carton install
```

### テスト

```console
# cd /code
# carton exec perl test.pl
```

## 参照

- https://blog.yuuk.io/entry/next-is-docker