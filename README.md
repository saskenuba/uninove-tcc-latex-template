Este modelo é uma extenção da suíte ABNTEX2, para se adequar ao modelo de TCC da Universidade Nove de Julho, que infelizmente não atende as normas da ABNT em diversos aspectos.

## Instruções de Instalação

### Ambiente Linux

* Pacote de fonte do Windows contendo a fonte **Times New Roman**.

Utilizando o gerenciador de pacotes de sua distribuição, basta baixar o pacote de fontes do Windows.
Um exemplo é na distribuição Arch, localizado nos repositórios da comunidade, utilizando o wrapper do pacman, yay:

```
yay ttf-ms-font
```

Ou no Ubuntu 18.04 LTS desktop

```
sudo apt install ttf-mscorefonts-installer
```

* [Suíte ABNTEX2](https://www.abntex.net.br)

A suíte ABNTEX2 vem por padrão na instalão do TexLive


Para uma instalação completa no Ubuntu 18.04 LTS desktop
```
sudo apt-get install texlive-full
```

Para instalar somente os pacotes necessários para o ABNTEX2 funcionar basta executar o seguinte comando:
```
apt-get install texlive-publishers texlive-lang-portuguese texlive-latex-extra texlive-fonts-recommended
```

### Ambiente Windows

Em construção..
