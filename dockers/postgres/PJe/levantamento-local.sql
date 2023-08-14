
select 'client.tb_aplicacao_complemento-OK'	, min(dt_atualizacao),max(dt_atualizacao), max(dt_atualizacao) - min(dt_atualizacao), (select count(1) from client.tb_aplicacao_complemento where dt_atualizacao=(select min(dt_atualizacao) from client.tb_aplicacao_complemento)) qtdinicial, (select count(1) from client.tb_aplicacao_complemento where dt_atualizacao>(select min(dt_atualizacao) from client.tb_aplicacao_complemento)) qtdInsert from client.tb_aplicacao_complemento union
select 'client.tb_aplicacao_dominio-OK'		, min(dt_atualizacao),max(dt_atualizacao), max(dt_atualizacao) - min(dt_atualizacao), (select count(1) from client.tb_aplicacao_dominio where dt_atualizacao=(select min(dt_atualizacao) from client.tb_aplicacao_dominio)) qtdinicial, (select count(1) from client.tb_aplicacao_dominio where dt_atualizacao>(select min(dt_atualizacao) from client.tb_aplicacao_dominio)) qtdInsert from client.tb_aplicacao_dominio union
select 'client.tb_aplicacao_movimento-OK'	, min(dt_atualizacao),max(dt_atualizacao), max(dt_atualizacao) - min(dt_atualizacao), (select count(1) from client.tb_aplicacao_movimento where dt_atualizacao=(select min(dt_atualizacao) from client.tb_aplicacao_movimento)) qtdinicial, (select count(1) from client.tb_aplicacao_movimento where dt_atualizacao>(select min(dt_atualizacao) from client.tb_aplicacao_movimento)) qtdInsert from client.tb_aplicacao_movimento union
select 'client.tb_dominio-OK*'			, min(dt_atualizacao),max(dt_atualizacao), max(dt_atualizacao) - min(dt_atualizacao), (select count(1) from client.tb_dominio where dt_atualizacao=(select min(dt_atualizacao) from client.tb_dominio)) qtdinicial, (select count(1) from client.tb_dominio where dt_atualizacao>(select min(dt_atualizacao) from client.tb_dominio)) qtdInsert from client.tb_dominio union
select 'client.tb_elemento_dominio-OK*'		, min(dt_atualizacao),max(dt_atualizacao), max(dt_atualizacao) - min(dt_atualizacao), (select count(1) from client.tb_elemento_dominio where dt_atualizacao=(select min(dt_atualizacao) from client.tb_elemento_dominio)) qtdinicial, (select count(1) from client.tb_elemento_dominio where dt_atualizacao>(select min(dt_atualizacao) from client.tb_elemento_dominio)) qtdInsert from client.tb_elemento_dominio union
select 'client.tb_tipo_complement_dominio-OK'	, min(dt_atualizacao),max(dt_atualizacao), max(dt_atualizacao) - min(dt_atualizacao), (select count(1) from client.tb_tipo_complement_dominio where dt_atualizacao=(select min(dt_atualizacao) from client.tb_tipo_complement_dominio)) qtdinicial, (select count(1) from client.tb_tipo_complement_dominio where dt_atualizacao>(select min(dt_atualizacao) from client.tb_tipo_complement_dominio)) qtdInsert from client.tb_tipo_complement_dominio union
select 'client.tb_tipo_complemento-OK'		, min(dt_atualizacao),max(dt_atualizacao), max(dt_atualizacao) - min(dt_atualizacao), (select count(1) from client.tb_tipo_complemento where dt_atualizacao=(select min(dt_atualizacao) from client.tb_tipo_complemento)) qtdinicial, (select count(1) from client.tb_tipo_complemento where dt_atualizacao>(select min(dt_atualizacao) from client.tb_tipo_complemento)) qtdInsert from client.tb_tipo_complemento union
select 'core.tb_evento-OK'			, min(dt_atualizacao),max(dt_atualizacao), max(dt_atualizacao) - min(dt_atualizacao), (select count(1) from core.tb_evento where dt_atualizacao=(select min(dt_atualizacao) from core.tb_evento)) qtdinicial, (select count(1) from core.tb_evento where dt_atualizacao>(select min(dt_atualizacao) from core.tb_evento)) qtdInsert from core.tb_evento 
order by 1


delete from client.tb_tipo_complement_dominio where dt_atualizacao>(select min(dt_atualizacao) from client.tb_tipo_complement_dominio) ; 
delete from client.tb_aplicacao_complemento where dt_atualizacao>(select min(dt_atualizacao) from client.tb_aplicacao_complemento) ; 
delete from client.tb_aplicacao_movimento where dt_atualizacao>(select min(dt_atualizacao) from client.tb_aplicacao_movimento) ; 
delete from client.tb_aplicacao_dominio where dt_atualizacao>(select min(dt_atualizacao) from client.tb_aplicacao_dominio) ; 
delete from client.tb_tipo_complemento where dt_atualizacao>(select min(dt_atualizacao) from client.tb_tipo_complemento) ; 
delete from client.tb_elemento_dominio where dt_atualizacao>(select min(dt_atualizacao) from client.tb_elemento_dominio) ; 
delete from client.tb_dominio where dt_atualizacao>(select min(dt_atualizacao) from client.tb_dominio) ; 
delete from core.tb_evento where dt_atualizacao>(select min(dt_atualizacao) from core.tb_evento) ; 





select * from datajud_sgt.tb_relat_email order by 1,dt_atualizacao 

update datajud_sgt.tb_relat_email set dt_email=dt_atualizacao

delete from datajud_sgt.tb_relat_email where dt_email is null

--Distribuição:26 - tipo_de_distribuicao_redistribuicao:2; Redistribuição:36 - motivo_da_redistribuicao:17; Redistribuição:36 - tipo_de_distribuicao_redistribuicao:2; Conclusão:51 - tipo_de_conclusao:3; Expedição de documento:60 - tipo_de_documento:4; Petição:85 - tipo_de_peticao:19; Publicação:92 - data:14; Publicação:92 - ato_publicado:5; Mandado:106 - resultado:6; Ofício:112 - resultado:6; Remessa:123 - motivo_da_remessa:18; Remessa:123 - destino:7; Apensamento:135 - numero_de_volumes_e_apensos:9; Apensamento:135 - numero_do_processo:8; Desapensamento:137 - numero_de_volumes_e_apensos:9; Desapensamento:137 - numero_do_processo:8; Revogação:157 - tipo_de_medida_cautelar_diversa_da_prisao:42; Reforma de decisão anterior:190 - data:14; Reforma de decisão anterior:190 - tipo_da_decisao_anterior:10; Não Conhecimento de recurso:235 - nome_da_parte:1; Não Conhecimento de recurso:235 - tipo_de_peticao:19; Réu revel citado por edital :263 - nome_da_parte:1; Recurso Extraordinário com repercussão geral:265 - numero_tema_RG:50; Recurso Extraordinário com repercussão geral:265 - numero_tema_controversia_STF:29; Recurso Extraordinário com repercussão geral:265 - tipo_tema_controversia:28; A depender do julgamento de outra causa, de outro juízo ou declaração incidente:272 - numero_unico_do_processo:53; Leilão ou Praça:311 - data_hora:12; Leilão ou Praça:311 - situacao_da_audiencia:15; Leilão ou Praça:311 - local:21; Sessão do Tribunal do Júri:313 - local:21; Sessão do Tribunal do Júri:313 - data_hora:12; Sessão do Tribunal do Júri:313 - situacao_da_audiencia:15; Assistência judiciária gratuita:334 - nome_da_parte:1; Temporária:352 - nome_da_parte:1; Preventiva:353 - nome_da_parte:1; Alimentos:354 - nome_da_parte:1; Aditamento da denúncia:388 - nome_da_parte:1; Aditamento da queixa:389 - nome_da_parte:1; Denúncia:391 - nome_da_parte:1; Queixa:393 - nome_da_parte:1; Segurança:442 - nome_da_parte:1; Habeas corpus:443 - nome_da_parte:1; Habeas data:444 - nome_da_parte:1; Segurança:446 - nome_da_parte:1; Habeas corpus:447 - nome_da_parte:1; Habeas data:448 - nome_da_parte:1; Segurança:450 - nome_da_parte:1; Habeas corpus:451 - nome_da_parte:1; Habeas data:452 - nome_da_parte:1; Entrega em carga/vista:493 - destinatario:13; Documento:581 - tipo_de_documento:4; Assistência Judiciária Gratuita:787 - nome_da_parte:1; Recurso:804 - nome_da_parte:1; Liberdade provisória:818 - nome_da_parte:1; Provisória:823 - nome_da_parte:1; Trânsito em julgado:848 - data:14; Arquivamento:861 - numero_de_volumes_e_apensos:9; Entrega definitiva dos autos:869 - nome_da_parte:1; Republicação:928 - data:14; Republicação:928 - ato_publicado:5; Decisão anterior:945 - tipo_da_decisao_anterior:10; Decisão anterior:945 - data:14; Audiência:970 - dirigida_por:36; Audiência:970 - situacao_da_audiencia:15; Audiência:970 - data_hora:12; Audiência:970 - local:21; Audiência:970 - tipo_de_audiencia:16; Remessa:978 - destino:7; Remessa:980 - destino:7; Remessa:982 - destino:7; Remessa:982 - motivo_da_remessa:18; Decurso de Prazo:1051 - nome_da_parte:1; Decurso de Prazo:1051 - data:14; Disponibilização no Diário da Justiça Eletrônico:1061 - data:14; Redisponibilização no Diário da Justiça Eletrônico:1062 - data:14; Comutação da pena:11415 - nome_da_parte:1; Medida protetiva:11423 - tipo_de_medida_protetiva:32; Medida protetiva:11423 - destinatario_de _medida_protetiva:31; Medida protetiva:11424 - tipo_de_medida_protetiva:32; Medida protetiva:11424 - destinatario_de _medida_protetiva:31; Medida protetiva:11425 - tipo_de_medida_protetiva:32; Medida protetiva:11425 - destinatario_de _medida_protetiva:31; Medida protetiva:11426 - tipo_de_medida_protetiva:32; Medida protetiva:11426 - destinatario_de _medida_protetiva:31; Indulto:11554 - nome_da_parte:1; Livramento Condicional:11792 - nome_da_parte:1; Recurso Especial repetitivo:11975 - numero_tema_repetitivo:51; Recurso Especial repetitivo:11975 - numero_tema_controversia_tribunal_superior:30; Recurso Especial repetitivo:11975 - tipo_tema_controversia:28; Recurso Especial repetitivo:11975 - tribunal:22; Retificação de movimento:11983 - movimento_retificado:25; Cumprimento de transação penal:12028 - nome_da_parte:1; Representação por ato infracional:12035 - nome_da_parte:1; Incidente de Resolução de Demandas Repetitivas :12098 - numero_tema_IRDR:52; Incidente de Resolução de Demandas Repetitivas :12098 - numero_tema_controversia_tribunal:35; Por decisão do Presidente do STJ -  IRDR:12099 - numero_da_SIRDR:41; Por decisão do Presidente do STF  - IRDR:12100 - numero_da_SIRDR:41; Impedimento:12150 - nome_do_magistrado:40; Suspeição:12151 - nome_do_magistrado:40; Autos restaurados:12260 - data:14; Registro:12296 - motivos_de_registro:34; deferimento:12444 - nome_da_parte:1; Procedência:12451 - nome_da_parte:1; procedência parcial:12452 - nome_da_parte:1; improcedência:12453 - nome_da_parte:1; Não conhecimento do habeas corpus:12458 - nome_da_parte:1; Habeas Corpus de ofício:12475 - nome_da_parte:1; Medida protetiva determinada por autoridade policial:12476 - destinatario_de _medida_protetiva:31; Medida protetiva determinada por autoridade policial:12476 - tipo_de_medida_protetiva:32; Medida protetiva determinada por autoridade policia:12479 - destinatario_de _medida_protetiva:31; Medida protetiva determinada por autoridade policia:12479 - tipo_de_medida_protetiva:32; Remessa para o CEJUSC:12614 - destino:7; Composição Civil dos Danos:12616 - nome_da_parte:1; Remessa para Câmara de Conciliação/Mediação:12622 - destino:7; Audiência do art. 334 CPC:12624 - situacao_da_audiencia:15; Audiência do art. 334 CPC:12624 - data_hora:12; Audiência do art. 334 CPC:12624 - local:21; Audiência do art. 334 CPC:12624 - dirigida_por:36; Homologação do Acordo de Não Persecução Penal:12733 - nome_da_parte:1; Revogação do Acordo de Não Persecução Penal:12734 - nome_da_parte:1; Extinção de Punibilidade em Razão do Cumprimento de Acordo de Não Persecução Penal:12735 - nome_da_parte:1; Unificação de Processos de Execução:12736 - numero_do_processo:8; de Conciliação:12740 - situacao_da_audiencia:15; de Conciliação:12740 - data_hora:12; de Conciliação:12740 - dirigida_por:36; de Conciliação:12740 - local:21; de Acolhimento:12741 - situacao_da_audiencia:15; de Acolhimento:12741 - dirigida_por:36; de Acolhimento:12741 - local:21; de Acolhimento:12741 - data_hora:12; de Custódia:12742 - situacao_da_audiencia:15; de Custódia:12742 - local:21; de Custódia:12742 - dirigida_por:36; de Custódia:12742 - data_hora:12; de Interrogatório:12743 - situacao_da_audiencia:15; de Interrogatório:12743 - data_hora:12; de Interrogatório:12743 - dirigida_por:36; de Interrogatório:12743 - local:21; de Justificação:12744 - situacao_da_audiencia:15; de Justificação:12744 - data_hora:12; de Justificação:12744 - dirigida_por:36; de Justificação:12744 - local:21; do art. 16 da Lei 11.340:12745 - situacao_da_audiencia:15; do art. 16 da Lei 11.340:12745 - data_hora:12; do art. 16 da Lei 11.340:12745 - dirigida_por:36; do art. 16 da Lei 11.340:12745 - local:21; em Execução:12746 - situacao_da_audiencia:15; em Execução:12746 - local:21; em Execução:12746 - data_hora:12; em Execução:12746 - dirigida_por:36; de Instrução:12749 - situacao_da_audiencia:15; de Instrução:12749 - data_hora:12; de Instrução:12749 - dirigida_por:36; de Instrução:12749 - local:21; de Instrução e Julgamento:12750 - situacao_da_audiencia:15; de Instrução e Julgamento:12750 - local:21; de Instrução e Julgamento:12750 - dirigida_por:36; de Instrução e Julgamento:12750 - data_hora:12; de Julgamento:12751 - situacao_da_audiencia:15; de Julgamento:12751 - local:21; de Julgamento:12751 - dirigida_por:36; de Julgamento:12751 - data_hora:12; de Mediação:12752 - situacao_da_audiencia:15; de Mediação:12752 - local:21; de Mediação:12752 - dirigida_por:36; de Mediação:12752 - data_hora:12; Preliminar:12753 - situacao_da_audiencia:15; Preliminar:12753 - data_hora:12; Preliminar:12753 - dirigida_por:36; Preliminar:12753 - local:21; Descumprimento de Medida Protetiva:14681 - tipo_de_medida_protetiva:32; Descumprimento de Medida Protetiva:14681 - destinatario_de _medida_protetiva:31; Medida Cautelar Diversa da Prisão:14682 - tipo_de_medida_cautelar_diversa_da_prisao:42; Medida Cautelar Diversa da Prisão:14683 - tipo_de_medida_cautelar_diversa_da_prisao:42; Prorrogação de Medida Protetiva:14733 - tipo_de_medida_protetiva:32; Prorrogação de Medida Protetiva:14733 - destinatario_de _medida_protetiva:31; Retificação de Classe Processual:14738 - Classe anterior:26; Retificação de Classe Processual:14738 - Classe nova:27; Evolução da Classe Processual:14739 - Classe anterior:26; Evolução da Classe Processual:14739 - Classe nova:27; Por Incidente de Assunção de Competência - IAC:14968 - numero_tema_IAC:44; Por Grupo de Representativos:14969 - numero_grupo_de_representativos:45; Por Grupo de Representativos:14969 - sigla_tribunal:43; Por Controvérsia:14970 - numero_controversia:46; Por Ação de Controle Concentrado de Constitucionalidade:14971 - classe_acao_controle_constitucionalidade_STF:47; Por Ação de Controle Concentrado de Constitucionalidade:14971 - numero_classe_controle_constitucionalidade_STF:48; Suspensão/Sobrestamento por Recurso Extraordinário com Repercussão Geral:14975 - numero_tema_RG:50; Suspensão/Sobrestamento por Recurso Especial Repetitivo:14976 - numero_tema_repetitivo:51; Suspensão/Sobrestamento Determinada por Decisão do Presidente do STF - SIRDR:14977 - numero_da_SIRDR:41; Suspensão/Sobrestamento Determinada por Decisão do Presidente do STJ - SIRDR:14978 - numero_da_SIRDR:41; Suspensão/Sobrestamento Determinada por Incidente de Assunção de Competência - IAC:14979 - sigla_tribunal:43; Suspensão/Sobrestamento Determinada por Incidente de Assunção de Competência - IAC:14979 - numero_tema_IAC:44; Suspensão/Sobrestamento Determinada por Grupo de Representativos:14980 - sigla_tribunal:43; Suspensão/Sobrestamento Determinada por Grupo de Representativos:14980 - numero_grupo_de_representativos:45; Suspensão/Sobrestamento Determinada por Controvérsia:14981 - numero_controversia:46; Suspensão/Sobrestamento Determinada por Ação de Controle Concentrado de Constitucionalidade  - STF:14982 - classe_acao_controle_constitucionalidade_STF:47; Suspensão/Sobrestamento Determinada por Ação de Controle Concentrado de Constitucionalidade  - STF:14982 - numero_classe_controle_constitucionalidade_STF:48; Suspensão/Sobrestamento por Incidente de Resolução de Demandas Repetitivas:14985 - numero_tema_IRDR:52; Por Impedimento ou Suspeição:15009 - numero_unico_do_processo:53; Audiência de Apresentação de Adolescente:15045 - dirigida_por:36; Audiência de Apresentação de Adolescente:15045 - situacao_da_audiencia:15; Audiência de Apresentação de Adolescente:15045 - data_hora:12; Audiência de Apresentação de Adolescente:15045 - local:21; Audiência Concentrada Protetiva:15049 - dirigida_por:36; Audiência Concentrada Protetiva:15049 - data_hora:12; Audiência Concentrada Protetiva:15049 - situacao_da_audiencia:15; Audiência Concentrada Protetiva:15049 - local:21; Audiência Concentrada Infracional:15050 - situacao_da_audiencia:15; Audiência Concentrada Infracional:15050 - dirigida_por:36; Audiência Concentrada Infracional:15050 - local:21; Audiência Concentrada Infracional:15050 - data_hora:12; Deferimento em Parte:15086 - nome_da_parte:1; Sessão Restaurativa:15102 - dirigida_por:36; Sessão Restaurativa:15102 - local:21; Sessão Restaurativa:15102 - data_hora:12; Sessão Restaurativa:15102 - situacao_da_audiencia:15; Gratuidade da Justiça:15103 - nome_da_parte:1; Audiência de Depoimento Especial:15188 - situacao_da_audiencia:15; Audiência de Depoimento Especial:15188 - data_hora:12; Audiência de Depoimento Especial:15188 - local:21; Audiência de Depoimento Especial:15188 - dirigida_por:36; 
--Distribuição:26 - tipo_de_distribuicao_redistribuicao:2; Redistribuição:36 - motivo_da_redistribuicao:17; Redistribuição:36 - tipo_de_distribuicao_redistribuicao:2; Conclusão:51 - tipo_de_conclusao:3; Expedição de documento:60 - tipo_de_documento:4; Petição:85 - tipo_de_peticao:19; Publicação:92 - data:14; Publicação:92 - ato_publicado:5; Mandado:106 - resultado:6; Ofício:112 - resultado:6; Remessa:123 - motivo_da_remessa:18; Remessa:123 - destino:7; Apensamento:135 - numero_de_volumes_e_apensos:9; Apensamento:135 - numero_do_processo:8; Desapensamento:137 - numero_de_volumes_e_apensos:9; Desapensamento:137 - numero_do_processo:8; Revogação:157 - tipo_de_medida_cautelar_diversa_da_prisao:42; Reforma de decisão anterior:190 - data:14; Reforma de decisão anterior:190 - tipo_da_decisao_anterior:10; Não Conhecimento de recurso:235 - nome_da_parte:1; Não Conhecimento de recurso:235 - tipo_de_peticao:19; Réu revel citado por edital :263 - nome_da_parte:1; Recurso Extraordinário com repercussão geral:265 - numero_tema_RG:50; Recurso Extraordinário com repercussão geral:265 - numero_tema_controversia_STF:29; Recurso Extraordinário com repercussão geral:265 - tipo_tema_controversia:28; A depender do julgamento de outra causa, de outro juízo ou declaração incidente:272 - numero_unico_do_processo:53; Leilão ou Praça:311 - data_hora:12; Leilão ou Praça:311 - situacao_da_audiencia:15; Leilão ou Praça:311 - local:21; Sessão do Tribunal do Júri:313 - local:21; Sessão do Tribunal do Júri:313 - data_hora:12; Sessão do Tribunal do Júri:313 - situacao_da_audiencia:15; Assistência judiciária gratuita:334 - nome_da_parte:1; Temporária:352 - nome_da_parte:1; Preventiva:353 - nome_da_parte:1; Alimentos:354 - nome_da_parte:1; Aditamento da denúncia:388 - nome_da_parte:1; Aditamento da queixa:389 - nome_da_parte:1; Denúncia:391 - nome_da_parte:1; Queixa:393 - nome_da_parte:1; Segurança:442 - nome_da_parte:1; Habeas corpus:443 - nome_da_parte:1; Habeas data:444 - nome_da_parte:1; Segurança:446 - nome_da_parte:1; Habeas corpus:447 - nome_da_parte:1; Habeas data:448 - nome_da_parte:1; Segurança:450 - nome_da_parte:1; Habeas corpus:451 - nome_da_parte:1; Habeas data:452 - nome_da_parte:1; Entrega em carga/vista:493 - destinatario:13; Documento:581 - tipo_de_documento:4; Assistência Judiciária Gratuita:787 - nome_da_parte:1; Recurso:804 - nome_da_parte:1; Liberdade provisória:818 - nome_da_parte:1; Provisória:823 - nome_da_parte:1; Trânsito em julgado:848 - data:14; Arquivamento:861 - numero_de_volumes_e_apensos:9; Entrega definitiva dos autos:869 - nome_da_parte:1; Republicação:928 - data:14; Republicação:928 - ato_publicado:5; Decisão anterior:945 - tipo_da_decisao_anterior:10; Decisão anterior:945 - data:14; Audiência:970 - dirigida_por:36; Audiência:970 - situacao_da_audiencia:15; Audiência:970 - data_hora:12; Audiência:970 - local:21; Audiência:970 - tipo_de_audiencia:16; Remessa:978 - destino:7; Remessa:980 - destino:7; Remessa:982 - destino:7; Remessa:982 - motivo_da_remessa:18; Decurso de Prazo:1051 - nome_da_parte:1; Decurso de Prazo:1051 - data:14; Disponibilização no Diário da Justiça Eletrônico:1061 - data:14; Redisponibilização no Diário da Justiça Eletrônico:1062 - data:14; Comutação da pena:11415 - nome_da_parte:1; Medida protetiva:11423 - tipo_de_medida_protetiva:32; Medida protetiva:11423 - destinatario_de _medida_protetiva:31; Medida protetiva:11424 - tipo_de_medida_protetiva:32; Medida protetiva:11424 - destinatario_de _medida_protetiva:31; Medida protetiva:11425 - tipo_de_medida_protetiva:32; Medida protetiva:11425 - destinatario_de _medida_protetiva:31; Medida protetiva:11426 - tipo_de_medida_protetiva:32; Medida protetiva:11426 - destinatario_de _medida_protetiva:31; Indulto:11554 - nome_da_parte:1; Livramento Condicional:11792 - nome_da_parte:1; Recurso Especial repetitivo:11975 - numero_tema_repetitivo:51; Recurso Especial repetitivo:11975 - numero_tema_controversia_tribunal_superior:30; Recurso Especial repetitivo:11975 - tipo_tema_controversia:28; Recurso Especial repetitivo:11975 - tribunal:22; Retificação de movimento:11983 - movimento_retificado:25; Cumprimento de transação penal:12028 - nome_da_parte:1; Representação por ato infracional:12035 - nome_da_parte:1; Incidente de Resolução de Demandas Repetitivas :12098 - numero_tema_IRDR:52; Incidente de Resolução de Demandas Repetitivas :12098 - numero_tema_controversia_tribunal:35; Por decisão do Presidente do STJ -  IRDR:12099 - numero_da_SIRDR:41; Por decisão do Presidente do STF  - IRDR:12100 - numero_da_SIRDR:41; Impedimento:12150 - nome_do_magistrado:40; Suspeição:12151 - nome_do_magistrado:40; Autos restaurados:12260 - data:14; Registro:12296 - motivos_de_registro:34; deferimento:12444 - nome_da_parte:1; Procedência:12451 - nome_da_parte:1; procedência parcial:12452 - nome_da_parte:1; improcedência:12453 - nome_da_parte:1; Não conhecimento do habeas corpus:12458 - nome_da_parte:1; Habeas Corpus de ofício:12475 - nome_da_parte:1; Medida protetiva determinada por autoridade policial:12476 - destinatario_de _medida_protetiva:31; Medida protetiva determinada por autoridade policial:12476 - tipo_de_medida_protetiva:32; Medida protetiva determinada por autoridade policia:12479 - destinatario_de _medida_protetiva:31; Medida protetiva determinada por autoridade policia:12479 - tipo_de_medida_protetiva:32; Remessa para o CEJUSC:12614 - destino:7; Composição Civil dos Danos:12616 - nome_da_parte:1; Remessa para Câmara de Conciliação/Mediação:12622 - destino:7; Audiência do art. 334 CPC:12624 - situacao_da_audiencia:15; Audiência do art. 334 CPC:12624 - data_hora:12; Audiência do art. 334 CPC:12624 - local:21; Audiência do art. 334 CPC:12624 - dirigida_por:36; Homologação do Acordo de Não Persecução Penal:12733 - nome_da_parte:1; Revogação do Acordo de Não Persecução Penal:12734 - nome_da_parte:1; Extinção de Punibilidade em Razão do Cumprimento de Acordo de Não Persecução Penal:12735 - nome_da_parte:1; Unificação de Processos de Execução:12736 - numero_do_processo:8; de Conciliação:12740 - situacao_da_audiencia:15; de Conciliação:12740 - data_hora:12; de Conciliação:12740 - dirigida_por:36; de Conciliação:12740 - local:21; de Acolhimento:12741 - situacao_da_audiencia:15; de Acolhimento:12741 - dirigida_por:36; de Acolhimento:12741 - local:21; de Acolhimento:12741 - data_hora:12; de Custódia:12742 - situacao_da_audiencia:15; de Custódia:12742 - local:21; de Custódia:12742 - dirigida_por:36; de Custódia:12742 - data_hora:12; de Interrogatório:12743 - situacao_da_audiencia:15; de Interrogatório:12743 - data_hora:12; de Interrogatório:12743 - dirigida_por:36; de Interrogatório:12743 - local:21; de Justificação:12744 - situacao_da_audiencia:15; de Justificação:12744 - data_hora:12; de Justificação:12744 - dirigida_por:36; de Justificação:12744 - local:21; do art. 16 da Lei 11.340:12745 - situacao_da_audiencia:15; do art. 16 da Lei 11.340:12745 - data_hora:12; do art. 16 da Lei 11.340:12745 - dirigida_por:36; do art. 16 da Lei 11.340:12745 - local:21; em Execução:12746 - situacao_da_audiencia:15; em Execução:12746 - local:21; em Execução:12746 - data_hora:12; em Execução:12746 - dirigida_por:36; de Instrução:12749 - situacao_da_audiencia:15; de Instrução:12749 - data_hora:12; de Instrução:12749 - dirigida_por:36; de Instrução:12749 - local:21; de Instrução e Julgamento:12750 - situacao_da_audiencia:15; de Instrução e Julgamento:12750 - local:21; de Instrução e Julgamento:12750 - dirigida_por:36; de Instrução e Julgamento:12750 - data_hora:12; de Julgamento:12751 - situacao_da_audiencia:15; de Julgamento:12751 - local:21; de Julgamento:12751 - dirigida_por:36; de Julgamento:12751 - data_hora:12; de Mediação:12752 - situacao_da_audiencia:15; de Mediação:12752 - local:21; de Mediação:12752 - dirigida_por:36; de Mediação:12752 - data_hora:12; Preliminar:12753 - situacao_da_audiencia:15; Preliminar:12753 - data_hora:12; Preliminar:12753 - dirigida_por:36; Preliminar:12753 - local:21; Descumprimento de Medida Protetiva:14681 - tipo_de_medida_protetiva:32; Descumprimento de Medida Protetiva:14681 - destinatario_de _medida_protetiva:31; Medida Cautelar Diversa da Prisão:14682 - tipo_de_medida_cautelar_diversa_da_prisao:42; Medida Cautelar Diversa da Prisão:14683 - tipo_de_medida_cautelar_diversa_da_prisao:42; Prorrogação de Medida Protetiva:14733 - tipo_de_medida_protetiva:32; Prorrogação de Medida Protetiva:14733 - destinatario_de _medida_protetiva:31; Retificação de Classe Processual:14738 - Classe anterior:26; Retificação de Classe Processual:14738 - Classe nova:27; Evolução da Classe Processual:14739 - Classe anterior:26; Evolução da Classe Processual:14739 - Classe nova:27; Por Incidente de Assunção de Competência - IAC:14968 - numero_tema_IAC:44; Por Grupo de Representativos:14969 - numero_grupo_de_representativos:45; Por Grupo de Representativos:14969 - sigla_tribunal:43; Por Controvérsia:14970 - numero_controversia:46; Por Ação de Controle Concentrado de Constitucionalidade:14971 - classe_acao_controle_constitucionalidade_STF:47; Por Ação de Controle Concentrado de Constitucionalidade:14971 - numero_classe_controle_constitucionalidade_STF:48; Suspensão/Sobrestamento por Recurso Extraordinário com Repercussão Geral:14975 - numero_tema_RG:50; Suspensão/Sobrestamento por Recurso Especial Repetitivo:14976 - numero_tema_repetitivo:51; Suspensão/Sobrestamento Determinada por Decisão do Presidente do STF - SIRDR:14977 - numero_da_SIRDR:41; Suspensão/Sobrestamento Determinada por Decisão do Presidente do STJ - SIRDR:14978 - numero_da_SIRDR:41; Suspensão/Sobrestamento Determinada por Incidente de Assunção de Competência - IAC:14979 - sigla_tribunal:43; Suspensão/Sobrestamento Determinada por Incidente de Assunção de Competência - IAC:14979 - numero_tema_IAC:44; Suspensão/Sobrestamento Determinada por Grupo de Representativos:14980 - sigla_tribunal:43; Suspensão/Sobrestamento Determinada por Grupo de Representativos:14980 - numero_grupo_de_representativos:45; Suspensão/Sobrestamento Determinada por Controvérsia:14981 - numero_controversia:46; Suspensão/Sobrestamento Determinada por Ação de Controle Concentrado de Constitucionalidade  - STF:14982 - classe_acao_controle_constitucionalidade_STF:47; Suspensão/Sobrestamento Determinada por Ação de Controle Concentrado de Constitucionalidade  - STF:14982 - numero_classe_controle_constitucionalidade_STF:48; Suspensão/Sobrestamento por Incidente de Resolução de Demandas Repetitivas:14985 - numero_tema_IRDR:52; Por Impedimento ou Suspeição:15009 - numero_unico_do_processo:53; Audiência de Apresentação de Adolescente:15045 - dirigida_por:36; Audiência de Apresentação de Adolescente:15045 - situacao_da_audiencia:15; Audiência de Apresentação de Adolescente:15045 - data_hora:12; Audiência de Apresentação de Adolescente:15045 - local:21; Audiência Concentrada Protetiva:15049 - dirigida_por:36; Audiência Concentrada Protetiva:15049 - data_hora:12; Audiência Concentrada Protetiva:15049 - situacao_da_audiencia:15; Audiência Concentrada Protetiva:15049 - local:21; Audiência Concentrada Infracional:15050 - situacao_da_audiencia:15; Audiência Concentrada Infracional:15050 - dirigida_por:36; Audiência Concentrada Infracional:15050 - local:21; Audiência Concentrada Infracional:15050 - data_hora:12; Deferimento em Parte:15086 - nome_da_parte:1; Sessão Restaurativa:15102 - dirigida_por:36; Sessão Restaurativa:15102 - local:21; Sessão Restaurativa:15102 - data_hora:12; Sessão Restaurativa:15102 - situacao_da_audiencia:15; Gratuidade da Justiça:15103 - nome_da_parte:1; Audiência de Depoimento Especial:15188 - situacao_da_audiencia:15; Audiência de Depoimento Especial:15188 - data_hora:12; Audiência de Depoimento Especial:15188 - local:21; Audiência de Depoimento Especial:15188 - dirigida_por:36;


--update datajud_sgt.tb_relat_email set ds_nome='Distribuição:26 - tipo_de_distribuicao_redistribuicao:2; Redistribuição:36 - motivo_da_redistribuicao:17; Redistribuição:36 - tipo_de_distribuicao_redistribuicao:2; Conclusão:51 - tipo_de_conclusao:3; Expedição de documento:60 - tipo_de_documento:4; Petição:85 - tipo_de_peticao:19; Publicação:92 - data:14; Publicação:92 - ato_publicado:5; Mandado:106 - resultado:6; Ofício:112 - resultado:6; Remessa:123 - motivo_da_remessa:18; Remessa:123 - destino:7; Apensamento:135 - numero_de_volumes_e_apensos:9; Apensamento:135 - numero_do_processo:8; Desapensamento:137 - numero_de_volumes_e_apensos:9; Desapensamento:137 - numero_do_processo:8; Revogação:157 - tipo_de_medida_cautelar_diversa_da_prisao:42; Reforma de decisão anterior:190 - data:14; Reforma de decisão anterior:190 - tipo_da_decisao_anterior:10; Não Conhecimento de recurso:235 - nome_da_parte:1; Não Conhecimento de recurso:235 - tipo_de_peticao:19; Réu revel citado por edital :263 - nome_da_parte:1; Recurso Extraordinário com repercussão geral:265 - numero_tema_RG:50; Recurso Extraordinário com repercussão geral:265 - numero_tema_controversia_STF:29; Recurso Extraordinário com repercussão geral:265 - tipo_tema_controversia:28; A depender do julgamento de outra causa, de outro juízo ou declaração incidente:272 - numero_unico_do_processo:53; Leilão ou Praça:311 - data_hora:12; Leilão ou Praça:311 - situacao_da_audiencia:15; Leilão ou Praça:311 - local:21; Sessão do Tribunal do Júri:313 - local:21; Sessão do Tribunal do Júri:313 - data_hora:12; Sessão do Tribunal do Júri:313 - situacao_da_audiencia:15; Assistência judiciária gratuita:334 - nome_da_parte:1; Temporária:352 - nome_da_parte:1; Preventiva:353 - nome_da_parte:1; Alimentos:354 - nome_da_parte:1; Aditamento da denúncia:388 - nome_da_parte:1; Aditamento da queixa:389 - nome_da_parte:1; Denúncia:391 - nome_da_parte:1; Queixa:393 - nome_da_parte:1; Segurança:442 - nome_da_parte:1; Habeas corpus:443 - nome_da_parte:1; Habeas data:444 - nome_da_parte:1; Segurança:446 - nome_da_parte:1; Habeas corpus:447 - nome_da_parte:1; Habeas data:448 - nome_da_parte:1; Segurança:450 - nome_da_parte:1; Habeas corpus:451 - nome_da_parte:1; Habeas data:452 - nome_da_parte:1; Entrega em carga/vista:493 - destinatario:13; Documento:581 - tipo_de_documento:4; Assistência Judiciária Gratuita:787 - nome_da_parte:1; Recurso:804 - nome_da_parte:1; Liberdade provisória:818 - nome_da_parte:1; Provisória:823 - nome_da_parte:1; Trânsito em julgado:848 - data:14; Arquivamento:861 - numero_de_volumes_e_apensos:9; Entrega definitiva dos autos:869 - nome_da_parte:1; Republicação:928 - data:14; Republicação:928 - ato_publicado:5; Decisão anterior:945 - tipo_da_decisao_anterior:10; Decisão anterior:945 - data:14; Audiência:970 - dirigida_por:36; Audiência:970 - situacao_da_audiencia:15; Audiência:970 - data_hora:12; Audiência:970 - local:21; Audiência:970 - tipo_de_audiencia:16; Remessa:978 - destino:7; Remessa:980 - destino:7; Remessa:982 - destino:7; Remessa:982 - motivo_da_remessa:18; Decurso de Prazo:1051 - nome_da_parte:1; Decurso de Prazo:1051 - data:14; Disponibilização no Diário da Justiça Eletrônico:1061 - data:14; Redisponibilização no Diário da Justiça Eletrônico:1062 - data:14; Comutação da pena:11415 - nome_da_parte:1; Medida protetiva:11423 - tipo_de_medida_protetiva:32; Medida protetiva:11423 - destinatario_de _medida_protetiva:31; Medida protetiva:11424 - tipo_de_medida_protetiva:32; Medida protetiva:11424 - destinatario_de _medida_protetiva:31; Medida protetiva:11425 - tipo_de_medida_protetiva:32; Medida protetiva:11425 - destinatario_de _medida_protetiva:31; Medida protetiva:11426 - tipo_de_medida_protetiva:32; Medida protetiva:11426 - destinatario_de _medida_protetiva:31; Indulto:11554 - nome_da_parte:1; Livramento Condicional:11792 - nome_da_parte:1; Recurso Especial repetitivo:11975 - numero_tema_repetitivo:51; Recurso Especial repetitivo:11975 - numero_tema_controversia_tribunal_superior:30; Recurso Especial repetitivo:11975 - tipo_tema_controversia:28; Recurso Especial repetitivo:11975 - tribunal:22; Retificação de movimento:11983 - movimento_retificado:25; Cumprimento de transação penal:12028 - nome_da_parte:1; Representação por ato infracional:12035 - nome_da_parte:1; Incidente de Resolução de Demandas Repetitivas :12098 - numero_tema_IRDR:52; Incidente de Resolução de Demandas Repetitivas :12098 - numero_tema_controversia_tribunal:35; Por decisão do Presidente do STJ -  IRDR:12099 - numero_da_SIRDR:41; Por decisão do Presidente do STF  - IRDR:12100 - numero_da_SIRDR:41; Impedimento:12150 - nome_do_magistrado:40; Suspeição:12151 - nome_do_magistrado:40; Autos restaurados:12260 - data:14; Registro:12296 - motivos_de_registro:34; deferimento:12444 - nome_da_parte:1; Procedência:12451 - nome_da_parte:1; procedência parcial:12452 - nome_da_parte:1; improcedência:12453 - nome_da_parte:1; Não conhecimento do habeas corpus:12458 - nome_da_parte:1; Habeas Corpus de ofício:12475 - nome_da_parte:1; Medida protetiva determinada por autoridade policial:12476 - destinatario_de _medida_protetiva:31; Medida protetiva determinada por autoridade policial:12476 - tipo_de_medida_protetiva:32; Medida protetiva determinada por autoridade policia:12479 - destinatario_de _medida_protetiva:31; Medida protetiva determinada por autoridade policia:12479 - tipo_de_medida_protetiva:32; Remessa para o CEJUSC:12614 - destino:7; Composição Civil dos Danos:12616 - nome_da_parte:1; Remessa para Câmara de Conciliação/Mediação:12622 - destino:7; Audiência do art. 334 CPC:12624 - situacao_da_audiencia:15; Audiência do art. 334 CPC:12624 - data_hora:12; Audiência do art. 334 CPC:12624 - local:21; Audiência do art. 334 CPC:12624 - dirigida_por:36; Homologação do Acordo de Não Persecução Penal:12733 - nome_da_parte:1; Revogação do Acordo de Não Persecução Penal:12734 - nome_da_parte:1; Extinção de Punibilidade em Razão do Cumprimento de Acordo de Não Persecução Penal:12735 - nome_da_parte:1; Unificação de Processos de Execução:12736 - numero_do_processo:8; de Conciliação:12740 - situacao_da_audiencia:15; de Conciliação:12740 - data_hora:12; de Conciliação:12740 - dirigida_por:36; de Conciliação:12740 - local:21; de Acolhimento:12741 - situacao_da_audiencia:15; de Acolhimento:12741 - dirigida_por:36; de Acolhimento:12741 - local:21; de Acolhimento:12741 - data_hora:12; de Custódia:12742 - situacao_da_audiencia:15; de Custódia:12742 - local:21; de Custódia:12742 - dirigida_por:36; de Custódia:12742 - data_hora:12; de Interrogatório:12743 - situacao_da_audiencia:15; de Interrogatório:12743 - data_hora:12; de Interrogatório:12743 - dirigida_por:36; de Interrogatório:12743 - local:21; de Justificação:12744 - situacao_da_audiencia:15; de Justificação:12744 - data_hora:12; de Justificação:12744 - dirigida_por:36; de Justificação:12744 - local:21; do art. 16 da Lei 11.340:12745 - situacao_da_audiencia:15; do art. 16 da Lei 11.340:12745 - data_hora:12; do art. 16 da Lei 11.340:12745 - dirigida_por:36; do art. 16 da Lei 11.340:12745 - local:21; em Execução:12746 - situacao_da_audiencia:15; em Execução:12746 - local:21; em Execução:12746 - data_hora:12; em Execução:12746 - dirigida_por:36; de Instrução:12749 - situacao_da_audiencia:15; de Instrução:12749 - data_hora:12; de Instrução:12749 - dirigida_por:36; de Instrução:12749 - local:21; de Instrução e Julgamento:12750 - situacao_da_audiencia:15; de Instrução e Julgamento:12750 - local:21; de Instrução e Julgamento:12750 - dirigida_por:36; de Instrução e Julgamento:12750 - data_hora:12; de Julgamento:12751 - situacao_da_audiencia:15; de Julgamento:12751 - local:21; de Julgamento:12751 - dirigida_por:36; de Julgamento:12751 - data_hora:12; de Mediação:12752 - situacao_da_audiencia:15; de Mediação:12752 - local:21; de Mediação:12752 - dirigida_por:36; de Mediação:12752 - data_hora:12; Preliminar:12753 - situacao_da_audiencia:15; Preliminar:12753 - data_hora:12; Preliminar:12753 - dirigida_por:36; Preliminar:12753 - local:21; Descumprimento de Medida Protetiva:14681 - tipo_de_medida_protetiva:32; Descumprimento de Medida Protetiva:14681 - destinatario_de _medida_protetiva:31; Medida Cautelar Diversa da Prisão:14682 - tipo_de_medida_cautelar_diversa_da_prisao:42; Medida Cautelar Diversa da Prisão:14683 - tipo_de_medida_cautelar_diversa_da_prisao:42; Prorrogação de Medida Protetiva:14733 - tipo_de_medida_protetiva:32; Prorrogação de Medida Protetiva:14733 - destinatario_de _medida_protetiva:31; Retificação de Classe Processual:14738 - Classe anterior:26; Retificação de Classe Processual:14738 - Classe nova:27; Evolução da Classe Processual:14739 - Classe anterior:26; Evolução da Classe Processual:14739 - Classe nova:27; Por Incidente de Assunção de Competência - IAC:14968 - numero_tema_IAC:44; Por Grupo de Representativos:14969 - numero_grupo_de_representativos:45; Por Grupo de Representativos:14969 - sigla_tribunal:43; Por Controvérsia:14970 - numero_controversia:46; Por Ação de Controle Concentrado de Constitucionalidade:14971 - classe_acao_controle_constitucionalidade_STF:47; Por Ação de Controle Concentrado de Constitucionalidade:14971 - numero_classe_controle_constitucionalidade_STF:48; Suspensão/Sobrestamento por Recurso Extraordinário com Repercussão Geral:14975 - numero_tema_RG:50; Suspensão/Sobrestamento por Recurso Especial Repetitivo:14976 - numero_tema_repetitivo:51; Suspensão/Sobrestamento Determinada por Decisão do Presidente do STF - SIRDR:14977 - numero_da_SIRDR:41; Suspensão/Sobrestamento Determinada por Decisão do Presidente do STJ - SIRDR:14978 - numero_da_SIRDR:41; Suspensão/Sobrestamento Determinada por Incidente de Assunção de Competência - IAC:14979 - sigla_tribunal:43; Suspensão/Sobrestamento Determinada por Incidente de Assunção de Competência - IAC:14979 - numero_tema_IAC:44; Suspensão/Sobrestamento Determinada por Grupo de Representativos:14980 - sigla_tribunal:43; Suspensão/Sobrestamento Determinada por Grupo de Representativos:14980 - numero_grupo_de_representativos:45; Suspensão/Sobrestamento Determinada por Controvérsia:14981 - numero_controversia:46; Suspensão/Sobrestamento Determinada por Ação de Controle Concentrado de Constitucionalidade  - STF:14982 - classe_acao_controle_constitucionalidade_STF:47; Suspensão/Sobrestamento Determinada por Ação de Controle Concentrado de Constitucionalidade  - STF:14982 - numero_classe_controle_constitucionalidade_STF:48; Suspensão/Sobrestamento por Incidente de Resolução de Demandas Repetitivas:14985 - numero_tema_IRDR:52; Por Impedimento ou Suspeição:15009 - numero_unico_do_processo:53; Audiência de Apresentação de Adolescente:15045 - dirigida_por:36; Audiência de Apresentação de Adolescente:15045 - situacao_da_audiencia:15; Audiência de Apresentação de Adolescente:15045 - data_hora:12; Audiência de Apresentação de Adolescente:15045 - local:21; Audiência Concentrada Protetiva:15049 - dirigida_por:36; Audiência Concentrada Protetiva:15049 - data_hora:12; Audiência Concentrada Protetiva:15049 - situacao_da_audiencia:15; Audiência Concentrada Protetiva:15049 - local:21; Audiência Concentrada Infracional:15050 - situacao_da_audiencia:15; Audiência Concentrada Infracional:15050 - dirigida_por:36; Audiência Concentrada Infracional:15050 - local:21; Audiência Concentrada Infracional:15050 - data_hora:12; Deferimento em Parte:15086 - nome_da_parte:1; Sessão Restaurativa:15102 - dirigida_por:36; Sessão Restaurativa:15102 - local:21; Sessão Restaurativa:15102 - data_hora:12; Sessão Restaurativa:15102 - situacao_da_audiencia:15; Gratuidade da Justiça:15103 - nome_da_parte:1; Audiência de Depoimento Especial:15188 - situacao_da_audiencia:15; Audiência de Depoimento Especial:15188 - data_hora:12; Audiência de Depoimento Especial:15188 - local:21; Audiência de Depoimento Especial:15188 - dirigida_por:36;' where ds_tipo='email_10ComplInv' 



email_01evnts_atvs
email_02TpCompl
email_03evnts
email_04evnts_pje
email_05ElemDom


select 'client.tb_elemento_dominio-OK*'		, min(dt_atualizacao),max(dt_atualizacao), max(dt_atualizacao) - min(dt_atualizacao), (select count(1) from client.tb_elemento_dominio where dt_atualizacao=(select min(dt_atualizacao) from client.tb_elemento_dominio)) qtdinicial, (select count(1) from client.tb_elemento_dominio where dt_atualizacao>(select min(dt_atualizacao) from client.tb_elemento_dominio)) qtdInsert from client.tb_elemento_dominio union

select * from client.tb_elemento_dominio where dt_atualizacao>(select min(dt_atualizacao) from client.tb_elemento_dominio)


select lower(ds_valor),count(1),min(dt_atualizacao),max(dt_atualizacao)
from client.tb_elemento_dominio
group by 1 order by 2 desc







select 'client.tb_tipo_complement_dominio-OK'	, min(dt_atualizacao),max(dt_atualizacao), max(dt_atualizacao) - min(dt_atualizacao), (select count(1) from client.tb_tipo_complement_dominio where dt_atualizacao=(select min(dt_atualizacao) from client.tb_tipo_complement_dominio)) qtdinicial, (select count(1) from client.tb_tipo_complement_dominio where dt_atualizacao>(select min(dt_atualizacao) from client.tb_tipo_complement_dominio)) qtdInsert from client.tb_tipo_complement_dominio union


select td.cd_glossario "CD",td.ds_dominio,td.dt_atualizacao "dom",tad.dt_atualizacao "AppDom",ttcd.dt_atualizacao "TpComplDom",ttc.tp_tipo_complemento "Tp",ttc.ds_label,ttc.dt_atualizacao "TpCompl"
--select count(1) --19
from client.tb_tipo_complement_dominio ttcd 
join client.tb_aplicacao_dominio tad on tad.id_aplicacao_dominio=ttcd.id_aplicacao_dominio 
join client.tb_dominio td on td.id_dominio=tad.id_dominio 
join client.tb_tipo_complemento ttc on ttc.id_tipo_complemento=ttcd.id_tipo_complemento 
where 1=1
--and ttcd.dt_atualizacao>(select min(dt_atualizacao) from client.tb_tipo_complement_dominio)
and tad.id_aplicabilidade=150
--and td.cd_glossario<>ttc.cd_tipo_complemento 
--and ds_label<>ds_nome
order by ttcd.dt_atualizacao desc



SELECT * FROM datajud_sgt.tb_relat_email order by 1


ALTER TABLE client.tb_tipo_complement_dominio ADD dt_atualizacao timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE client.tb_aplicacao_complemento ADD dt_atualizacao timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE client.tb_aplicacao_movimento ADD dt_atualizacao timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE client.tb_aplicacao_dominio ADD dt_atualizacao timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE client.tb_tipo_complemento ADD dt_atualizacao timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE client.tb_elemento_dominio ADD dt_atualizacao timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE client.tb_dominio ADD dt_atualizacao timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE core.tb_evento ADD dt_atualizacao timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP;


update client.tb_tipo_complement_dominio set dt_atualizacao='2020-10-10 10:10:10' where dt_atualizacao>(select min(dt_atualizacao) from client.tb_tipo_complemento);
update client.tb_aplicacao_complemento set dt_atualizacao='2020-10-10 10:10:10' where dt_atualizacao>(select min(dt_atualizacao) from client.tb_tipo_complemento);
update client.tb_aplicacao_movimento set dt_atualizacao='2020-10-10 10:10:10' where dt_atualizacao>(select min(dt_atualizacao) from client.tb_tipo_complemento);
update client.tb_aplicacao_dominio set dt_atualizacao='2020-10-10 10:10:10' where dt_atualizacao>(select min(dt_atualizacao) from client.tb_tipo_complemento);
update client.tb_tipo_complemento set dt_atualizacao='2020-10-10 10:10:10' where dt_atualizacao>(select min(dt_atualizacao) from client.tb_tipo_complemento);
update client.tb_elemento_dominio set dt_atualizacao='2020-10-10 10:10:10' where dt_atualizacao>(select min(dt_atualizacao) from client.tb_tipo_complemento);
update client.tb_dominio set dt_atualizacao='2020-10-10 10:10:10' where dt_atualizacao>(select min(dt_atualizacao) from client.tb_tipo_complemento);
update core.tb_evento set dt_atualizacao='2020-10-10 10:10:10' where dt_atualizacao>(select min(dt_atualizacao) from client.tb_tipo_complemento);

--select * from core.tb_evento te order by 1 desc

--select * from client.tb_aplicacao_movimento where dt_atualizacao>(select min(dt_atualizacao) from client.tb_aplicacao_movimento)


select tam.*
from client.tb_aplicacao_complemento tac 
join client.tb_aplicacao_movimento tam on tam.id_aplicacao_movimento=tac.id_aplicacao_movimento 
join client.tb_tipo_complemento ttc on ttc.id_tipo_complemento=tac.id_tipo_complemento 
--where tac.dt_atualizacao>(select min(dt_atualizacao) from client.tb_aplicacao_complemento)
--order by tac.dt_atualizacao desc
order by tam.dt_atualizacao desc




select * 
from client.tb_aplicacao_complemento tac 
where in_multivalorado 


select ttc.* 

select tam.*
from client.tb_aplicacao_complemento tac 
join client.tb_aplicacao_movimento tam on tam.id_aplicacao_movimento=tac.id_aplicacao_movimento 
join client.tb_tipo_complemento ttc on ttc.id_tipo_complemento=tac.id_tipo_complemento 
where cd_tipo_complemento='14'
--where in_multivalorado 
--order by tac.dt_atualizacao desc
order by ttc.dt_atualizacao desc


select distinct td.*
--select *
from client.tb_aplicacao_dominio tad
join client.tb_dominio td on td.id_dominio=tad.id_dominio 
join client.tb_elemento_dominio ted on ted.id_dominio=td.id_dominio 
order by ted.dt_atualizacao desc


select * from client.tb_aplicacao_movimento where dt_atualizacao>(select min(dt_atualizacao) from client.tb_aplicacao_movimento)


select * from client.tb_aplicacao_dominio order by dt_atualizacao desc		--2
select * from client.tb_aplicacao_movimento order by dt_atualizacao desc	--1
select * from client.tb_dominio order by dt_atualizacao desc			--2
select * from client.tb_elemento_dominio order by dt_atualizacao desc		--2
select * from core.tb_evento order by dt_atualizacao desc			--1





select cd_tipo_complemento,count(1)
from client.tb_aplicacao_complemento tac 
join client.tb_aplicacao_movimento tam on tam.id_aplicacao_movimento=tac.id_aplicacao_movimento 
join client.tb_tipo_complemento ttc on ttc.id_tipo_complemento=tac.id_tipo_complemento 
group by 1 order by 2 desc




select * from client.tb_elemento_dominio ted order by dt_atualizacao desc

366	facilitador
365	em continuação
267	por declínio de competência entre instâncias do mesmo tribunal
367	em razão de criação de novo tribunal



select * from client.tb_elemento_dominio ted
order by 1desc

order by cd_glossario::int

order by dt_atualizacao desc



with teste as (
select 12 cod, 'antecipada' nome union 
select 11, 'cancelada' union 
select 15, 'convertida em diligência' union 
select 9, 'designada' union 
select 365, 'Em continuação' union 
select 14, 'não-realizada' union 
select 13, 'realizada' union 
select 10, 'redesignada' union 
select 188, 'Conciliador(a)' union 
select 366, 'Facilitador' union 
select 185, 'Juiz(a)' union 
select 186, 'Juiz(a) leigo(a)' union 
select 187, 'Mediador(a)')
select *
from client.tb_elemento_dominio ted
right join teste t on lower(t.nome)=lower(ted.ds_valor)


with teste as (
select 181 cod, 'situacao_da_audiencia' nome union 
select 222, 'local' union 
select 223, 'data_hora' union 
select 228, 'dirigida_por')
select *
from client.tb_tipo_complemento ttc 
join teste t on lower(t.nome)=lower(ds_label)
order by ttc.dt_atualizacao desc




select * from client.tb_aplicacao_complemento where dt_atualizacao>(select min(dt_atualizacao) from client.tb_aplicacao_complemento)

select * from client.tb_aplicacao_complemento order by id_aplicacao_complemento desc

select * from client.tb_aplicacao_complemento 
where in_multivalorado 
order by id_aplicacao_complemento desc

insert into client.tb_aplicacao_complemento (id_aplicacao_complemento,id_aplicacao_movimento,id_tipo_complemento) values (10869,16489,40);
insert into client.tb_aplicacao_complemento (id_aplicacao_complemento,id_aplicacao_movimento,id_tipo_complemento) values (10870,16489,49);




select * from client.tb_elemento_dominio ted order by dt_atualizacao desc



select * from client.tb_aplicacao_complemento 
where in_multivalorado 
order by id_aplicacao_complemento desc



select *
from client.tb_aplicacao_complemento tac 
join client.tb_aplicacao_movimento tam on tam.id_aplicacao_movimento=tac.id_aplicacao_movimento 
join client.tb_tipo_complemento ttc on ttc.id_tipo_complemento=tac.id_tipo_complemento 
where 1=1
and in_multivalorado 
and ds_label='nome_da_parte'
and tam.id_aplicabilidade=150





select *
from client.tb_aplicacao_complemento tac 
join client.tb_aplicacao_movimento tam on tam.id_aplicacao_movimento=tac.id_aplicacao_movimento 
join client.tb_tipo_complemento ttc on ttc.id_tipo_complemento=tac.id_tipo_complemento 
join core.tb_evento te on te.id_evento=tam.id_evento 
where 1=1
and te.cd_evento ='12739'
and in_multivalorado 
and ds_label='nome_da_parte'
and tam.id_aplicabilidade=150






select te.*
from client.tb_aplicacao_complemento tac 
join client.tb_aplicacao_movimento tam on tam.id_aplicacao_movimento=tac.id_aplicacao_movimento 
join client.tb_tipo_complemento ttc on ttc.id_tipo_complemento=tac.id_tipo_complemento 
join core.tb_evento te on te.id_evento=tam.id_evento 
where 1=1
and in_multivalorado 
and te.cd_evento ='12739'
and ds_label='nome_da_parte'
and tam.id_aplicabilidade=150


391,353,818



na hml
truncate table datajud_sgt.tb_relat_email;

select * from datajud_sgt.tb_relat_email tre 


INSERT INTO datajud_sgt.tb_relat_email (ds_tipo,ds_nome,dt_atualizacao,dt_email,in_pronto) VALUES
	 ('email_TpCompl','nome_do_magistrado:40; nome_do_magistrado:40; Tipo_Movimentacao_Partido:37; Situacao_Candidato:38; membro_do_colegiado:54; ','2023-07-10 16:52:42.091683',NULL,NULL),
	 ('email_ElemDom','tipo_de_medida_protetiva:32 - Acompanhamento psicossocial do agressor, por meio de atendimento individual e/ou em grupo de apoio (art. 22, VII):259; tipo_de_medida_protetiva:32 - Comparecimento do agressor a programas de recuperação e reeducação (art. 22, VI):258; tipo_de_medida_protetiva:32 - Determinar a separação de corpos (art. 23, IV):265; tipo_de_medida_protetiva:32 - outras medidas protetivas de urgência (art. 22, § 1º - LMP):257; tipo_de_medida_protetiva:32 - Prestação de caução provisória, mediante depósito judicial, por perdas e danos materiais decorrentes da prática de violência doméstica e familiar contra a ofendida (art. 24, IV).:264; tipo_de_medida_protetiva:32 - Proibição temporária para a celebração de atos e contratos de compra, venda e locação de propriedade comum, salvo expressa autorização judicial (art. 24, II):269; tipo_de_medida_protetiva:32 - reabilitação do agressor (art. 35, V - LMP):255; tipo_de_medida_protetiva:32 - Restituição de bens indevidamente subtraídos pelo agressor à ofendida (art. 24, I):261; tipo_de_medida_protetiva:32 - Suspensão de procurações conferidas pela ofendida ao agressor (art. 24, III):263; tipo_de_medida_protetiva:32 - utilização de monitoramento eletrônico ou outros dispositivos (art. 9º, § 5º - LMP):256; tipo_de_peticao:19 - Agravo de Instrumento em Agravo de Petição:202; tipo_de_peticao:19 - Agravo de Instrumento em Recurso de Revista:203; tipo_de_peticao:19 - Agravo de Instrumento em Recurso Ordinário:204; tipo_de_peticao:19 - Agravo de Instrumento em Recurso Ordinário para o STF:205; tipo_de_peticao:19 - Agravo de Petição:206; tipo_de_peticao:19 - Antecipação de Tutela:207; tipo_de_peticao:19 - Arguição de Inconstitucionalidade:208; tipo_de_peticao:19 - Contraminuta:209; tipo_de_peticao:19 - Embargos:210; tipo_de_peticao:19 - Embargos em Ação Penal Militar:242; tipo_de_peticao:19 - Embargos Infringentes na Execução Fiscal:211; tipo_de_peticao:19 - Exceção de Impedimento:212; tipo_de_peticao:19 - Exceção de Incompetência:213; tipo_de_peticao:19 - Exceção de Suspeição:214; tipo_de_peticao:19 - Impugnação:215; tipo_de_peticao:19 - Impugnação ao Valor da Causa:219; tipo_de_peticao:19 - Impugnação aos Embargos na Execução Fiscal:220; tipo_de_peticao:19 - Impugnação à Adjudicação:216; tipo_de_peticao:19 - Impugnação à Arrematação:217; tipo_de_peticao:19 - Impugnação à Remição:218; tipo_de_peticao:19 - Incidente de Desconsideração de Personalidade Jurídica:221; tipo_de_peticao:19 - Incidente de Falsidade:222; tipo_de_peticao:19 - Recurso de Multa:223; tipo_de_peticao:19 - Recurso de Revista:224; tipo_de_peticao:19 - Recurso Eleitoral:243; tipo_de_peticao:19 - Recurso Eleitoral Criminal:244; tipo_de_peticao:19 - Renúncia de Prazo:268; tipo_de_peticao:19 - Tutela Antecipada Incidental:225; tipo_de_peticao:19 - Tutela Cautelar Incidental:226; tipo_de_peticao:19 - Tutela de Evidência:227; motivo_da_remessa:18 - Em razão de criação de novo Tribunal:367; motivo_da_remessa:18 - por declínio de competência entre instâncias do mesmo tribunal:267; tipo_de_documento:4 - Alvará de Soltura:230; tipo_de_documento:4 - Auto de Adjudicação/Arrematação:238; tipo_de_documento:4 - Auto de Leilão ou Praça Negativa:239; tipo_de_documento:4 - Carta de Adjudicação:240; tipo_de_documento:4 - Edital:229; tipo_de_documento:4 - Ficha Individual do Condenado:237; tipo_de_documento:4 - Guia de Recolhimento Penal:232; tipo_de_documento:4 - Laudo Pericial:266; tipo_de_documento:4 - Requisição de Honorários de Perito/Dativo:233; tipo_de_documento:4 - Salvo Conduto:231; tipo_de_documento:4 - Termo de Caução:234; tipo_de_documento:4 - Termo de Compromisso:235; tipo_de_documento:4 - Termo de Fiança:236; tipo_de_documento:4 - Termo/Auto de Penhora:241; situacao_da_audiencia:15 - Em continuação:365; tipo_de_audiencia:16 - Pública:228; dirigida_por:36 - Facilitador:366; ','2023-07-10 16:52:39.819793',NULL,NULL),
	 ('email_evnts','Cooperação Judiciária:15185; Mantida a Distribuição do Processo:12647; Unificação de Processos de Execução:12736; Desclassificação de Delito:12769; Impugnação ao Cumprimento de Sentença:14231; Descumprimento de Medida Protetiva:14681; Incidente ou Cautelar - Procedimento Resolvido:14702; Prorrogação de Medida Protetiva:14733; Homologação em Parte:14776; Revogação de Internação de Adolescente:15082; Manutenção de Internação Provisória:15083; Desinternação de Adolescente:15084; Deferimento em Parte:15086; Acolhimento de Embargos de Declaração:15162; Acolhimento em Parte de Embargos de Declaração:15163; Não Acolhimento de Embargos de Declaração:15164; Revogação do Acordo de Não Persecução Penal:12734; Revogação da Suspensão Condicional do Processo:12737; Medida Cautelar Diversa da Prisão:14683; Revogação da Transação Penal:15025; Homologação do Plano Individual de Atendimento (PIA):15201; Suspensão de Medida Socioeducativa:15079; Gratuidade da Justiça:15103; Substituição de Medida Socioeducativa:15078; Reavaliação de Medida Socioeducativa:15080; Busca e Apreensão de Adolescente:15081; Emenda à Inicial:15085; Manutenção da Medida Socioeducativa:15200; Determinação de Alteração ou Complementação do Plano Individual de Atendimento (PIA):15202; Ausência de Requerimento Administrativo Prévio:14848; Homologado o Pedido:12649; Não Homologado o Pedido:12650; Homologação de Acordo em Execução ou em Cumprimento de Sentença:14099; Composição Civil dos Danos:12616; Extinção de Punibilidade em Razão do Cumprimento de Acordo de Não Persecução Penal:12735; Remessa negociação consumidor.gov.br:12606; Recebimento negociação consumidor.gov.br:12607; Remessa para o CEJUSC ou Centros de Conciliação/Mediação:12614; Recebimento do CEJUSC ou Centros de Conciliação/Mediação:12619; Recebimento no CEJUSC ou Centros de Conciliação/Mediação:12621; Remessa para Câmara de Conciliação/Mediação:12622; Recebimento de Câmara de Conciliação/Mediação:12623; Conversão de Autos Físicos em Eletrônicos:14732; Iniciada Tramitação Direta entre MP e Autoridade Policial:14999; Finalizada Tramitação Direta entre MP e Autoridade Policial:15000; Sessão Restaurativa:15102; Cooperação Judiciária:15186; Audiência do art. 334 CPC:12624; Admonitória:12739; de Conciliação:12740; de Acolhimento:12741; de Custódia:12742; de Interrogatório:12743; de Justificação:12744; do art. 16 da Lei 11.340:12745; em Execução:12746; de Instrução:12749; de Instrução e Julgamento:12750; de Julgamento:12751; de Mediação:12752; Preliminar:12753; Audiência de Apresentação de Adolescente:15045; Audiência Concentrada Protetiva:15049; Audiência Concentrada Infracional:15050; Audiência de Depoimento Especial:15188; Erro ou Recusa na Comunicação:14961; De Liquidação, Cumprimento de Sentença ou Execução por Nulidade da Fase de Conhecimento :15168; Determinada/Designada:14903; Agendada:14904; Realizada:14905; Cancelada:14906; Reagendada:14907; Não Realizada:14908; Parcial:12608; Parcial:12609; ','2023-07-10 16:52:38.973488',NULL,NULL),
	 ('email_evnts_pje','Revogação:157 - (PJe); Denegação de prevenção:12320 - (PJe); Prorrogado prazo de conclusão:12332 - (PJe); Liminar Prejudicada:12359 - (PJe); Não-Homologação:12477 - (PJe); Homologação do Acordo de Não Persecução Penal:12733 - (PJe); Prestação de Serviços à Comunidade:12180 - (PJe); Justiça Restaurativa:12183 - (PJe); Arquivamento:12430 - (PJe); Devolução dos autos à origem :12472 - (PJe); Distribuição:12474 - (PJe); Prejudicado:12459 - (PJe); Perda do objeto:12325 - (PJe); Pedido conhecido em parte e procedente:12329 - (PJe); Pedido conhecido em parte e procedente em parte:12330 - (PJe); Pedido conhecido em parte e improcedente:12331 - (PJe); Respondida:12327 - (PJe); Respondida em parte:12328 - (PJe); Procedência:12451 - (PJe); procedência parcial:12452 - (PJe); improcedência:12453 - (PJe); Pedido de inclusão:12311 - (PJe); Retirar pedido de inclusão:12312 - (PJe); Pedido de inclusão em pauta virtual:12313 - (PJe); Retirar pedido de pauta virtual:12314 - (PJe); Auxiliar da Justiça:12522 - (PJe); Liquidação iniciada:11384 - (PJe); Retificação de movimento:11983 - (PJe); Inclusão do processo para julgamento eletrônico:12101 - (PJe); Requisição de Pagamento:12165 - (PJe); Inclusão no Juízo 100% Digital:14736 - (PJe); Exclusão do Juízo 100% Digital:14737 - (PJe); Paga:12169 - (PJe); Questão de Ordem:12202 - (PJe); Conciliador:12523 - (PJe); Juiz Leigo:12524 - (PJe); Mediador:12525 - (PJe); Conciliação:12528 - (PJe); Frutífera:12531 - (PJe); Infrutífera:12532 - (PJe); Conciliação:12530 - (PJe); Infrutífera:12534 - (PJe); Conciliação:12526 - (PJe); Mediação:12527 - (PJe); ','2023-07-10 16:52:38.910783',NULL,NULL);




client.tb_aplicacao_complemento-OK



select * from core.tb_evento te where cd_evento ='12534'




select * from client.tb_elemento_dominio where dt_atualizacao>(select min(dt_atualizacao) from client.tb_elemento_dominio)
order by dt_atualizacao desc





select lower(ds_valor),cd_glossario,count(1)
from client.tb_elemento_dominio
group by 1,2 order by 3 desc


select *
from client.tb_elemento_dominio
where lower(ds_valor) in (
select lower(ds_valor)
from client.tb_elemento_dominio
group by 1 
having count(1)>1
)
order by lower(ds_valor)






select 'client.tb_tipo_complement_dominio-OK'	, min(dt_atualizacao),max(dt_atualizacao), max(dt_atualizacao) - min(dt_atualizacao), (select count(1) from client.tb_tipo_complement_dominio where dt_atualizacao=(select min(dt_atualizacao) from client.tb_tipo_complement_dominio)) qtdinicial, (


select * 
from client.tb_tipo_complement_dominio ttcd  
join client.tb_aplicacao_dominio tad on tad.id_aplicacao_dominio=ttcd.id_aplicacao_dominio
order by ttcd.dt_atualizacao desc


where dt_atualizacao>(select min(dt_atualizacao) from client.tb_tipo_complement_dominio)




select * 
from client.tb_tipo_complement_dominio ttcd  
join client.tb_aplicacao_dominio tad on tad.id_aplicacao_dominio=ttcd.id_aplicacao_dominio
order by ttcd.dt_atualizacao desc



select *
from client.tb_aplicacao_movimento tam 
join core.tb_evento te on te.id_evento=tam.id_evento 
where 1=1
and tam.id_aplicabilidade=150
and te.cd_evento='12624'



select ttc.dt_atualizacao tipo_compl,ttcd.dt_atualizacao tp_compl_dom,tac.dt_atualizacao app_compl
,tam.dt_atualizacao app_movto,te.dt_atualizacao evento,tad.dt_atualizacao app_dominio

select *

select td.cd_glossario,td.ds_dominio 
from client.tb_tipo_complemento ttc 
join client.tb_tipo_complement_dominio ttcd on ttcd.id_tipo_complemento=ttc.id_tipo_complemento
join client.tb_aplicacao_complemento tac on tac.id_tipo_complemento=ttc.id_tipo_complemento
join client.tb_aplicacao_movimento tam on tam.id_aplicacao_movimento=tac.id_aplicacao_movimento
join core.tb_evento te on te.id_evento=tam.id_evento 
join client.tb_aplicacao_dominio tad on tad.id_aplicacao_dominio=ttcd.id_aplicacao_dominio 
join client.tb_dominio td on td.id_dominio=tad.id_dominio
where 1=1
and te.cd_evento='12624'
and tam.in_ativo and te.in_ativo and ttc.in_ativo 
and tam.id_aplicabilidade=150
and tad.id_aplicabilidade=150












select * from datajud_sgt.tb_relat_email order by 3

truncate table datajud_sgt.tb_relat_email



select * from datajud_sgt.tb_relat_email 
delete from datajud_sgt.tb_relat_email 
where to_char(dt_atualizacao,'yyyy-mm-dd')<>'2023-07-24'
order by 1

select * from datajud_sgt.tb_relat_email 
where to_char(dt_atualizacao,'yyyy-mm-dd')='2023-07-24'
order by 1


em produção --->
INSERT INTO datajud_sgt.tb_relat_email (ds_tipo,ds_nome,dt_atualizacao,dt_email,in_pronto) VALUES
	 ('email_01evnts_atvs','Não-Homologação de prisão em flagrante:146; Levantamento da Suspensão ou Dessobrestamento:12067; Revogação da Suspensão do Processo:11002; Acordo em execução ou em cumprimento de sentença:377; Progressão de Medida Sócio-Educativa:10963; pagamento:12447; Regressão de Medida Sócio-Educativa:10962; Conversão de Agravo de Instrumento em Agravo Retido:244; Suspensão Condicional do Processo:12184; Transação Penal:884; Levantamento da Suspensão ou Dessobrestamento:12068; Assistência Judiciária Gratuita:11024; Convenção das Partes para Cumprimento Voluntário da obrigação:11014; Não-Homologação de prisão em flagrante:146; Cumprimento de Suspensão ou Sobrestamento:12065; Realização de Procedimento Restaurativo:12759; Não-Homologação de prisão em flagrante:146; Não-Homologação de prisão em flagrante:146; Não-Homologação de prisão em flagrante:146; Não-Homologação de prisão em flagrante:146; Não-Homologação de prisão em flagrante:146; Não-Homologação de prisão em flagrante:146; Não-Homologação de prisão em flagrante:146; ','2023-07-24 20:00:08.743468','2023-07-25 16:21:30.13489',NULL),
	 ('email_02TpCompl','nome_do_magistrado:40; nome_do_magistrado:40; Tipo_Movimentacao_Partido:37; Situacao_Candidato:38; membro_do_colegiado:54; ','2023-07-24 20:00:12.0094','2023-07-25 16:21:30.13489',NULL),
	 ('email_03evnts','Cooperação Judiciária:15185; Mantida a Distribuição do Processo:12647; Unificação de Processos de Execução:12736; Desclassificação de Delito:12769; Impugnação ao Cumprimento de Sentença:14231; Descumprimento de Medida Protetiva:14681; Incidente ou Cautelar - Procedimento Resolvido:14702; Prorrogação de Medida Protetiva:14733; Homologação em Parte:14776; Revogação de Internação de Adolescente:15082; Manutenção de Internação Provisória:15083; Desinternação de Adolescente:15084; Deferimento em Parte:15086; Acolhimento de Embargos de Declaração:15162; Acolhimento em Parte de Embargos de Declaração:15163; Não Acolhimento de Embargos de Declaração:15164; Revogação do Acordo de Não Persecução Penal:12734; Revogação da Suspensão Condicional do Processo:12737; Medida Cautelar Diversa da Prisão:14683; Revogação da Transação Penal:15025; Homologação do Plano Individual de Atendimento (PIA):15201; Suspensão de Medida Socioeducativa:15079; Gratuidade da Justiça:15103; Substituição de Medida Socioeducativa:15078; Reavaliação de Medida Socioeducativa:15080; Busca e Apreensão de Adolescente:15081; Emenda à Inicial:15085; Manutenção da Medida Socioeducativa:15200; Determinação de Alteração ou Complementação do Plano Individual de Atendimento (PIA):15202; Ausência de Requerimento Administrativo Prévio:14848; Homologado o Pedido:12649; Não Homologado o Pedido:12650; Homologação de Acordo em Execução ou em Cumprimento de Sentença:14099; Composição Civil dos Danos:12616; Extinção de Punibilidade em Razão do Cumprimento de Acordo de Não Persecução Penal:12735; Remessa negociação consumidor.gov.br:12606; Recebimento negociação consumidor.gov.br:12607; Recebimento no CEJUSC ou Centros de Conciliação/Mediação:12621; Remessa para Câmara de Conciliação/Mediação:12622; Recebimento de Câmara de Conciliação/Mediação:12623; Conversão de Autos Físicos em Eletrônicos:14732; Iniciada Tramitação Direta entre MP e Autoridade Policial:14999; Finalizada Tramitação Direta entre MP e Autoridade Policial:15000; Sessão Restaurativa:15102; Cooperação Judiciária:15186; Audiência do art. 334 CPC:12624; Admonitória:12739; de Conciliação:12740; de Acolhimento:12741; de Custódia:12742; de Interrogatório:12743; de Justificação:12744; do art. 16 da Lei 11.340:12745; em Execução:12746; de Instrução:12749; de Instrução e Julgamento:12750; de Julgamento:12751; de Mediação:12752; Preliminar:12753; Audiência de Apresentação de Adolescente:15045; Audiência Concentrada Protetiva:15049; Audiência Concentrada Infracional:15050; Audiência de Depoimento Especial:15188; Erro ou Recusa na Comunicação:14961; De Liquidação, Cumprimento de Sentença ou Execução por Nulidade da Fase de Conhecimento :15168; Determinada/Designada:14903; Agendada:14904; Realizada:14905; Cancelada:14906; Reagendada:14907; Não Realizada:14908; Parcial:12608; Parcial:12609; ','2023-07-24 20:00:08.743462','2023-07-25 16:21:30.13489',NULL),
	 ('email_04evnts_pje','Revogação:157 - (PJe); Denegação de prevenção:12320 - (PJe); Prorrogado prazo de conclusão:12332 - (PJe); Liminar Prejudicada:12359 - (PJe); Não-Homologação:12477 - (PJe); Homologação do Acordo de Não Persecução Penal:12733 - (PJe); Prestação de Serviços à Comunidade:12180 - (PJe); Justiça Restaurativa:12183 - (PJe); Arquivamento:12430 - (PJe); Devolução dos autos à origem :12472 - (PJe); Distribuição:12474 - (PJe); Prejudicado:12459 - (PJe); Perda do objeto:12325 - (PJe); Pedido conhecido em parte e procedente:12329 - (PJe); Pedido conhecido em parte e procedente em parte:12330 - (PJe); Pedido conhecido em parte e improcedente:12331 - (PJe); Respondida:12327 - (PJe); Respondida em parte:12328 - (PJe); Procedência:12451 - (PJe); procedência parcial:12452 - (PJe); improcedência:12453 - (PJe); Pedido de inclusão:12311 - (PJe); Retirar pedido de inclusão:12312 - (PJe); Pedido de inclusão em pauta virtual:12313 - (PJe); Retirar pedido de pauta virtual:12314 - (PJe); Auxiliar da Justiça:12522 - (PJe); Liquidação iniciada:11384 - (PJe); Retificação de movimento:11983 - (PJe); Inclusão do processo para julgamento eletrônico:12101 - (PJe); Requisição de Pagamento:12165 - (PJe); Inclusão no Juízo 100% Digital:14736 - (PJe); Exclusão do Juízo 100% Digital:14737 - (PJe); Paga:12169 - (PJe); Questão de Ordem:12202 - (PJe); Conciliador:12523 - (PJe); Juiz Leigo:12524 - (PJe); Mediador:12525 - (PJe); Conciliação:12528 - (PJe); Frutífera:12531 - (PJe); Infrutífera:12532 - (PJe); Conciliação:12530 - (PJe); Infrutífera:12534 - (PJe); Conciliação:12526 - (PJe); Mediação:12527 - (PJe); ','2023-07-24 20:00:09.037782','2023-07-25 16:21:30.13489',NULL),
	 ('email_05ElemDom','tipo_de_medida_protetiva:32 - Acompanhamento psicossocial do agressor, por meio de atendimento individual e/ou em grupo de apoio (art. 22, VII):259; tipo_de_medida_protetiva:32 - Comparecimento do agressor a programas de recuperação e reeducação (art. 22, VI):258; tipo_de_medida_protetiva:32 - Determinar a separação de corpos (art. 23, IV):265; tipo_de_medida_protetiva:32 - outras medidas protetivas de urgência (art. 22, § 1º - LMP):257; tipo_de_medida_protetiva:32 - Prestação de caução provisória, mediante depósito judicial, por perdas e danos materiais decorrentes da prática de violência doméstica e familiar contra a ofendida (art. 24, IV).:264; tipo_de_medida_protetiva:32 - Proibição temporária para a celebração de atos e contratos de compra, venda e locação de propriedade comum, salvo expressa autorização judicial (art. 24, II):269; tipo_de_medida_protetiva:32 - reabilitação do agressor (art. 35, V - LMP):255; tipo_de_medida_protetiva:32 - Restituição de bens indevidamente subtraídos pelo agressor à ofendida (art. 24, I):261; tipo_de_medida_protetiva:32 - Suspensão de procurações conferidas pela ofendida ao agressor (art. 24, III):263; tipo_de_medida_protetiva:32 - utilização de monitoramento eletrônico ou outros dispositivos (art. 9º, § 5º - LMP):256; tipo_de_peticao:19 - Agravo de Instrumento em Agravo de Petição:202; tipo_de_peticao:19 - Agravo de Instrumento em Recurso de Revista:203; tipo_de_peticao:19 - Agravo de Instrumento em Recurso Ordinário:204; tipo_de_peticao:19 - Agravo de Instrumento em Recurso Ordinário para o STF:205; tipo_de_peticao:19 - Agravo de Petição:206; tipo_de_peticao:19 - Antecipação de Tutela:207; tipo_de_peticao:19 - Arguição de Inconstitucionalidade:208; tipo_de_peticao:19 - Contraminuta:209; tipo_de_peticao:19 - Embargos:210; tipo_de_peticao:19 - Embargos em Ação Penal Militar:242; tipo_de_peticao:19 - Embargos Infringentes na Execução Fiscal:211; tipo_de_peticao:19 - Exceção de Impedimento:212; tipo_de_peticao:19 - Exceção de Incompetência:213; tipo_de_peticao:19 - Exceção de Suspeição:214; tipo_de_peticao:19 - Impugnação:215; tipo_de_peticao:19 - Impugnação ao Valor da Causa:219; tipo_de_peticao:19 - Impugnação aos Embargos na Execução Fiscal:220; tipo_de_peticao:19 - Impugnação à Adjudicação:216; tipo_de_peticao:19 - Impugnação à Arrematação:217; tipo_de_peticao:19 - Impugnação à Remição:218; tipo_de_peticao:19 - Incidente de Desconsideração de Personalidade Jurídica:221; tipo_de_peticao:19 - Incidente de Falsidade:222; tipo_de_peticao:19 - Recurso de Multa:223; tipo_de_peticao:19 - Recurso de Revista:224; tipo_de_peticao:19 - Recurso Eleitoral:243; tipo_de_peticao:19 - Recurso Eleitoral Criminal:244; tipo_de_peticao:19 - Renúncia de Prazo:268; tipo_de_peticao:19 - Tutela Antecipada Incidental:225; tipo_de_peticao:19 - Tutela Cautelar Incidental:226; tipo_de_peticao:19 - Tutela de Evidência:227; motivo_da_remessa:18 - Em razão de criação de novo Tribunal:367; motivo_da_remessa:18 - por declínio de competência entre instâncias do mesmo tribunal:267; tipo_de_documento:4 - Alvará de Soltura:230; tipo_de_documento:4 - Auto de Adjudicação/Arrematação:238; tipo_de_documento:4 - Auto de Leilão ou Praça Negativa:239; tipo_de_documento:4 - Carta de Adjudicação:240; tipo_de_documento:4 - Edital:229; tipo_de_documento:4 - Ficha Individual do Condenado:237; tipo_de_documento:4 - Guia de Recolhimento Penal:232; tipo_de_documento:4 - Laudo Pericial:266; tipo_de_documento:4 - Requisição de Honorários de Perito/Dativo:233; tipo_de_documento:4 - Salvo Conduto:231; tipo_de_documento:4 - Termo de Caução:234; tipo_de_documento:4 - Termo de Compromisso:235; tipo_de_documento:4 - Termo de Fiança:236; tipo_de_documento:4 - Termo/Auto de Penhora:241; situacao_da_audiencia:15 - Em continuação:365; tipo_de_audiencia:16 - Pública:228; dirigida_por:36 - Facilitador:366; ','2023-07-24 20:00:09.783707','2023-07-25 16:21:30.13489',NULL);


em localhost---->
"ds_tipo"¬"ds_nome"¬"dt_atualizacao"¬"dt_email"¬"in_pronto"
email_01evnts_atvs¬Não-Homologação de prisão em flagrante:146; Levantamento da Suspensão ou Dessobrestamento:12067; Revogação da Suspensão do Processo:11002; Acordo em execução ou em cumprimento de sentença:377; Progressão de Medida Sócio-Educativa:10963; pagamento:12447; Regressão de Medida Sócio-Educativa:10962; Conversão de Agravo de Instrumento em Agravo Retido:244; Suspensão Condicional do Processo:12184; Transação Penal:884; Levantamento da Suspensão ou Dessobrestamento:12068; Assistência Judiciária Gratuita:11024; Convenção das Partes para Cumprimento Voluntário da obrigação:11014; Não-Homologação de prisão em flagrante:146; Mudança de Classe Processual:10966; Cumprimento de Suspensão ou Sobrestamento:12065; Realização de Procedimento Restaurativo:12759; Não-Homologação de prisão em flagrante:146; ¬2023-07-28 09:31:09.024¬¬
email_02TpCompl¬nome_do_magistrado:40; nome_do_magistrado:40; Tipo_Movimentacao_Partido:37; Situacao_Candidato:38; membro_do_colegiado:54; ¬2023-07-28 09:31:09.243¬¬
email_03evnts¬Cooperação Judiciária:15185; Mantida a Distribuição do Processo:12647; Unificação de Processos de Execução:12736; Desclassificação de Delito:12769; Impugnação ao Cumprimento de Sentença:14231; Descumprimento de Medida Protetiva:14681; Incidente ou Cautelar - Procedimento Resolvido:14702; Prorrogação de Medida Protetiva:14733; Homologação em Parte:14776; Revogação de Internação de Adolescente:15082; Manutenção de Internação Provisória:15083; Desinternação de Adolescente:15084; Deferimento em Parte:15086; Acolhimento de Embargos de Declaração:15162; Acolhimento em Parte de Embargos de Declaração:15163; Não Acolhimento de Embargos de Declaração:15164; Revogação do Acordo de Não Persecução Penal:12734; Revogação da Suspensão Condicional do Processo:12737; Medida Cautelar Diversa da Prisão:14683; Revogação da Transação Penal:15025; Homologação do Plano Individual de Atendimento (PIA):15201; Suspensão de Medida Socioeducativa:15079; Gratuidade da Justiça:15103; Substituição de Medida Socioeducativa:15078; Reavaliação de Medida Socioeducativa:15080; Busca e Apreensão de Adolescente:15081; Emenda à Inicial:15085; Manutenção da Medida Socioeducativa:15200; Determinação de Alteração ou Complementação do Plano Individual de Atendimento (PIA):15202; Acolhimento:14232; Não-Acolhimento:14233; Acolhimento em Parte:14234; Rejeição:14235; Ausência de Requerimento Administrativo Prévio:14848; Homologado o Pedido:12649; Não Homologado o Pedido:12650; Homologação de Acordo em Execução ou em Cumprimento de Sentença:14099; Composição Civil dos Danos:12616; Extinção de Punibilidade em Razão do Cumprimento de Acordo de Não Persecução Penal:12735; Remessa negociação consumidor.gov.br:12606; Recebimento negociação consumidor.gov.br:12607; Remessa para o CEJUSC ou Centros de Conciliação/Mediação:12614; Recebimento do CEJUSC ou Centros de Conciliação/Mediação:12619; Recebimento no CEJUSC ou Centros de Conciliação/Mediação:12621; Remessa para Câmara de Conciliação/Mediação:12622; Recebimento de Câmara de Conciliação/Mediação:12623; Conversão de Autos Físicos em Eletrônicos:14732; Inclusão no Juízo 100% Digital:14736; Exclusão do Juízo 100% Digital:14737; Retificação de Classe Processual:14738; Evolução da Classe Processual:14739; Iniciada Tramitação Direta entre MP e Autoridade Policial:14999; Finalizada Tramitação Direta entre MP e Autoridade Policial:15000; Sessão Restaurativa:15102; Cooperação Judiciária:15186; Audiência do art. 334 CPC:12624; Admonitória:12739; de Conciliação:12740; de Acolhimento:12741; de Custódia:12742; de Interrogatório:12743; de Justificação:12744; do art. 16 da Lei 11.340:12745; em Execução:12746; de Instrução:12749; de Instrução e Julgamento:12750; de Julgamento:12751; de Mediação:12752; Preliminar:12753; Audiência de Apresentação de Adolescente:15045; Audiência Concentrada Protetiva:15049; Audiência Concentrada Infracional:15050; Audiência de Depoimento Especial:15188; Erro ou Recusa na Comunicação:14961; De Liquidação, Cumprimento de Sentença ou Execução por Nulidade da Fase de Conhecimento :15168; Determinada/Designada:14903; Agendada:14904; Realizada:14905; Cancelada:14906; Reagendada:14907; Não Realizada:14908; Parcial:12608; Parcial:12609; ¬2023-07-28 09:31:09.154¬¬
email_04evnts_pje¬Revogação:157 - (PJe); Denegação de prevenção:12320 - (PJe); Prorrogado prazo de conclusão:12332 - (PJe); Liminar Prejudicada:12359 - (PJe); Não-Homologação:12477 - (PJe); Homologação do Acordo de Não Persecução Penal:12733 - (PJe); Prestação de Serviços à Comunidade:12180 - (PJe); Justiça Restaurativa:12183 - (PJe); Arquivamento:12430 - (PJe); Devolução dos autos à origem :12472 - (PJe); Distribuição:12474 - (PJe); Prejudicado:12459 - (PJe); Perda do objeto:12325 - (PJe); Pedido conhecido em parte e procedente:12329 - (PJe); Pedido conhecido em parte e procedente em parte:12330 - (PJe); Pedido conhecido em parte e improcedente:12331 - (PJe); Respondida:12327 - (PJe); Respondida em parte:12328 - (PJe); Procedência:12451 - (PJe); procedência parcial:12452 - (PJe); improcedência:12453 - (PJe); Pedido de inclusão:12311 - (PJe); Retirar pedido de inclusão:12312 - (PJe); Pedido de inclusão em pauta virtual:12313 - (PJe); Retirar pedido de pauta virtual:12314 - (PJe); Auxiliar da Justiça:12522 - (PJe); Liquidação iniciada:11384 - (PJe); Execução/Cumprimento de Sentença Iniciada (o):11385 - (PJe); Retificação de movimento:11983 - (PJe); Inclusão do processo para julgamento eletrônico:12101 - (PJe); Requisição de Pagamento:12165 - (PJe); Paga:12169 - (PJe); Questão de Ordem:12202 - (PJe); Conciliador:12523 - (PJe); Juiz Leigo:12524 - (PJe); Mediador:12525 - (PJe); Conciliação:12528 - (PJe); Frutífera:12531 - (PJe); Infrutífera:12532 - (PJe); Conciliação:12530 - (PJe); Infrutífera:12534 - (PJe); Conciliação:12526 - (PJe); Mediação:12527 - (PJe); ¬2023-07-28 09:31:09.053¬¬
email_05ElemDom¬tipo_de_medida_protetiva:32 - Acompanhamento psicossocial do agressor, por meio de atendimento individual e/ou em grupo de apoio (art. 22, VII):259; tipo_de_medida_protetiva:32 - Comparecimento do agressor a programas de recuperação e reeducação (art. 22, VI):258; tipo_de_medida_protetiva:32 - Determinar a separação de corpos (art. 23, IV):265; tipo_de_medida_protetiva:32 - outras medidas protetivas de urgência (art. 22, § 1º - LMP):257; tipo_de_medida_protetiva:32 - Prestação de caução provisória, mediante depósito judicial, por perdas e danos materiais decorrentes da prática de violência doméstica e familiar contra a ofendida (art. 24, IV).:264; tipo_de_medida_protetiva:32 - Proibição temporária para a celebração de atos e contratos de compra, venda e locação de propriedade comum, salvo expressa autorização judicial (art. 24, II):269; tipo_de_medida_protetiva:32 - reabilitação do agressor (art. 35, V - LMP):255; tipo_de_medida_protetiva:32 - Restituição de bens indevidamente subtraídos pelo agressor à ofendida (art. 24, I):261; tipo_de_medida_protetiva:32 - Suspensão de procurações conferidas pela ofendida ao agressor (art. 24, III):263; tipo_de_medida_protetiva:32 - utilização de monitoramento eletrônico ou outros dispositivos (art. 9º, § 5º - LMP):256; tipo_de_peticao:19 - Agravo de Instrumento em Agravo de Petição:202; tipo_de_peticao:19 - Agravo de Instrumento em Recurso de Revista:203; tipo_de_peticao:19 - Agravo de Instrumento em Recurso Ordinário:204; tipo_de_peticao:19 - Agravo de Instrumento em Recurso Ordinário para o STF:205; tipo_de_peticao:19 - Agravo de Petição:206; tipo_de_peticao:19 - Antecipação de Tutela:207; tipo_de_peticao:19 - Arguição de Inconstitucionalidade:208; tipo_de_peticao:19 - Contraminuta:209; tipo_de_peticao:19 - Embargos:210; tipo_de_peticao:19 - Embargos em Ação Penal Militar:242; tipo_de_peticao:19 - Embargos Infringentes na Execução Fiscal:211; tipo_de_peticao:19 - Exceção de Impedimento:212; tipo_de_peticao:19 - Exceção de Incompetência:213; tipo_de_peticao:19 - Exceção de Suspeição:214; tipo_de_peticao:19 - Impugnação:215; tipo_de_peticao:19 - Impugnação ao Valor da Causa:219; tipo_de_peticao:19 - Impugnação aos Embargos na Execução Fiscal:220; tipo_de_peticao:19 - Impugnação à Adjudicação:216; tipo_de_peticao:19 - Impugnação à Arrematação:217; tipo_de_peticao:19 - Impugnação à Remição:218; tipo_de_peticao:19 - Incidente de Desconsideração de Personalidade Jurídica:221; tipo_de_peticao:19 - Incidente de Falsidade:222; tipo_de_peticao:19 - Recurso de Multa:223; tipo_de_peticao:19 - Recurso de Revista:224; tipo_de_peticao:19 - Recurso Eleitoral:243; tipo_de_peticao:19 - Recurso Eleitoral Criminal:244; tipo_de_peticao:19 - Renúncia de Prazo:268; tipo_de_peticao:19 - Tutela Antecipada Incidental:225; tipo_de_peticao:19 - Tutela Cautelar Incidental:226; tipo_de_peticao:19 - Tutela de Evidência:227; motivo_da_remessa:18 - Em razão de criação de novo Tribunal:367; motivo_da_remessa:18 - por declínio de competência entre instâncias do mesmo tribunal:267; tipo_de_documento:4 - Alvará de Soltura:230; tipo_de_documento:4 - Auto de Adjudicação/Arrematação:238; tipo_de_documento:4 - Auto de Leilão ou Praça Negativa:239; tipo_de_documento:4 - Carta de Adjudicação:240; tipo_de_documento:4 - Edital:229; tipo_de_documento:4 - Ficha Individual do Condenado:237; tipo_de_documento:4 - Guia de Recolhimento Penal:232; tipo_de_documento:4 - Laudo Pericial:266; tipo_de_documento:4 - Requisição de Honorários de Perito/Dativo:233; tipo_de_documento:4 - Salvo Conduto:231; tipo_de_documento:4 - Termo de Caução:234; tipo_de_documento:4 - Termo de Compromisso:235; tipo_de_documento:4 - Termo de Fiança:236; tipo_de_documento:4 - Termo/Auto de Penhora:241; situacao_da_audiencia:15 - Em continuação:365; tipo_de_audiencia:16 - Pública:228; dirigida_por:36 - Facilitador:366; ¬2023-07-28 09:31:09.175¬¬






select count(1) from client.tb_aplicacao_complemento where dt_atualizacao>(select min(dt_atualizacao) from client.tb_aplicacao_complemento)
select count(1) from client.tb_aplicacao_dominio where dt_atualizacao>(select min(dt_atualizacao) from client.tb_aplicacao_dominio)
select count(1) from client.tb_dominio where dt_atualizacao>(select min(dt_atualizacao) from client.tb_dominio)
select count(1) from client.tb_tipo_complement_dominio where dt_atualizacao>(select min(dt_atualizacao) from client.tb_tipo_complement_dominio)


select 
(case when te.id_evento > 1000000353 then 'tup' else '' end) "Evento"
,(case when ttc.id_tipo_complemento > 83 then 'tup' else '' end) "TpCompl"
,(case when tam.id_aplicacao_movimento > 15244 then 'tup' else '' end) "AppMovto"
,(case when tac.id_aplicacao_complemento > 6124 then 'tup' else '' end) "AppCompl"
,te.cd_evento,te.ds_evento,tam.ds_texto_parametrizado,ttc.tp_tipo_complemento,ttc.cd_tipo_complemento,ttc.ds_label
--,tam.id_aplicacao_movimento,ttc.id_tipo_complemento,te.id_evento 
from client.tb_aplicacao_complemento tac 
join client.tb_aplicacao_movimento tam on tam.id_aplicacao_movimento=tac.id_aplicacao_movimento
join client.tb_tipo_complemento ttc on ttc.id_tipo_complemento=tac.id_tipo_complemento 
join core.tb_evento te on te.id_evento=tam.id_evento
where tac.id_aplicacao_complemento >6124
and te.cd_evento='12739'
--where tac.dt_atualizacao>(select min(dt_atualizacao) from client.tb_aplicacao_complemento)
order by te.ds_evento 




select * from client.tb_dominio where dt_atualizacao>(select min(dt_atualizacao) from client.tb_dominio)

select * from client.tb_dominio order by ds_dominio






select * from core.tb_evento te where in_


select 
(case when te.id_evento > 1000000353 then 'tup' else '' end) "Evento"
,(case when ttc.id_tipo_complemento > 83 then 'tup' else '' end) "TpCompl"
,(case when tam.id_aplicacao_movimento > 15244 then 'tup' else '' end) "AppMovto"
,(case when tac.id_aplicacao_complemento > 6124 then 'tup' else '' end) "AppCompl"
,te.cd_evento,te.ds_evento,tam.ds_texto_parametrizado,ttc.tp_tipo_complemento,ttc.cd_tipo_complemento,ttc.ds_label
--,tam.id_aplicacao_movimento,ttc.id_tipo_complemento,te.id_evento 
from client.tb_aplicacao_complemento tac 
join client.tb_aplicacao_movimento tam on tam.id_aplicacao_movimento=tac.id_aplicacao_movimento
join client.tb_tipo_complemento ttc on ttc.id_tipo_complemento=tac.id_tipo_complemento 
join core.tb_evento te on te.id_evento=tam.id_evento
where 1=1
--and tac.id_aplicacao_complemento >6124
and in_multivalorado 
and te.cd_evento='12106'
--and te.cd_evento='12739'
--where tac.dt_atualizacao>(select min(dt_atualizacao) from client.tb_aplicacao_complemento)
order by te.ds_evento 






select 
(case when te.id_evento > 1000000353 then 'tup' else '' end) "Evento"
,(case when ds_caminho_completo ilike '%magis%' then 'sim' else '' end) "Magist"
,(case when ttc.id_tipo_complemento > 83 then 'tup' else '' end) "TpCompl"
,(case when tam.id_aplicacao_movimento > 15244 then 'tup' else '' end) "AppMovto"
,(case when tac.id_aplicacao_complemento > 6124 then 'tup' else '' end) "AppCompl"
,te.cd_evento,te.ds_evento,tam.ds_texto_parametrizado,ttc.tp_tipo_complemento,ttc.cd_tipo_complemento,ttc.ds_label
--,tam.id_aplicacao_movimento,ttc.id_tipo_complemento,te.id_evento 
,'||||',*
from client.tb_aplicacao_complemento tac 
join client.tb_aplicacao_movimento tam on tam.id_aplicacao_movimento=tac.id_aplicacao_movimento
join client.tb_tipo_complemento ttc on ttc.id_tipo_complemento=tac.id_tipo_complemento 
join core.tb_evento te on te.id_evento=tam.id_evento
where 1=1
and tam.id_aplicabilidade=150
--and tac.id_aplicacao_complemento >6124
--and in_multivalorado 
--and te.cd_evento='12106'
--and te.cd_evento='12739'
--and te.cd_evento='190'
--and tac.dt_atualizacao>(select min(dt_atualizacao) from client.tb_aplicacao_complemento)
order by te.ds_evento 


select ds_caminho_completo,*
from core.tb_evento te 
where ds_caminho_completo ilike '%magis%'


select te.id_evento -- ds_caminho_completo,tam.ds_texto_parametrizado, tam.id_aplicacao_movimento,tam.dt_atualizacao 
from core.tb_evento te 
left join client.tb_aplicacao_movimento tam on tam.id_evento =te.id_evento 
where tam.id_aplicabilidade=150
order by 1




select te.id_evento, te.dt_atualizacao,tam.dt_atualizacao  
from core.tb_evento te 
left join client.tb_aplicacao_movimento tam on tam.id_evento =te.id_evento 
where tam.id_aplicabilidade=150
order by 3 desc



select *
from client.tb_aplicacao_movimento tam 
order by tam.dt_atualizacao desc





select *
from client.tb_aplicacao_complemento 
order by dt_atualizacao desc







select count(1) from client.tb_aplicacao_complemento where dt_atualizacao>(select min(dt_atualizacao) from client.tb_aplicacao_complemento)



) qtdInsert from client.tb_aplicacao_complemento unio




n


----------------------------------------------------






update datajud_sgt.tb_parametros set ds_email_destination='josecustodio@tjrj.jus.br';
update datajud_sgt.tb_parametros set ds_email_destination='sgtec.cargatpupje-LD@tjrj.jus.br';

update datajud_sgt.tb_relat_email set dt_email =null where to_char(dt_atualizacao,'yyyy-mm-dd')='2023-07-18'


select ds_email_destination from datajud_sgt.tb_parametros tp 


select * from datajud_sgt.tb_relat_email order by 1


select * from datajud_sgt.tb_relat_email where to_char(dt_atualizacao,'yyyy-mm-dd')='2023-07-24'


email_01evnts_atvs
email_02TpCompl
email_03evnts
email_04evnts_pje
email_05ElemDom



with emails as (
	select * from (
	select substring(tre.ds_tipo,7,2) ordem,substring(tre.ds_tipo,9,30) tipo,*
	from datajud_sgt.tb_relat_email tre , datajud_sgt.tb_parametros tp
	)fooo
)
select (row_number() OVER ()) as rownum,*
  from (select distinct lower(tipo),* from emails
	order by ordem desc
) e order by 1 desc



delete from datajud_sgt.tb_relat_email;



DROP TABLE datajud_sgt.tb_relat_email;

select * from datajud_sgt.tb_relat_email;

use datajud_sgt

CREATE TABLE datajud_sgt.tb_relat_email (
	ds_tipo varchar NOT NULL,
	ds_nome varchar NULL,
	dt_atualizacao timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	dt_email timestamp NULL,
	in_pronto bpchar NULL
);
CREATE INDEX tb_relat_email_ds_tipo_idx ON datajud_sgt.tb_relat_email USING btree (ds_tipo);




CREATE TABLE datajud_sgt.tb_parametros (
	id_param int4 NOT NULL,
	dt_atualizacao timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	ds_nome_id varchar(300) NOT NULL DEFAULT 'dump_dados_oracle_postgres'::character varying,
	ds_link_cnj_wsdl varchar(300) NOT NULL DEFAULT 'https://www.cnj.jus.br/sgt/sgt_ws.php?wsdl'::character varying,
	ds_link_cnj_vrs varchar(300) NOT NULL DEFAULT 'https://www.cnj.jus.br/sgt/versoes.php'::character varying,
	ds_link_cnj1 varchar(300) NOT NULL DEFAULT 'https://www.cnj.jus.br/sgt/enviarArquivo.php?url='::character varying,
	ds_link_cnj2 varchar(300) NOT NULL DEFAULT '&nome=dump_dados_oracle_postgres.sql'::character varying,

ds_email_destination varchar(300) NOT NULL default 'josecustodio@tjrj.jus.br',
ds_email_sender_nome varchar(300) NOT NULL default 'carga_sgt',
ds_email_sender_address varchar(300) NOT NULL default 'indicadores_pje@cnj.jus.br',
ds_email_host varchar(300) NOT NULL default '172.16.6.12',
ds_email_port varchar(300) NOT NULL default '25',
ds_email_assunto varchar(300) NOT NULL default 'assunto' ,
ds_email_msg varchar(300) NOT NULL default 'msg'

);

insert into datajud_sgt.tb_parametros (id_param) values (1);



select (case when id_tipo_complemento > 83 then 'carga-sgt' else '' end) "Situação",*
from client.tb_tipo_complement_dominio
order by id_tipo_complemento desc






select dt_atualizacao,cd_evento
,(select count(1) from client.tb_aplicacao_movimento tam where tam.id_evento=te.id_evento and tam.id_aplicabilidade=150) "appMovto"
,*

from core.tb_evento te order by dt_atualizacao desc




select te.cd_evento,ttc.ds_nome,ttc.cd_tipo_complemento,tac.dt_atualizacao,tam.dt_atualizacao,te.ds_evento 
from client.tb_aplicacao_movimento tam 
join core.tb_evento te on te.id_evento=tam.id_evento 
join client.tb_aplicacao_complemento tac on tac.id_aplicacao_movimento=tam.id_aplicacao_movimento 
join client.tb_tipo_complemento ttc on ttc.id_tipo_complemento=tac.id_tipo_complemento 
where tam.id_evento in (1000000586,1000000585,1000000584,1000000583,1000000582,1000000581,1000000580,1000000579)
or te.cd_evento::int in (14984,14983,14979)
order by tam.dt_atualizacao desc






https://dba.stackexchange.com/questions/69438/psql-fatal-sorry-too-many-clients-already

https://crm.maila.net.br/knowledge-base/article/modificando-o-numero-de-conexoes-do-postgres


SELECT current_setting('max_connections') AS max,
       COUNT(*) AS total
FROM pg_stat_activity

100	63



SELECT  "reports".* FROM "reports"  WHERE (("reports"."time" < '2014-06-28 13:30:42.000000' AND "reports"."unit_id" = 3192))
ORDER BY "reports"."id" DESC LIMIT 1


SELECT * FROM pg_stat_activity;




tipo_de_documento:4 - Alvará de Soltura:230; 


select *
from client.tb_elemento_dominio ted 
where ted.ds_valor in ('tipo_de_documento','Alvará de Soltura')



select lower(ds_valor),count(1),min(dt_atualizacao),max(dt_atualizacao)
from client.tb_elemento_dominio ted 
group by 1 order by 2 desc


select *
from client.tb_elemento_dominio ted 
where lower(ds_valor) in ('tst','tse','stj')
order by lower(ds_valor)



select * from client.tb_tipo_complemento ttc 


select 'client.tb_tipo_complemento-OK'		, min(dt_atualizacao),max(dt_atualizacao), max(dt_atualizacao) - min(dt_atualizacao), (select count(1) from client.tb_tipo_complemento where dt_atualizacao=(select min(dt_atualizacao) from client.tb_tipo_complemento)) qtdinicial, (select count(1) from client.tb_tipo_complemento where dt_atualizacao>(select min(dt_atualizacao) from client.tb_tipo_complemento)) qtdInsert from client.tb_tipo_complemento union

select 'client.tb_tipo_complemento-OK'		, min(dt_atualizacao),max(dt_atualizacao), max(dt_atualizacao) - min(dt_atualizacao), (select count(1) from client.tb_tipo_complemento where dt_atualizacao=(select min(dt_atualizacao) from client.tb_tipo_complemento)) qtdinicial, (

select tp_tipo_complemento,count(1), min(dt_atualizacao),max(dt_atualizacao)
from client.tb_tipo_complemento 
--where dt_atualizacao>(select min(dt_atualizacao) from client.tb_tipo_complemento)
group by 1 order by 1


select ds_label
from client.tb_tipo_complemento 
where tp_tipo_complemento='L'

--where dt_atualizacao>(select min(dt_atualizacao) from client.tb_tipo_complemento)
group by 1 order by 1



