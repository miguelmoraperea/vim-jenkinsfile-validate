# vim-jenkinsfile-validate

This plugin allows you to verify a Jenkinsfile right from inside *nvim*.

## Install

```viml
Plug 'miguelmoraperea/vim-jenkinsfile-validate'
```

**Requires *nvim v0.5***

## Configuration

Configure the Jenkins URL, e.g.

```viml
let g:jenkins_url = "http://my_jenkins_domain.ca"
```

Setup your preferred mapping:

```viml
nmap [your_mapping] <Plug>VimJenkinsfileValidate<CR>
```

## Usage

Just call *VimJenkinfileValidate* from a Jenkinsfile.
