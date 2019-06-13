# perl_test_on_circleci
Sample of perl test on circleci

## 準備

### イメージの作成

```bash
$ docker build -t perl_test .
```

### コンテナ起動

```bash
$ docker run --name perl_test -it -d perl_test
```

### コンテナ上のbashを実行

```bash
$ docker exec -it perl_test bash
```
