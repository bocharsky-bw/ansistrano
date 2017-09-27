cd ./../ansible
STEP=$(git rev-parse --abbrev-ref HEAD)

cp -R ./* ./../ansistrano
cp -R ./.bowerrc ./../ansistrano
cp -R ./.circleci ./../ansistrano
cp -R ./.gitignore ./../ansistrano

cd ./../ansistrano
rm -rf ./_tuts
rm -rf ./knpu

git add .
git commit -m "Boot '$STEP' step"
git push victor master
