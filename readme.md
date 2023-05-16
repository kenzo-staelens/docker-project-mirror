## dependencies installeren
```
ansible-galaxy install -r collections/requirements.yml
```

## setup environment variables
in `ansible/group_vars/all.yml` wordt gevraagd om de fileroot (absoluut pad) van deze repository te plaatsen op de machine die dit script uitvoert, andere group vars en inventory files (`prod_hosts.yml` en `test_hosts.yml`) horen evenals aangepast te worden naar de juiste hosts & bijhorende vars

## source files webserver aanpassen
in de map docker_webserver/templates worden de nodige jinja templates gezet; pas ook main.py aan als andere routes dan `/` nodig zouden zijn  
de default main.py file zal gebruik maken van de meegegeven variabele `stage` te vinden in *inventory* -> vars -> stage, verder doorgegeven aan het docker run commando in `roles/webhosts/tasks/main`

## run scripts
voor beide scripts worden gitlab credentials gevraagd, deze zijn nodig voor git login
test environment
```bash
ansible/run_prod.sh "optional name argument"
```

prod environment
```bash
ansible/run_prod.sh "optional name argument"
```

deze zijn equivalent voor het uitvoeren van 
`ansible-playbook kenzo-staelens.yml -i test_hosts.yml --extra-vars "username=$user password=$pass"` of  
`ansible-playbook kenzo-staelens.yml -i prod_hosts.yml --extra-vars "nologin=true"` als geen user of wachtwoord wordt meegegeven  
alternatief met het optionele name argument geldt dan 
`ansible-playbook kenzo-staelens.yml -i prod_hosts.yml --extra-vars "nologin=true envname=\"$1\""` en  
`ansible-playbook kenzo-staelens.yml -i prod_hosts.yml --extra-vars "username=$user password=$pass envname=\"$1\""` en   