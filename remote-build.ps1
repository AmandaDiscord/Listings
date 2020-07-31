$ErrorActionPreference = "Stop"

tar -cf dir.tar *
echo "put dir.tar listings/" | sftp -P 4841 pencil@amanda.moe
ssh -p 4841 pencil@amanda.moe "cd listings; and tar -xf dir.tar; and rm dir.tar; and find -name '*.fish' -exec chmod +x {} \; ; and ./build.fish; and tar -cf build.tar build"
echo "get listings/build.tar`nrm listings/build.tar" | sftp -P 4841 pencil@amanda.moe
tar -xf build.tar
rm build.tar
