gpg --list-key s
gpg --list-secret-keys --keyid-format=long
gpg --armor --export-secret-keys 2DF7C0E1202D7C42
#Exporto mi llave privada
gpg --armor --export villacresnicolas7@gmail.com > jt_llave_publica.asc

gpg --import MICOMPA_llave_public.asc
echo “de que me sirve graduarme de ing si ella nunca vio que para mi ella era mi localhost”> doc_no_cifrado.txt
gpg --output doc_cifrado.txt --encrypt --recipient 153EAC8A9F562E7CB45439792DF7C0E1202D7C42