#execute list-files to create index on Home.md
./list-files.sh

#git
git status
echo ''
echo ''
echo 'Press enter to continue'
read
git add .
git commit --all
git push --all 