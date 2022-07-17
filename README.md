# Jupyter Notebook for Julia
JuliaをJupyter Notebook上で使うためのDockerイメージです。

VSCodeのdevcontainerのベースイメージなどにお使いください。


- [Jupyter Notebook for Julia](#jupyter-notebook-for-julia)
  - [Installation](#installation)
  - [Features](#features)
  - [License](#license)



## Installation
[DockerHub](https://hub.docker.com/repository/docker/huisint/jupyter-julia)からプルします。

``` shell
$ docker pull huisint/jupyter-julia
```


## Features
次のパッケージをプリインストールしています。

- IJulia


日本語PDF出力、コードセル内のギリシャ文字のPDF出力に対応しています。

```shell
$ jupyter nbconvert --to pdf sample.ipynb
```

グラフもPDF出力できます。


See also: [sample.ipynb](sample.ipynb)

## License
MIT License
