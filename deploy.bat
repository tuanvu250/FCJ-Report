@echo off
echo Building Hugo site...
hugo

cd public
echo Deploying to GitHub Pages...
git init
git add .
git commit -m "Deploy update"
git branch -M gh-pages
git remote add origin https://github.com/tuanvu250/FCJ-Report.git
git push -f origin gh-pages
cd ..
echo ✅ Deployment complete!
pause
