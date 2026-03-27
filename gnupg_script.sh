# Verifica si GPG está instalado en el sistema
which gpg
# Muestra la versión de GPG instalada
gpg --version
# Lista todas las llaves públicas que tienes en tu keyring
gpg --list-keys
# Muestra tus llaves privadas con formato largo de ID
gpg --list-secret-keys --keyid-format=long
# Genera un par de llaves (pública y privada)
gpg --full-generate-key
# Exporta tu llave privada (con ID 2DF7C0E1202D7C42) en formato ASCII
gpg --armor --export-secret-keys 2DF7C0E1202D7C42
# Exporta tu llave pública asociada al email y la guarda en un archivo .asc
gpg --armor --export villacresnicolas7@gmail.com > jt_llave_publica.asc
# Importa la llave pública de otra persona (MICOMPA) a tu keyring
gpg --import MICOMPA_llave_public.asc
# Verifica que la llave fue importada correctamente
gpg --list-keys
# Crea un archivo de texto con un mensaje (sin cifrar)
echo "de que me sirve graduarme de ing si ella nunca vio que para mi ella era mi localhost" > doc_no_cifrado.txt
# Cifra el archivo usando la llave pública del destinatario
gpg --output doc_cifrado.txt --encrypt --recipient 153EAC8A9F562E7CB45439792DF7C0E1202D7C42 doc_no_cifrado.txt
# Descifra un archivo recibido
gpg --decrypt doc-cifrado.txt
# Firma el documento en texto visible
gpg --clearsign doc_no_cifrado.txt
# Firma el documento en formato binario
gpg --sign doc_no_cifrado.txt
# Verifica la firma del archivo
gpg --verify doc_no_cifrado.txt.asc
# Edita la llave para asignar nivel de confianza
gpg --edit-key ltenemaza554@gmail.com
# Firma la llave pública de tu pareja
gpg --sign-key ltenemaza554@gmail.com
# Verifica nuevamente la firma después de confiar en la llave
gpg --verify doc_no_cifrado.txt.asc
# Cifra y firma el archivo al mismo tiempo
gpg --encrypt --sign --recipient ltenemaza554@gmail.com doc_no_cifrado.txt
# Crea una firma separada del documento
gpg --detach-sign doc_no_cifrado.txt
# Verifica la firma separada
gpg --verify doc_no_cifrado.txt.sig
# Descifra y verifica la firma del archivo
gpg --decrypt doc_no_cifrado.txt.gpg
# Muestra el contenido del archivo
cat doc_no_cifrado.txt