# perl_test_on_circleci
Sample of perl test on circleci

## 準備

### イメージの作成

```bash
$ docker build -t ken1flan/perl_test_on_circleci .
```

### DockerHubにpush

```bash
docker push ken1flan/perl_test_on_circleci:latest
```

### コンテナ起動

```bash
$ docker run --name perl_test_on_circleci -it -d ken1flan/perl_test_on_circleci
```

### コンテナ上のbashを実行

```bash
$ docker exec -it perl_test_on_circleci bash
```

## 参照

- https://blog.yuuk.io/entry/next-is-docker