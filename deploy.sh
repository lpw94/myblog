# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 若是是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'm'

# 若是发布到 https://<USERNAME>.github.io
git push -f 项目提交地址 master

# 若是发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd -