set lasttag (git describe --tags --abbrev=0)
set last_commit_messages (git log $lasttag..HEAD --format="%s")

string match --regex "fix(\(.*?\))?:\s" $last_commit_messages && set semver_inc patch
string match --regex "feat(\(.*?\))?:\s" $last_commit_messages && set semver_inc minor

# exit early if no commit include a fix or a new feature
if test ! -n "$semver_inc"
    echo "autotag: Did not find any new feature or fix to tag. Exiting"
    exit 1
end

set tag "v$(semver -i "$semver_inc" "$lasttag")"
git tag "$tag"
echo "Created new tag $tag"
git push --tags
