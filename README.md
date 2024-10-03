Esse repositório representa a raiz do projeto Sisdrenagem e contém arquivos
gerais, como o `docker-compose.yml` necessário para rodar todas as partes do
projeto em ambiente de desenvolvimento. Outros arquivos gerais, como de
variáveis de ambiente comuns a mais de uma parte, também devem ser mantidos
neste diretório, **mas não ficam no repositório remoto**, por motivos de
segurança.

### Rodando o projeto
Para rodar o projeto utilizando o Docker, primeiro é necessário tê-lo instalado
no computador. Também é necessário ter as permissões adequadas, dependendo do
sistema operacional, e para que o projeto rode corretamente, o arquivo .env deve
ser colocado no diretório raiz correspondente a esse repositório.

#### Windows
Para executar o projeto utilizando Docker Compose no Windows 10/11, é necessário
utilizar o WSL2. Do contrário, será necessário rodar cada container
separadamente, passando as configurações adequadas.

Siga as instruções do [site oficial](https://docs.docker.com/desktop/install/windows-install/#install-docker-desktop-on-windows).

#### Ubuntu
```bash
# apt update
# apt install docker.io docker-compose-v2 docker-buildx
```

#### Arch Linux / EndeavourOS
```bash
# pacman -S docker docker-buildx docker-compose
```

Para distribuições que utilizam `systemd`, use os comandos abaixo para fazer o
setup inicial.
```bash
# usermod -aG docker $(whoami)
# systemctl start --enable docker.service
$ chmod +x ./build_images.sh
$ ./build_images.sh
$ docker compose up
```

O outro arquivo bash, `rebuild_images`, pode ser utilizado para recriar as
imagens do zero com mais facilidade. Isso pode ser necessário durante o
desenvolvimento, especialmente porque o container de SGBD apenas executa os
scripts sql do repositório postgres ao ser criado, e não quando inicializado. 
