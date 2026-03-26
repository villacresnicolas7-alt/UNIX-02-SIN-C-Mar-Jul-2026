# Lista todas las llaves públicas que tienes en tu keyring
gpg --list-key s
# Muestra tus llaves privadas con formato largo de ID
gpg --list-secret-keys --keyid-format=long
# Exporta tu llave privada (con ID 2DF7C0E1202D7C42) en formato ASCII
gpg --armor --export-secret-keys 2DF7C0E1202D7C42
# Exporta tu llave pública asociada al email y la guarda en un archivo .asc
gpg --armor --export villacresnicolas7@gmail.com > jt_llave_publica.asc
# Importa la llave pública de otra persona (MICOMPA) a tu keyring
gpg --import MICOMPA_llave_public.asc
# Crea un archivo de texto con un mensaje (sin cifrar)
echo “de que me sirve graduarme de ing si ella nunca vio que para mi ella era mi localhost”> doc_no_cifrado.txt
# Cifra el archivo usando la llave pública del destinatario (ID 2DF7C0E1202D7C42)
gpg --output doc_cifrado.txt --encrypt --recipient 153EAC8A9F562E7CB45439792DF7C0E1202D7C42gpg --edit-key ltenemaza554@gmail.com
