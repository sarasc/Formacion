REM parametros [path del datos para importar] [DB Server] [msl]
REM parametros . srv_dbase2 msl

rem isql /U SA   /P %3 /S %2 /d Swimming /i %1\Scripts\CreateSW.sql
rem isql /U SA   /P %3 /S %2 /d Swimming /i %1\Scripts\SWEntityModel.sql
rem isql /U SA   /P %3 /S %2 /d Swimming /i %1\Scripts\SPEntityModel.sql  
rem isql /U SA   /P %3 /S %2 /d Swimming /i %1\Scripts\GEntityModel.sql 

cALL GLoadModel  %1 %2 %3 Swimming
cALL SPLoadModel  %1 %2 %3 Swimming
cALL SWLoadModel  %1 %2 %3 Swimming

rem isql /U SA   /P %3 /S %2 /d Swimming /i %1\Scripts\GRefModel.sql  
rem isql /U SA   /P %3 /S %2 /d Swimming /i %1\Scripts\SPRefModel.sql
