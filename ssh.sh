hosties=( 
	kubeworker01 
	kubeworker02 
	kubemaster01 
)

for host in "${hosties[@]}"; do
	sudo cat ~/.ssh/id_rsa.pub | ssh -i key.pem ubuntu@$host "cat >> ~/.ssh/authorized_keys"
	echo "pushed to $host"
done
