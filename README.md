# Liferay >= 7.0 - BYTE-THEME

Liferay BYTE-THEME is Multilanguage Product/Service compnay website  theme

<img src="/src/images/screenshot.png" alt="BYTE-THEME" width="400px">

### Feature

- Bootstrap Responsive

- Multilanguage (English, German within)

- Used Application Display template

- Web content with structure and template

- Out of Box Site Search integration

# Getting started

1. clone our repo
 ```bash
 git clone --depth 1 https://github.com/byteparity/byte-theme.git
 ```
 
2. change directory to our repo
 ```bash
 cd byte-theme
 ```
3. install the repo with npm
```bash
 npm install
 npm i --save gulp-ruby-sass
 ```
 
4. Create `liferay-theme.json` file at theme root lavel

```bash

 {
   "LiferayTheme": {
  "appServerPath": "PATH_TO_LIFERAY_TOMCATE_DIR", 
  "deployPath": "PATH_TO_LIFERAY_DEPLOY_DIR",
  "url": "http://localhost:8080",
  "appServerPathPlugin": "E:\\poc\\byte-theme\\.web_bundle_build",
  "deployed": true,
  "pluginName": "byte-theme"
   }
 }
 ```
5. Deploy theme by following command
```bash
gulp deploy
```
6. Create new site blank site -> Apply `byte-theme` to newly created site.

7. Import `full-site.lar` file from `/lar` folder to newly created site.

8. Deploy `contact_us.jsr` file from `/jar` folder to liferay server.

9. You can updated all section content from `web-content`, We have developed `web-content` with well fromating `structurs` and `templates`.

[LIFERAY THEME GENERATOR](https://dev.liferay.com/develop/tutorials/-/knowledge_base/7-0/themes-generator) detail doc.

# Made with Love by
[ByteParity Technologies](https://byteparity.com/)