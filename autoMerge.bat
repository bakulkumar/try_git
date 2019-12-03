git fetch
git checkout master
git fetch
git checkout ${source_branch}
git pull origin ${source_branch}
git config --global merge.ours.driver true
git checkout ${destination_branch}
git pull origin ${destination_branch}
# Disable exit on non 0
set +e
git merge ${source_branch}
#git checkout pom.xml --ours
#git checkout ./pom.xml --ours
# keep the pom chanegs of immediate module of parent
#git checkout ./**/pom.xml --ours
# Keep the checkout pom of all submodule
#git checkout ./**/**/pom.xml --ours
#git add -A
git commit -m "CPM-39909 Auto merge via Jenkin"
git push origin ${destination_branch}