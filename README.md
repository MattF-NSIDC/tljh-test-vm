# JupyterHub Test


## Create a VM

```
vagrant nsidc up --env=<dev|integration|qa|staging|production>
```

If you already have a VM, you can:

Provision it with changed puppet configuration (which may leave old puppet-provisioned
resources in place):

```
vagrant nsidc provision --env=<env>
```

...or recreate it from scratch:

```
vagrant nsidc recreate --env=<env>
```


## Destroy a VM

```
vagrant nsidc destroy --env=<env>
```
