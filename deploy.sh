git remote add gigalixir https://$GIGALIXIR_EMAIL:$GIGALIXIR_API_KEY@git.gigalixir.com/$GIGALIXIR_APP_NAME.git

echo "Push gigalixir to master banch gigalixir"
git push gigalixir master HEAD:master
echo "Deploy Finalizado"
echo "Exiting."
