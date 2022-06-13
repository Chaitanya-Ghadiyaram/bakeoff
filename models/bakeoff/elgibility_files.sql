select *,
count(client_acct_nm) over (partition by _file) as num_clients_per_file
from s3.elgibility_files