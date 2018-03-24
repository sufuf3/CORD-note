# Controlkube scenario Note

## Install
### First
```sh
curl -o ~/cord-bootstrap.sh https://raw.githubusercontent.com/opencord/cord/cord-5.0/scripts/cord-bootstrap.sh
chmod +x cord-bootstrap.sh
./cord-bootstrap.sh -d
export VAGRANT_SERVER_URL="https://vagrantcloud.com"
logout
```

### Second: Install CORD with kubernetes and XOS Helm chart (this is a single command wordwrapped)
1. login again
2. 
```sh
time bash ./cord-bootstrap.sh -v -x -t "PODCONFIG=rcord-controlkube.yml config" \
-t "build" |& tee -a ~/setup.log
```

## Memo
PODCONFIG=[rcord-controlkube.yml](https://github.com/opencord/cord/blob/master/podconfig/rcord-controlkube.yml)
```yaml
# rcord-controlcube Pod Config
# Creates a kubernetes

cord_scenario: controlkube
cord_profile: rcord

# copy kubespray config and install kubect on node running playbook
kubeconfig_localhost: true
kubectl_localhost: true
helm_enabled: true
```
- cord_scenario: [controlkube](https://github.com/opencord/cord/tree/master/scenarios/controlkube)

## Troubleshooting
1. Meet this Error (2018/03/24)
```
Makefile:287: recipe for target 'milestones/deploy-kubespray' failed
make: *** [milestones/deploy-kubespray] Error 2
```
https://github.com/opencord/cord/blob/master/Makefile#L289  
Because it `cd cord/build/kubespray` & run https://github.com/opencord/cord/blob/master/Makefile#L82.  
However, there is no `inventory/cord/hosts.ini`  update `cord/build/Makefile`L82 as the following
```sh
ANSIBLE_PB_KS    ?= ANSIBLE_CONFIG=ansible.cfg ansible-playbook $(ANSIBLE_ARGS) -b -i inventory/inventory.cord --extra-vars @../$(MASTER_CONFIG)
```


## Un-install
```sh
$ cd cord/build/
$ make clean-profile; make clean-kubespray; make vagrant-destroy
```
or 
```sh
$ cd cord/build/
$ make clean-all
```
Ref:  
- https://guide.opencord.org/controlkube_scenario.html
- https://github.com/opencord/cord
- https://github.com/opencord/cord/blob/master/docs/build_internals.md
- https://www.cyberciti.biz/faq/howto-linux-delete-a-running-vm-guest-on-kvm/  
- https://gerrit.opencord.org/#/c/8132/  
- https://github.com/vagrant-libvirt/vagrant-libvirt/issues/658#issuecomment-298795278  
