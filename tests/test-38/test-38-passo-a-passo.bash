TESTE INSTALACÃO METAMAP

------------------------------------------------------------------------
## Test 38 - 20-07-2021 inicio em 15:39h até xx:05## 
## sem sucesso ##

No teste 36 criou as duas bases pt, no 37 nao foi

-- requiriments --
$	date
$	cd public_mm/data/dfbuilder/2021
$	ln -s ../2016/* .

nova versao dfb 2021 arquivo "filter_mrconso" está diferente, nao alterei nada por enquanto

No arquivo "/public_mm/bin/builddatafiles.sh" trocar a linha 498 para 
	echo "# NOTE: MODELOPTION is currently not supported in filter_mrconso and mm_variants" >> $WORKSPACE/dfbuilder.profile
ou ainda pode-se remover a linha ou ainda colocar # no início da linha
	 			## alterado

Altere a linha 7 do public_mm/bin/BuildDatafiles para:
	/bin/bash ${BASEDIR}/bin/builddatafiles.sh $*
	atualizei tbm a primeira linha para #!/bin/bash

LEXICON_VERSION = 2020 ????

---- INICIA O PASSO A PASSO -----
1 - Criar arquivo de log para estas execuções e saídas e gerar prints em outro word
bash | tee log_test39b.txt
$	date

2 - Verificar se a variável do LVG está criada
$	printenv | grep LVG_2016

3 - Verificar diretórios
$	cd Metamap-2021/
$	ls -lia
$	cd DUMLS/
$	ls -lia
$	cd ../public_mm/
	## Nao entendi por que tem o arquivo "01CreateWorkFiles" aqui
$	ls -lia
$	cd data/dfbuilder/2021/
$	ls -lia
$ 	cd ../../../DB
$	ls -lia
$	cd ../sourceData
$	ls -lia
$	cd UMLS_PORTUGUES
$	ls -lia
$ 	cd umls
$	ls -lia
	## tem o mesh aqui tbm?

4 - Excluir as bases geradas em /home/lperciliano/Metamap-2021/public_mm/DB/
ls -lia
rm -rf "DB.UMLS_PORTUGUES.2020AA.base" "DB.USAbase.2020AA.base" "DB.USAbase.2020AA.strict"

Excluir os lixos (diretórios e arquivo) do endereço abaixo:

5 - Excluir diretórios do /public_mm/sourceData/UMLS_PORTUGUES/
ls -lia
rm -rf "01metawordindex" "02treecodes" "03variants" "04synonyms" "05abbrAcronyms" "dfbuilder.profile"
		
Se rodar anteriormente ok demora alguns minutos para excluir
$	date

6 - no diretório /public_mm/sourceData/UMLS_PORTUGUES/umls 	gerar MRCONSO.mesh com o comando abaixo:
$	gawk -F\| '$12 == "MSH" { print $0 }' MRCONSO.RRF > MRCONSO.mesh
	Caso já tenha apagar e gerar novamente com o comando acima

7 - 
$	cd Metamap-2021/public_mm
6 -
$	./bin/skrmedpostctl start
7 - 
$	./bin/BuildDataFiles
8 - UMLS_PORTUGUES 				e digite enter
9 - na pergunta: Workspace will be placed in /home/lperciliano/Metamap-2021/public_mm/sourceData/UMLS_PORTUGUES, is this okay?
	digitar yes e enter

10 - Na pergunta:
MetaMap Data Sets: 1) /home/lperciliano/Metamap-2021/public_mm/DB/DB.USAbase.2020AA.strict
Use which Data Set directory? [default: 1) /home/lperciliano/Metamap-2021/public_mm/DB/DB.USAbase.2020AA.strict] - usar o default:
	dá enter ????? Aqui tem colocar o meu?
	
12 - Na pergunta: 
MetaMap Lexicons: 1) /home/lperciliano/Metamap-2021/public_mm/lexicon/data/lexiconStatic2020
Use which Lexicon file? [default: 1) /home/lperciliano/Metamap-2021/public_mm/lexicon/data/lexiconStatic2020]
use o default: digite enter 

13 - Na pergunta: 
1) /home/lperciliano/Metamap-2021/public_mm/data/dfbuilder/2021
Use which dfbuilder resource directory? [default: 1) /home/lperciliano/Metamap-2021/public_mm/data/dfbuilder/2021]
Escolha dfbuilder dir default: digite enter (4)
????? Aqui tem colocar o meu?

14 - Na pergunta:
Enter Knowledge Source year (<4 digit year>)[default is 2020]:
???? 2020 ou 2021 escolha o ano do source, default: digite enter

15 - Na pergunta:
Enter Knowledge Source Release (<2 letters> (usually: AA or AB)[default is AA]:
p/ default: digite enter


16 	- Ir no arquivo /UMLS_PORTUGUES/dfbuilder.profile e trocar a primeira linha para:  #!/bin/bash

	- ir no diretório abaixo e deletar o arquivo "01CreateWorkFiles"
$	cd sourceData/UMLS_PORTUGUES/01metawordindex/
$	ls -lia
rm -rf "01CreateWorkFiles"
$	ls -lia

Copiar novo arquivo "01CreateWorkFiles" (este arquivo tem q estar anteriormente com permissao 777)
$	cp /home/lperciliano/arquivos-metamap/01CreateWorkFiles 01CreateWorkFiles
$	ls -lia

17	- Alterar a primeira linha dos seguintes arquivos com: #!/bin/bash
	02Suppress
	03FilterPrep
	05GenerateMWIFiles

18 - Executar
$	./01CreateWorkFiles

19 - 
$	./02Suppress

20 - Acessar o ./03FilterPrep e apagar da linha 101 a 111
$	./03FilterPrep 				

21 - 
$	date
$	./04FilterStrict 
yes
enter
2
enter
	demora um tempinho ($demora +- 3:30h) iniciado em 16:27h termino em :xx


22 - Rodar o 5. provavelmente demorou e precisa voltar ao diretório e iniciar o serviço
$	cd Metamap-2021/public_mm
$	./bin/skrmedpostctl start
$	cd sourceData/UMLS_PORTUGUES/01metawordindex/
$	ls -lia
$	./05GenerateMWIFiles (demora uns 2 minutos)
	gera alguns erros??? verificar???
$	ls -lia
		
23 - Acessar o diretório
$	cd ../02treecodes/
Alterar a primeira linha do 01GenerateTreecodes para: #!/bin/bash

$	./01GenerateTreecodes
	gera alguns erros
$	ls -lia

24 
$	cd ../03variants/
Alterar a primeira linha do arquivo ./01GenerateVariants para: #!/bin/bash
$	ls -lia
$	./01GenerateVariants
	demora uns 2 minutos
	gera alguns erros + cria vários arquivos
$	ls -lia
25 - 
$	cd ../04synonyms/
	 Alterar a primeira linha do arquivo ./01GenerateSynonyms com: #!/bin/bash
$	./01GenerateSynonyms

26 - 
$	cd ../05abbrAcronyms/
	 Alterar a primeira linha do arquivo ./01GenerateAbbrAcronyms para: #!/bin/bash
$	./01GenerateAbbrAcronyms

27 - Voltar para o diretório public_mm e executar
$	cd ../../../

$	./bin/LoadDataFiles
enter
yes
?????? enter (default 2020AA) ????? o meu é 2021AA
yes
enter (no)
	 (+- 3 minutos)





28 - Executar todos os comandos do passo 3

29 - 
$	cd Metamap-2020/public_mm
$	./bin/skrmedpostctl start
$	./bin/metamap -V UMLS_PORTUGUES -G -I
Testar os termos dor, fígado, bexiga, urina