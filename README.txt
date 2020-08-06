Teste de DBA para o processo seletivo da Junto Seguros.

1 - Efetua criação do instância SQL Server via Terraform (*.tf e *.jpg).

2 - Criada base de dados [dba-teste1] (dba-teste1.sql).

3 - Efetuada carga de dados (carga-dados.sql).

4 - Snapshots natives do SQL não são permitidos na AWS RDS (Figura SnapshotSQL). 
    Os snapshot podem somente ser feitos manualmente no console RDS. 
    Agendamentos de snapshot podem ser feitos via terraform (script snapshot.tf).

5 - Bucket S3 968138669688-dba-teste criado via terraform (backup.tf e terraformS3). 

6 - Efetuado backup dba-teste1 (Figura SQLBackupOK). 
    Foi necessário configurar um novo "option group" na instancia RDS para permitir a execução de backups nativos (Figura SQLBackupFalha).
    
7 e 8 - Simulados e Identificados locks e deadlocks (Figuras Locks* e DeadLocks*).
    Foi necessário configurar um novo "parameter group" na instancia RDS para ativar a coleta de traces de deadlocks.

9 e 10 - Efetuado restore pra a criação do dba-teste2 (Figura SQLrestoreOK) 
