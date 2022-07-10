# Jupyter Notebook for Julia
`Julia`を`Jupyter Notebook`上で使うための`Docker`イメージです。

`VSCode`の`devcontainer`のベースイメージなどにお使いください。


- [Jupyter Notebook for Julia](#jupyter-notebook-for-julia)
  - [Installation](#installation)
  - [Features](#features)
  - [License](#license)



## Installation
[DockerHub](https://hub.docker.com/repository/docker/huisint/jupyter-julia)からプルします。

``` shell
$ docker pull hinihat/jupyter-julia
```


## Features
次のパッケージをプリインストールしています。

- IJulia


日本語PDF出力、コードセル内のギリシャ文字のPDF出力に対応しています。

```shell
$ jupyter nbconvert --to pdf sample.ipynb
```

グラフもPDF出力できます。


See also: [sample.ipynb](https://github.com/huisint/jupyter-julia/blob/master/sample.ipynb)

## License
MIT License
