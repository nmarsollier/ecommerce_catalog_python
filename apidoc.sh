rm -rf ./public
rm README-API.md
npm install apidoc
npm install apidoc-markdown2
apidoc -i ./ -o public
apidoc-markdown2 -p ./public -o README-API.md
