-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Out-2020 às 21:15
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jornal`
--
CREATE DATABASE IF NOT EXISTS `jornal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jornal`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1950),
(1951),
(1952),
(1953),
(1954),
(1955),
(1956),
(1957),
(1958),
(1959),
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codCategoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codCategoria`, `categoria`) VALUES
(1, 'Esporte'),
(2, 'Culinária'),
(3, 'Botânica'),
(4, 'Vida Animal'),
(5, 'Piadas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `noticia` text DEFAULT NULL,
  `codNoticia` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `codCategoria` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `codRedator` int(11) DEFAULT NULL,
  `fonte` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`noticia`, `codNoticia`, `titulo`, `codCategoria`, `dia`, `mes`, `ano`, `codRedator`, `fonte`) VALUES
('Se você faz parte do imenso grupo de pessoas que adora ver vídeos e fotos de animaizinhos, temos uma boa notícia: este hábito faz bem para a sua saúde!\r\n\r\nUm estudo da Universidade de Leeds, na Inglaterra, concluiu que olhar animais fofos ajuda a reduzir significativamente o nível de stress em humanos. E, segundo os pesquisadores, não precisamos estar ao vivo com os bichos, observar fotos e vídeos também traz um efeito positivo.\r\n\r\nA pesquisa explorou as reações fisiológicas e psicológicas de pessoas sob o impacto de imagens “fofas” de animais, usando estudantes e funcionários da universidade como cobaias.\r\n\r\nSeguindo um roteiro, 19 participantes assistiam a uma apresentação de 30 minutos com imagens e vídeos curtos de diversos animais. Entre os participantes, 15 eram estudantes que teriam uma prova 90 minutos depois de assistirem à apresentação e 4 eram funcionários da universidade que se declararam estressados no trabalho.\r\n\r\nMENOS ANSIEDADE E PRESSÃO ALTA\r\n\r\nOs batimentos cardíacos de todos os participantes caíram depois de ver as imagens dos animais. A pressão sanguínea também caiu em todos os participantes, de uma media de 13/9 para 11/7, o que colocou o grupo dentro da média ideal de pressão sanguínea.\r\n\r\nOs participantes também responderam a um questionário de 20 perguntas para que os pesquisadores pudessem avaliar a sua taxa de ansiedade dentro de critérios pré-estabelecidos por uma metodologia científica.\r\n\r\nEm alguns casos individuais, a taxa de ansiedade caiu pela metade, provando que as imagens serviram como um poderoso alívio para o stress e estimulante para o bom humor. Entre todas as avaliações, a taxa de ansiedade caiu em algum nível.\r\n\r\nIMAGENS OU BICHINHOS AO VIVO?\r\n\r\n“Os vídeos têm um impacto maior do que as imagens estáticas, e acredito que ver esses animais ao vivo tenha um efeito ainda maior”, conta Andrea Utley, cientista que liderou o estudo.\r\n\r\nMais 8 sessões com apresentações de animaizinhos estavam programadas para concluir o estudo, mas elas tiveram que ser adiadas pela pandemia. Andrea está agora buscando realizar a pesquisa de forma online para levantar mais dados sobre o impacto das imagens em pessoas.\r\n\r\nMAIS FOCO E CONCENTRAÇÃO\r\n\r\nUm outro estudo, desta vez da Uiversidade de Hiroshima, no Japão, descobriu que olhar para animais bonitinhos tem um efeito poderoso na nossa capacidade de foco e concentração.\r\n\r\nLiderado pelo pesquisador Hiroshi Nittono e sua equipe, o estudo envolveu experiências com 132 estudantes da universidade e concluiu que houve um aumento na performance estudantil e em atividades detalhistas que precisam de maior concentração.\r\n\r\nEstudantes que olharam para fotos de filhotes de animais tiveram um desempenho melhor nas avaliações propostas do que aqueles que olharam para imagens neutras ou de animais já adultos.\r\n\r\n“Os resultados comprovam que as imagens de filhotes de animais tiveram um impacto positive no desempenho de atividades que demandam concentração e cuidado, possivelmente por estreitar o foco de atenção”, diz o estudo.\r\n\r\nOs cientistas sugerem que os nossos instintos acolhedores estão por trás deste impacto. Filhotes que precisam da nossa atenção e cuidados para estarem seguros e bem cuidados, despertam a nossa capacidade de conexão com o mundo externo.\r\n\r\n“O estudo traz evidências de que a ´fofura´ dos filhotes desperta efeitos cognitivos e comportamentais imediatos, que vão além do encantamento ou interação social”, conclui Hiroshi Nittono.', 1, 'Pesquisas Concluem: Olhar Filhotes Faz Bem Para A Saúde!', 4, 4, 4, 2012, 5, 'https://jornaldeboasnoticias.com.br/pesquisas-concluem-olhar-filhotes-faz-bem-para-a-saude/'),
('A versão 2021 do PES Mobile chegou aos celulares iOS e Android na última sexta-feira apenas como um Season Update, mantendo a base do PES 2020 Mobile e somente atualizando informações sobre jogadores, times e uniformes, além de corrigir alguns erros.\r\n\r\nPor conta disso, os dados da versão 2020 do PES Mobile poderão ser transferidos para o PES 2021 no momento em que o usuário fizer o login no game, oferecendo uma continuidade à experiência do simulador de futebol para celulares.\r\n\r\nCOMO TRANSFERIR DADOS PARA PES 2021\r\n\r\nHá duas opções disponíveis para transferir os dados do PES 2020 Mobile para a versão 2021 do jogo: usando a conta Google Play ou usando uma KONAMI ID – dependendo de qual delas você usou para linkar seus dados no PES 2020. Caso a transferência seja feita entre sistemas operacionais diferentes, será necessário usar uma KONAMI ID.\r\n\r\nConfira o passo a passo da transferência de dados nessas duas opções:\r\n\r\n - Passo 1: Abra o PES 2021 no seu celular.\r\n - Passo 2: Entre em “Transferir dados”.\r\n - Passo 3: Para fazer a transferência usando a conta Google Play, certifique-se de que você já está logado no Google Play Games com mesma conta com a qual você estava linkado no PES 2020 Mobile. Ao selecionar essa opção, a transferência será realizada.\r\n - Passo 4: Para fazer a transferência usando Konami ID, selecione essa opção e clique em “Usuários que registraram o e-mail com outro app da Konami”.\r\n - Passo 5: Entre com seu e-mail ou ID e insira a sua senha. A transferência será concluída e você retornará ao PES 2021 Mobile.\r\n\r\nDADOS TRANSFERIDOS\r\n\r\nTodas as duas moedas myClub, todo o GP e o seu time base do PES 2020 – caso ele esteja disponível no PES 2021 – serão transferidos para a nova versão do game para celulares. Caso o seu time base não esteja disponível no PES 2021 Mobile, será preciso escolher um novo – agora com o nome de “Equipe Modelo” – entre os liberados no momento do login.\r\n\r\nJá todos os jogadores básicos e jogadores em destaque que você tinha no PES 2020 serão transformados automaticamente em jogadores transferidos no PES 2021. Todos os jogadores transferidos que você obteve na atualização para o PES 2020 também continuarão com essa designação depois da nova atualização.\r\n\r\nAparência, posições, habilidades, técnicas, táticas e outras características do atleta podem ser atualizadas, assim como sua pontuação geral, de acordo com a atual versão dele de jogador básico.\r\n\r\nCaso algum desses jogadores do PES 2020 não estejam disponíveis no PES 2021, eles serão trocados por um jogador básico aleatório de mesma raridade (cor da bola) e posição. Caso um jogador básico de mesma raridade e posição não esteja disponível, a troca será feira por outro jogador básico de mesma raridade – sendo todos os jogadores obtidos por essa mecânica de troca limitados aos atletas disponíveis no PES 2021 no momento do lançamento.\r\n\r\n', 2, 'PES 2021 Mobile: guia de transferência para usuários do PES 2020', 1, 5, 10, 2020, 3, 'https://globoesporte.globo.com/esports/pes/noticia/pes-2021-mobile-guia-de-transferencia-para-usuarios-do-pes-2020.ghtml'),
('Prezados associados,\r\n\r\nEm face do Projeto de Lei nº 529/2020 que, para equilíbrio de contas públicas, prevê a reestruturação administrativa da Secretaria de Infraestrutura e Meio Ambiente e órgão vinculados, extinguindo o Instituto Florestal e unificando-o aos Instituto de Botânica e Instituto Geológico, formando assim um único Instituto de Biodiversidade e Meio Ambiente, a SBB enviou em 14 de agosto de 2020, manifestação de apoio a esses institutos, incluindo a preocupação com seus acervos, agenda ambiental e futuro de seus pesquisadores.\r\n\r\nEm 9 de setembro de 2020, recebemos carta-resposta do gabinete do governador de São Paulo, a qual disponibilizamos aos associados para conhecimento.', 3, 'Apoio da SBB aos institutos da Secretaria de Infraestrutura e Meio Ambiente de SP', 3, 4, 4, 2018, 2, 'https://www.botanica.org.br/noticias/apoio-da-sbb-aos-institutos-da-secretaria-de-infraestrutura-e-meio-ambiente-de-sp/'),
('O pastel é uma das comidas brasileiras favoritas. Seja o da feira perto de casa ou a versão feita em casa, o pastel é uma ótima receita para acompanhar um bom futebol, uma resenha com os amigos, um jantar diferente. Não tem hora para aproveitá-lo! Agora, para você que não está podendo muito com a fritura, que tal se render a essa receita de pastelzinho assado com 3 queijos?\r\n\r\nA massa é muito fácil de se fazer e o resultado é uma mistura de crocância e muito queijo! Aprenda agora mesmo a fazer esse pastelzinho assado com 3 queijos e surpreenda à todos! Demora 1h30m para ficar pronta e rende até 25 unidades.\r\n\r\nINGREDIENTES PARA O PASTEL DE QUEIJO\r\n\r\n - 1 xícara (chá) de manteiga derretida\r\n - 1 ovo\r\n - 1 colher (chá) de sal\r\n - 1 xícara (chá) de requeijão tipo Catupiry®\r\n - 3 xícaras (chá) de farinha de trigo\r\n - Margarina e farinha de trigo para untar\r\n - 1 ovo para pincelar\r\n\r\nRECHEIO\r\n\r\n - 1/2 xícara (chá) de requeijão tipo Catupiry®\r\n - 1/2 xícara (chá) de queijo mussarela ralado\r\n - 1/2 xícara (chá) de ricota amassada\r\n - 1 colher (sopa) de orégano seco', 4, 'Receita fácil e deliciosa de pastelzinho assado com 3 queijos', 2, 10, 5, 2017, 4, 'https://www.midiamax.com.br/midiamais/culinaria/2020/receita-facil-e-deliciosa-de-pastelzinho-assado-com-3-queijos'),
('Atuando na Neo Química Arena, o Corinthians foi atropelado pelo Flamengo ontem por 5 a 1, resultado que consolida a maior derrota do clube paulista dentro da sua nova casa. E se dizem que a internet não perdoa, o Timão viu isso de perto ao ser alvo de zoeiras dos rivais.\r\n\r\nFlamenguistas e torcedores dos rivais do Corinthians aproveitaram a má fase do time de Vágner Mancini no Brasileirão para provocar os alvinegros após a partida.', 5, 'Goleada do Flamengo sobre Corinthians gera memes e piadas: \"Cincum?\"', 5, 16, 8, 2011, 1, 'https://www.uol.com.br/esporte/futebol/ultimas-noticias/2020/10/19/goleada-do-flamengo-sobre-corinthians-gera-memes-e-piadas-cincum.htm'),
('O presidente dos Estados Unidos, Donald Trump, compartilhou hoje uma matéria falsa de um site satírico sobre a queda proposital do Twitter como forma de conter a propagação de notícias negativas relacionadas a seu rival democrata, Joe Biden, aparentemente sem saber que se tratava de uma piada.\r\n\r\nTrump, que costuma criticar as fake news ao mesmo tempo em que espalha informações equivocadas para seus 87 milhões de seguidores, tuitou um link para a matéria intitulada: \"Twitter desliga toda sua rede para diminuir a disseminação de notícias negativas sobre Biden\".\r\n\r\n\"Isso nunca aconteceu antes na história\", escreveu Trump no Twitter. E ele está certo porque o Twitter nunca fez isso.', 6, 'Trump compartilha piada de site satírico sobre apoio do Twitter a Biden.', 5, 29, 5, 2019, 5, 'https://noticias.uol.com.br/ultimas-noticias/afp/2020/10/16/trump-compartilha-materia-falsa-sobre-apoio-do-twitter-a-biden.htm'),
('Paleontologistas da Universidade de Southampton acreditam que quatro ossos encontrados no ano passado na Ilha de Wight, na costa sul da Inglaterra, pertencem a uma nova espécie de dinossauro terópode. Os ossos foram descobertos em uma praia chamada Shanklin.\r\n\r\nTerremoto bumerangue: o enigmático fenômeno detectado no fundo do mar que dá pistas sobre como seria na superfície\r\n\r\nPor que o céu fica vermelho às vezes?\r\n\r\nO que aconteceria com a Terra se os humanos desaparecessem\r\n\r\nFoi denominado Vectaerovenator inopinatus e pertence ao grupo de dinossauros que inclui o Tyrannosaurus rex e os pássaros modernos.\r\n\r\nO nome se refere aos grandes espaços de ar encontrados em alguns dos ossos — do pescoço, costas e cauda da criatura — que é uma das características que ajudaram os cientistas a identificarem suas origens terópodes.\r\n\r\nEsses sacos de ar, também vistos em pássaros modernos, eram extensões do pulmão, e é provável que \"ajudassem a alimentar um sistema respiratório eficiente, ao mesmo tempo que tornavam o esqueleto mais leve\", segundo a Universidade de Southampton.\r\n\r\nOs fósseis foram encontrados em três descobertas distintas em 2019 e entregues ao Museu dos Dinossauros na ilha, em Sandown, onde estão sendo exibidos.\r\n\r\nRobin Ward, um \"caçador\" de fósseis de Stratford-upon-Avon, cidade onde Shakespeare nasceu, estava visitando a Ilha de Wight com sua família quando fizeram a descoberta.\r\n\r\n\"A alegria de encontrar os ossos foi absolutamente fantástica\", disse ele.\r\n\r\nJames Lockyer, de Spalding, Lincolnshire, no leste da Inglaterra, também estava visitando a ilha quando encontrou outro osso.\r\n\r\n\"Parecia diferente das vértebras de répteis marinhos que encontrei no passado\", disse ele.\r\n\r\n\"Eu estava procurando em um lugar em Shanklin onde me haviam dito - e eu havia lido - que não encontraria muito lá.\"\r\n\r\n\"No entanto, sempre procuro as áreas onde os outros não procuram e, nesta ocasião, valeu a pena.\"\r\n\r\nPaul Farrell, de Ryde, cidade da própria Ilha de Wight, também encontrou um osso: \"Eu estava caminhando na praia, chutando pedras e me deparei com o que parecia um osso de um dinossauro\".\r\n\r\n\"Fiquei realmente chocado ao descobrir que poderia ser uma nova espécie.\"\r\n\r\n\"Esqueleto delicado\"\r\nChris Barker, que liderou o estudo da Universidade de Southampton, disse que os cientistas ficaram \"impressionados com o quão \'vazio\' este animal era\". \"Ele era repleto de espaços aéreos.\"\r\n\r\n\"Partes de seu esqueleto devem ter sido bastante delicadas.\"\r\n\r\n\"O registro de dinossauros terópodes do período \'médio\' do Cretáceo na Europa não é tão bom, então tem sido realmente emocionante ser capaz de aumentar nossa compreensão da diversidade das espécies de dinossauros dessa época.\"\r\n\r\n\"Você não costuma encontrar dinossauros nos depósitos de Shanklin, pois eles foram depositados em um habitat marinho. É muito mais provável que você encontre ostras fósseis ou madeira, então este é um achado raro.\"\r\n\r\nÉ provável que o Vectaerovenator vivesse em uma área logo ao norte de onde seus restos foram encontrados, com a carcaça tendo sido levada para o mar raso próximo.\r\n\r\nAs descobertas da universidade devem ser publicadas na revista Papers in Palaeontology, com os que acharam os fósseis como coautores.', 7, 'Novo dinossauro \'primo\' do Tiranossauro Rex é descoberto em ilha britânica\r\n\r\nQuatro ossos encontrados em uma praia na Ilha de Wight, no Reino Unido, pertenciam a uma nova espécie de dinossauro terópode, segundo um estudo.', 4, 19, 10, 2020, 4, 'https://www.terra.com.br/noticias/mundo/europa/novo-dinossauro-primo-do-tiranossauro-rex-e-descoberto-em-ilha-britanica,cbc85e08cf5a6ec3a7290529ea20b043f0rfyqfw.html'),
('Aguardado ansiosamente todos os anos por uma legião de fotógrafos, o exuberante Príncipe (ou Verão) chegou ao nosso Jardim Botânico!\r\n\r\nTrata-se de uma ave migratória rara, que chega fugindo do frio e fica por aqui até outubro para usufruir do calor e de boa comida. Com roupagem vermelha e preta, é difícil esquecer sua visão.\r\n\r\nNão é todo dia que um príncipe se mostra, por isso a ansiedade em ver essa ave tão pequenina. Há alguns anos foi flagrado no Jardim das Oliveiras e esta semana na Restinga.\r\n\r\nNosso luxuoso jardim tropical tem tudo para recepcionar um Príncipe. Esperamos que ele volte sempre e se sinta em casa!', 8, 'Pássaro raro aterrissa no Jardim Botânico', 3, 31, 7, 2015, 3, 'https://www.amigosjb.org.br/noticias-aajb/principe-no-jardim-botanico/'),
('As máquinas já substituíram trabalhadores humanos em diversas funções na indústria e na agricultura. Agora, elas vão conseguir emprego também nas lanchonetes. Flippy, o robô-chapeiro, consegue fritar até 150 hambúrgueres por hora, virando todos no tempo certo. Além disso, ele pode trabalhar sem parar, nunca fica doente e seu custo de funcionamento é menor do que o salário de uma pessoa.\r\n\r\nCom esses atributos, Flippy teria lugar cativo nos famosos quadros de funcionário do mês que existem em todo fast food. Esse fato é uma observação interessante, pois tudo indica que ele não vai roubar o emprego de ninguém. Com a grande oferta de empregos nos Estados Unidos, cada vez menos jovens estão dispostos a ficar horas em frente a uma chapa quente virando hambúrguer e ainda receber um salário baixo. Quando alguém aceita uma vaga dessa, logo muda de emprego porque achou outro melhor. Flippy, em compensação, cumpre a função de chapeiro com maestria e sem reclamar.\r\n\r\nO robô já está trabalhando na Califórnia!!\r\n\r\nCriado pela empresa de tecnologia Miso Robotics, Flippy não apenas faz hambúrgueres como também frita batatinhas. Ele funciona como um braço robótico que manipula as ferramentas de forma semelhante a um humano.\r\n\r\nEle apresenta uma série de sensores de temperatura, além de câmeras que o permitem observar exatamente quando o burguer ou a batata estão no ponto. Quando tudo está pronto, Flippy raspa a chapa, limpa suas ferramentas e se prepara para começar tudo de novo. Os humanos só precisam colocar o ingrediente no lugar para o robô iniciar seu processo.\r\n\r\nDesde o primeiro projeto, em 2016, o robô evoluiu bastante: incorporou novas funções e tornou-se muito mais barato em sua produção. De US$ 100 mil, o custo por unidade caiu para US$ 10 mil. Com isso, o robô já está ganhando seu espaço nas cozinhas, principalmente em estados como a Califórnia, onde os custos trabalhistas são altos, e poucas pessoas querem trabalhar em fast food.\r\n\r\nA rede CaliBurguer já tem vários robôs Flippy trabalhando na preparação de alimentos. A lanchonete do estádio dos Dodgers, time de baseball de Los Angeles, também está. Em breve, a Miso Robotics irá apresentar uma versão ainda mais barata do Flippy e, com investimentos de mais de US$ 13 milhões, promete chegar a mais cozinhas  em todos os EUA. Será que essa novidade também chega ao Brasil?', 9, 'Conheça Flippy, o robô-chapeiro que faz 150 hambúrgueres por hora.', 2, 28, 10, 2019, 2, 'https://www.tecmundo.com.br/produto/151040-conheca-flippy-robo-chapeiro-150-hamburgueres-hora.htm'),
('O Brasil retornou ao pódio da etapa de Ljubljana, na Eslovênia, da Copa do Mundo de Canoagem Slalom. Depois de Pedro Gonçalves, o Pepê, levar o ouro no K1 Extremo e o bronze no K1 (caiaque individual, prova olímpica) no sábado, Ana Sátila conquistou o título inédito no C1 (canoa individual) neste domingo, prova que vai fazer sua estreia nos Jogos Olímpicos de Tóquio em 2021.\r\n\r\nAna Sátila completou a prova em 93s64, ainda teve um toque na baliza sete, mesmo assim foi dominante e obteve vantagem de 1s73 segundos para a segunda colocada, a francesa Lucie Prioux. A medalha de bronze foi para a americana Evy Leibfarth. A brasileira, assim, se recuperou do tropeço na prova do K1 no sábado, quando perdeu uma porta, recebeu uma penalidade de 50 segundos e terminou em nono lugar.\r\n\r\n\"Estou muito contente com o resultado. Sair daqui com uma medalha de ouro é muito importante pra mim. No sábado eu tinha competido pelo K1 e perdi a ultima baliza, superei o erro e coloquei forças para buscar esse ouro. As medalhas do Pepe também me inspiraram para conquistar essa hoje\", festejou Ana Sátila.\r\n\r\nFoi o primeiro ouro de Ana Sátila em uma prova olímpica em etapas da Copa do Mundo e a quinta medalha no total. Ela já tinha conquistados duas pratas no K1 e dois bronzes no C1.\r\n\r\nAlém de Pepe e Ana Sátila, Felipe Borges e Mathieu Desnos representaram o Brasil no evento. Ambos não disputaram as finais Borges competiu também nesse domingo e ficou em 12º lugar pelo C1 (canoa individual). Já Desnos disputou o K1 no sábado e finalizou a prova no 17º lugar.\r\n\r\nO próximo compromisso para os atletas da seleção brasileira de canoagem slalom será a segunda etapa da Copa do Mundo, de 6 a 8 de novembro, disputada em Pau, na França, onde foi realizado o Mundial de 2017.\r\n\r\nOs canoístas estão há praticamente um mês no continente europeu. Eles integram a Missão Europa, programa do Comitê Olímpico Brasileiro (COB) que levou atletas brasileiros de diversas modalidades para o Velho Continente para garantir a continuidade de treinos e competições.\r\n\r\nTACEN ENTRA PARA A HISTÓRIA DA CANOAGEM BRASILEIRA\r\n\r\nAlém do ouro da Ana Sátila pelo C1, Pedro Gonçalves garantiu duas medalhas para o Brasil, um ouro no K1 Extremo e uma medalha de bronze pelo K1 (caiaque individual). No K1, modalidade que o Pepe irá disputar nos Jogos Olímpicos Tóquio 2020 ele fez a descida mais rápida da prova, mas na penúltima baliza ele teve um toque, com isso seu tempo teve um acréscimo de 2 segundos por causa da penalidade e ficou com o bronze. Quem garantiu a medalha de ouro foi o atleta sueco Isak Ohrstrom, já o esloveno Peter Kauzer ficou com a prata.\r\n\r\nJá pelo K1 Extremo, ele fez bonito, nessa prova onde há a disputa remada a remada com quatro atletas na água ele foi insuperável, ele ficou na dianteira dos atletas Martin Stanovky do Cazaquistão que garantiu a prata e Tren Long dos Estados Unidos que ficou com o bronze. Pepe em 2019 foi eleito o melhor atleta do mundo na modalidade.', 10, 'Ana Sátila conquista ouro inédito em etapa da Copa do Mundo de Canoagem Slalom', 1, 18, 10, 2020, 1, 'https://www.df.superesportes.com.br/app/1,13/2020/10/18/noticia_maisesportes,3867458/ana-satila-conquista-ouro-inedito-em-etapa-da-copa-do-mundo-de-canoage.shtml');

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `nome` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `codRedator` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `telefone` varchar(150) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`nome`, `sobrenome`, `codRedator`, `email`, `ddd`, `telefone`, `cidade`, `mes`, `ano`, `dia`, `codTurma`) VALUES
('Fernando', 'Telles', 1, 'Telles@gmail.com', 11, '91455-1657', 'Ribeirão Pires', 6, 2002, 11, 6),
('José', 'Felix', 2, 'Josefinho@uol.com.br', 11, '99155-4098', 'santo André - Paranapiacapa', 12, 1996, 18, 4),
('Vilde', 'Doriana', 3, 'Doriri@gmail.com', 11, '99887-7645', 'Suzano', 6, 1979, 13, 1),
('Hélio', 'Periódico', 4, 'gasnobre@gmail.com', 11, '94587-9321', 'Mauá', 1, 1999, 8, 3),
('Cobalto', 'Periódico', 5, 'metalCo@gmail.com', 11, '94587-9856', 'Mauá', 1, 1999, 8, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`) VALUES
(1, '1ºA'),
(2, '1ºB'),
(3, '2ºA'),
(4, '2ºB'),
(5, '3ºA'),
(6, '3ºB');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codCategoria`);

--
-- Índices para tabela `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Índices para tabela `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codNoticia`),
  ADD KEY `codCategoria` (`codCategoria`),
  ADD KEY `codRedator` (`codRedator`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`),
  ADD KEY `dia` (`dia`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codRedator`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`),
  ADD KEY `dia` (`dia`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `codRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`codCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codRedator`) REFERENCES `redator` (`codRedator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
