# 使用现代的 Node 20 基础镜像
FROM node:20-alpine

# 安装需要的系统依赖
RUN apk add --no-cache git curl jq \
  # 全局安装 openspec，添加参数加速
  && npm install -g @fission-ai/openspec@1.5.0 --no-audit --no-fund \
  # 清理 npm 缓存减小镜像体积
  && npm cache clean --force
