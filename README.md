# perl_test_on_circleci
Sample of perl test on circleci

## 準備

### イメージの作成

```bash
$ docker build -t ken1flan/perl_test_on_circleci .
```

### コンテナ起動

```bash
$ docker run --name perl_test -it -d perl_test
```

### コンテナ上のbashを実行

```bash
$ docker exec -it perl_test bash
```

## 参照

- https://blog.yuuk.io/entry/next-is-docker