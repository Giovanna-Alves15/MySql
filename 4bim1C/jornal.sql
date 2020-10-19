-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Out-2020 às 20:49
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.5

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
-- Erro ao ler dados para tabela jornal.ano: #1064 - Você tem um erro de sintaxe no seu SQL próximo a 'FROM `jornal`.`ano`' na linha 1

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codcat` int(11) NOT NULL,
  `categoria` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codcat`, `categoria`) VALUES
(1, 'Esporte'),
(2, 'Entretenimento'),
(3, 'Politica'),
(4, 'Educação'),
(5, 'Ciência'),
(6, 'Saúde'),
(7, 'Infra Estrutura');

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
(30);

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
  `codnot` int(11) NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `noticia` text DEFAULT NULL,
  `codredator` int(11) DEFAULT NULL,
  `codcat` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codnot`, `titulo`, `noticia`, `codredator`, `codcat`, `dia`, `mes`, `ano`) VALUES
(1, 'Retorno às aulas presenciais na cidade de SP só deve ser definido após 10 de novembro, diz secretário de saúde', 'O retorno às aulas presenciais na cidade de São Paulo só deve ser definido após o dia 10 de novembro. Segundo o secretário municipal de Saúde, Edson Aparecido, a gestão municipal aguarda os resultados da testagem de professores, servidores e alunos das escolas municipais para tomar a decisão.\r\n\r\n\"A gente acredita que em até 40 dias concluiremos todo o censo. Fazer essa testagem em massa vai permitir o retorno seguro às aulas presenciais\", disse Aparecido em entrevista à GloboNews na manhã desta terça-feira (29).\r\n\r\n\"Não podemos fazer qualquer decisão dessa natureza [retomar as aulas presenciais] até no mínimo o início de novembro. [A espera] permite que a gente confirme os números do inquérito sorológico\", continuou.\r\n\r\nO secretário municipal da saúde argumentou que 18,4% das crianças da rede municipal confirmaram a doença, sendo 70% delas assintomáticas, enquanto a prevalência entre professores foi de apenas 7,2%.', 3, 4, 29, 9, 2020),
(2, 'Dengue\r\nA dengue é uma doença febril aguda sistêmica de origem viral. Nos últimos 50 anos, o número de casos de dengue no mundo tem aumentado dramaticamente.', 'A Organização Mundial da Saúde (OMS) estima que 4 bilhões de pessoas estejam vivendo em áreas com risco de infecção pela doença. Anualmente, 390 milhões de casos são registrados no mundo, dos quais 96 milhões se manifestam clinicamente. A dengue afeta 128 países e é considerada uma doença negligenciada pela OMS.\r\n\r\nNa região das Américas, a doença tem se disseminado com surtos cíclicos ocorrendo a cada 3/5 anos. No Brasil, a transmissão vem ocorrendo de forma continuada desde 1986 registrando o maior surto da doença em 2013, com aproximadamente 2 milhões de casos notificados.', 5, 6, 21, 1, 2018),
(3, 'Olimpíadas 2020 e a pandemia: o que se sabe sobre os Jogos de Tóquio', 'De acordo com o calendário feito antes da pandemia do coronavírus, as Olimpíadas 2020 já deveriam ter acabado. No entanto, nem chegaram a começar. O Comitê Olímpico Internacional (COI) definiu uma nova data em 2021, mas manteve o nome do evento como Tóquio-2020. Ainda assim, as incertezas sobre sua realização só aumentam.\r\n\r\nApesar dos esforços do COI e das autoridades japonesas para garantir que o evento aconteça da maneira mais segura possível, ainda há muitas perguntas sem resposta. Afinal, pela primeira vez na história, as Olimpíadas foram adiadas. A ficha parece não ter caído, e só vai cair quando houver uma definição mais clara sobre o controle da pandemia. Enquanto isso, veja o que já se sabe sobre os Jogos de Tóquio.', 2, 1, 16, 8, 2020),
(4, 'YOUTUBER DESTRÓI PLACA COMEMORATIVA DO SITE E GERA REVOLTA', 'Quando uma conta do YouTube atinge valores expressivos de inscritos, como 100 mil ou 1 milhão, o usuário recebe uma placa comemorativa do próprio site. Obviamente, o item se tornou um almejado troféu para os produtores de conteúdo em vídeo do serviço.\r\n\r\nO youtuber Aruan Felix, hoje com 778 mil inscritos, fez um vídeo em que destrói sua placa de 100 mil, fato que gerou revolta não só entre alguns de seus fãs, mas outros youtubers também fizeram comentários negativos.\r\n\r\nSegundo Aruan, sua atitude foi para “iniciar a jornada rumo ao 1 milhão de inscritos”. “Isso estava me prendendo a 100 mil pessoas”, disse ele no vídeo, que já está com 940 mil visualizações e 192 mil dislikes.\r\n\r\nVários outros youtubers chegaram a escrever comentários no próprio vídeo, mas foram deletados. “Errou feio, errou rude”, disse Davy Jones do GameplayRJ.\r\n\r\n“Posso estar com 10 milhões e já mais cortaria minha placa. Sem os 100 mil iniciais eu nunca teria os outros”, escreveu Rezende Evil no Twitter.\r\n\r\nJúlio Cocielo também se manifestou ao postar uma foto com sua placa: “Eu te amo plaquinha. Jamais vou te abrir no meio”.', 4, 2, 23, 12, 2015),
(5, 'Bolsonaro exalta parceria com Trump e diz: entrar na OCDE é firme propósito', 'O presidente Jair Bolsonaro discursou hoje na abertura do \"US Brazil Connect Summit\", evento realizado pela Câmara de Comércio Brasil-Estados Unidos, e frisou que a entrada no país na OCDE [Organização para a Cooperação e Desenvolvimento Econômico] é um \"firme propósito\" do governo brasileiro. \"(...) Para o qual temos muito nos empenhado, tanto em nível técnico quanto o político\", destacou o governante. Conhecida como o grupo dos países desenvolvidos, a OCDE tem como principal missão incentivar o progresso econômico e o comércio mundial. Atualmente, a instituição conta com 37 países-membros.', 1, 3, 19, 10, 2020),
(6, 'Cientistas afirmam que camada de ozônio está se recuperando\r\nRelatório das Nações Unidas apresenta melhores índices em 35 anos.\r\nGases estufa ajudam na recomposição, mas ampliam aquecimento global.', 'A frágil camada de ozônio que protege a Terra está começando a se recuperar, principalmente por causa da progressiva eliminação, desde a década de 80, de alguns elementos químicos de latas de refrigerantes e aerossol, informou um painel científico das Nações Unidas em uma rara notícia positiva sobre a saúde do planeta.\r\n\r\nCientistas disseram que o crescimento demonstra que a união mundial pode neutralizar o desenvolvimento de uma crise ecológica.\r\n\r\nPela primeira vez em 35 anos, cientistas foram capazes de confirmar um aumento estatístico significativo e sustentado no ozônio estratosférico, que nos protege da radiação solar que causa câncer de pele, danos à agricultura e outros problemas.', 3, 5, 10, 9, 2014),
(7, '\r\nA nova era do aço: exportações devem impulsionar siderurgia em 2021\r\n', 'Fazia um calor intenso na manhã de 26 de agosto, uma quarta-feira, quando o presidente Jair Bolsonaro (sem partido) e outros figurões do governo surgiram na cerimônia de retomada das atividades do alto-forno 1 na usina de Ipatinga da Usiminas, em solo mineiro. Acompanhavam o presidente da República, membros da alta cúpula da política nacional e do estado de Minas Gerais, como o governador Romeu Zema (Novo), além de executivos da companhia siderúrgica. O equipamento tem capacidade de produzir cerca de 2.000 toneladas diárias de ferro gusa. Com a pandemia do novo coronavírus, a economia mundial travou em meados de março. O fechamento de fábricas e a retração do consumo em todo o mundo fizeram com que a produção da matéria-prima primordial para a construção civil e para a indústria, presente em automóveis e eletrodomésticos, ficasse estagnada e a capacidade ociosa disparasse.\r\n\r\nDesde 2015, a utilização da capacidade nas siderúrgicas nacionais não passa de 70%. Com a Covid-19, os índices caíram para menos de 50%. A despeito do cenário nebuloso, ainda existe um grande espaço para ser ocupado. Para isso, a retomada econômica é de suma importância. A conjuntura macroeconômica atual, em que pesa a taxa básica de juros, a Selic ao menor nível histórico e o dólar valorizado frente ao real, sinaliza novos tempos para a indústria nacional, sobretudo para as exportadoras. Soma-se, ainda, a disparada nos preços do minério de ferro, o que faz reacender as chamas de um futuro promissor para este mercado. “O atual dinamismo do setor imobiliário e dos preços relativos como câmbio devem estimular a indústria siderúrgica nacional, especialmente se a demanda global ajudar”, projeta o engenheiro e doutor em economia Joaquim Levy, ex-ministro da Fazenda e atual diretor de estratégia econômica e relações com mercados do banco Safra. \r\n', 4, 7, 16, 9, 2020),
(8, 'Estudantes que já tiveram coronavírus devem ser primeiros a voltar às aulas nas escolas de SP', 'Os alunos que já foram infectados pelo novo coronavírus devem ser os primeiros a voltar para as escolas públicas e particulares da cidade de São Paulo ainda neste ano. A retomada das aulas na cidade será gradual.\r\n\r\nO anúncio oficial do retorno das aulas presenciais no município será feito no dia 22 de outubro pelo prefeito Bruno Covas (PSBD) e as aulas devem ser retomadas em 3 de novembro.\r\n\r\nA decisão será anunciada após o resultado da primeira etapa do censo sorológico da rede municipal de ensino, realizada com até 183 mil alunos e professores do Ensino Médio, e do terceiro e nono ano do Ensino Fundamental.\r\n\r\n\"É evidente que quem a gente testar positivamente, e estiver imune, fica mais fácil de você ter um retorno gradual e seguro tanto para os alunos quanto para os professores\", afirmou o secretário municipal de Saúde, Edson Aparecido, nesta sexta-feira (16).\r\n\r\nA suposta imunidade, que não foi confirmada pela ciência, já que há casos de reinfecção, poderia proporcionar um retorno mais tranquilo tanto para os alunos como para os professores que não pegariam e nem transmitiriam a doença.', 2, 4, 16, 10, 2020),
(9, 'Chuva de meteoros terá pico nesta semana e será visível do Brasil', 'Uma chuva de meteoros de média intensidade denominada Orionídeos terá seu pico nesta quarta-feira (21). O fenômeno poderá ser visto a olho nu pelos brasileiros, dependendo das condições climáticas.\r\n\r\nPopularmente conhecida como \"estrela cadente\", a chuva de meteoros consiste na passagem meteoroides pela atmosfera terrestre – que, por sua vez, são fragmentos de cometas ou asteroides que se desprendem desses corpos celestes e ficam vagando pelo espaço, em órbitas em torno do Sol.', 5, 5, 19, 10, 2020),
(10, 'Alemanha 7 x 1 Brasil na Copa de 2014: gols, escalações e tudo sobre a semifinal no Mineirão', 'Relembre a derrota histórica sofrida pela seleção brasileira para a Alemanha na Copa do Mundo de 2014\r\nNo próximo domingo (31), os torcedores do Brasil terão motivo para comemorar. o SporTV anunciou a reprise da semifinal da Copa do Mundo de 2014, quando a seleção brasileira foi goleada pela Alemanha por 7 a 1, em pleno Mineirão, em Belo Horizonte.', 1, 1, 8, 7, 2014);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codredator` int(11) NOT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `sobrenome` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `cidade` varchar(200) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `codturma` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codredator`, `nome`, `sobrenome`, `email`, `ddd`, `cidade`, `telefone`, `codturma`, `dia`, `mes`, `ano`) VALUES
(1, 'Juliana', 'Gomes', 'juliana.go@gmail.com', 11, 'Ribeirão Pires', '45358566', 4, 12, 10, 2003),
(2, 'Giordana', 'Gonçalves', 'gio.alves@gmali.com', 11, 'Maúa', '45633245', 9, 19, 5, 2001),
(3, 'Luiza', 'Moura', 'luiza.moura@gmail.com', 11, 'São Bernardo do campo', '66555486', 6, 28, 4, 1998),
(4, 'Julio', 'Filho', 'julio.filho@gmail.com', 11, 'Diadema', '33335555', 3, 2, 1, 2005),
(5, 'Murilo', 'Santos', 'murilo.santos@gmail.com', 11, 'Rio Grande da Serra', '99999555', 8, 11, 12, 1994);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codturma` int(11) NOT NULL,
  `turma` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codturma`, `turma`) VALUES
(1, '1A'),
(2, '1B'),
(3, '1C'),
(4, '2A'),
(5, '2B'),
(6, '2C'),
(7, '3A'),
(8, '3B'),
(9, '3C');

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
  ADD PRIMARY KEY (`codcat`);

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
  ADD PRIMARY KEY (`codnot`),
  ADD KEY `codredator` (`codredator`),
  ADD KEY `codcat` (`codcat`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codredator`),
  ADD KEY `codturma` (`codturma`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codturma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codcat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codnot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `codredator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codturma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codredator`) REFERENCES `redator` (`codredator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codcat`) REFERENCES `categoria` (`codcat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codturma`) REFERENCES `turma` (`codturma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
