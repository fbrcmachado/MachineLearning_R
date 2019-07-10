#### LIMPANDO MEMÓRIA ####

rm(list = ls())
gc()

#### PACOTES ####

require(data.table)
require(RODBC)
require(dplyr)
require(lubridate)
require(tidyr)

#### FUNÇÕES DPLYR E OPTIONS ####

select = dplyr::select
filter = dplyr::filter

options(scipen = 999, digits = 2)

#### LOGIN E SENHA DW ####

LOGIN = '609369'
SENHA = 'Lqa$6@YVTGVrKXu%49xH*dx8CZLtH$AL'

#### CONEXÃO ####

con = odbcDriverConnect(paste0('DRIVER={ODBC Driver 13 for SQL Server};
                          SERVER=baseunica.database.windows.net;
                               PORT=1433;
                               DATABASE=DW;
                               UID=', LOGIN,';
                               PWD=',SENHA))
query = "
SELECT
	ID_ACORDO,
  ID_CONTA,
  DT_ACORDO,
  NU_DIAS_ATRASO
FROM T_EVENTO_ACORDO
WHERE DT_ACORDO >= '20160101'"

DF_ACORDOS = sqlQuery(con, query, as.is = T, stringsAsFactors  = F)

View(DF_ACORDOS)
