echo "[INFO] -- Setting up terminal functions..."

cp -r docs ~/.config/docs
cp -r saved-pwd ~/.config/docs

echo "### ----- Config -----" >> ~/.profile
echo "source ~/.config/saved-pwd/functions" >> ~/.profile
echo "source ~/dev/Setup/config/docs/functions" >> ~/.profile

# TODO:
# - Update setup to be interactive. Prompt user for what they would like to configure.
# - Give option for (u)pdate or (i)nstall. Install could update .profile