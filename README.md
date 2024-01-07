# texlive-full
自用的Latex编译环境，可以配合 VS Code 的 LaTeX-Workshop 扩展一起使用。

里面安装了 `texlive-full` 和思源宋体。

# VS Code 用法

1. 用 VS Code 打开你的文档项目根目录。
2. 复制 `.devcontainer` 到你的文档项目根目录。
3. 安装 `LaTeX Workshop` 扩展。
4. 安装 [Docker](https://www.docker.com/products/docker-desktop)
5. 安装 [VS Code Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
6. 在 VS Code 命令面板执行 `Remote-Containers: Reopen in Container`。
6. 可以开始编辑文档了。

# Code OSS （VS Code社区版） 用法

1. 用 VS Code 打开你的文档项目根目录。
2. 复制 `.devcontainer` 到你的文档项目根目录。
3. 安装 `LaTeX Workshop` 扩展。
4. 安装 [Docker](https://www.docker.com/products/docker-desktop)
5. 编辑 `settings.json` 添加下面三行：
  ```json
      "latex-workshop.docker.enabled": true,
      "latex-workshop.docker.image.latex": "zgldh/latex-runtime:latest",
      "latex-workshop.latex.recipe.default": "latexmk (xelatex)"
  ```
6. 可以开始编辑文档了。
