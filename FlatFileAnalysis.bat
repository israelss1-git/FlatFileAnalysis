echo off
cls 
echo.
echo Flat File Analises
echo.
echo Desenvolvedor: Israel Silva de Souza
echo.
date /t 
time /t
set /p arquiveName=Nome do Arquivo:

del AuxFile.txt
del FlatFileAnalise.txt

echo Flat File Analise > FlatFileAnalise.txt
echo Desenvolvedor: Israel Silva de Souza >> FlatFileAnalise.txt
date /t >> FlatFileAnalise.txt
time /t >> FlatFileAnalise.txt

echo.
echo Backup
REM CRIA UM ARQUIVO AUXILIAR ENUMERANDO AS LINHAS
find /v /n "" %arquiveName% > AuxFile.txt

echo.
echo Analise
REM CONTA A QUANTIDADE DE LINHAS DO ARQUIVO E REGISTRA 
echo Quantidade de linhas >> FlatFileAnalise.txt
find /v /c "" AuxFile.txt >> FlatFileAnalise.txt
 
REM EXTRAI O CABEÇALHO DO ARQUIVO EXISTENTE NA PRIMEIRA LINHA
echo Cabeçalho do arquivo >> FlatFileAnalise.txt
find "[1]" AuxFile.txt >> FlatFileAnalise.txt

REM EXTRAI UMA AMOSTRA DE 0,1% DO ARQUIVO A PARTIR DA LINHA 100
echo Amostra dos dados >> FlatFileAnalise.txt
find "100]" AuxFile.txt >> FlatFileAnalise.txt

echo.
echo Analise disponibilizada em FlatFileAnalise.txt
time /t >> FlatFileAnalise.txt
time /t
pause

