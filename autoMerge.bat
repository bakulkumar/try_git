git fetch
git checkout master
git fetch
git checkout b1
git pull origin b1
git config --global merge.ours.driver true
git checkout b2
git pull origin b2
# Disable exit on non 0
set +e
git merge b1
git checkout pom.xml --ours
git checkout ./pom.xml --ours
# keep the pom chanegs of immediate module of parent
git checkout ./**/pom.xml --ours
# Keep the checkout pom of all submodule
git checkout ./**/**/pom.xml --ours
git add -A
git commit -m "JIRA-111223 Auto merged via script"
git push origin b2