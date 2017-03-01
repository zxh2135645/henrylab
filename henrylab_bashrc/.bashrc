umask 0002

prompt1="\[\e[0;33m\][\A]\[\e[0m\]" # Display the time in the bash prompt
prompt2="\[\e[1;39m\]\u@\h:\W\$\[\e[0m\] " # Add username@host:dir$
promptinfo="${HOME}/.nodeload"
PROMPT_COMMAND='PS1="\[\e[1;37m\e[44m\]${project_name}\[\e[0;0m\]${prompt1}`${promptinfo}`${prompt2}"'
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi


#ANTS
export PATH=/netopt/rhel7/versions/ANTs/1.9/antsbin/bin:$PATH
export ANTSPATH=/data/henry7/software/ak/ #/data/henry6/keshavan/ANTS/antsbin/
export PATH=/netopt/rhel7/versions/ANTs/1.9/ANTs/Scripts:$PATH
export ITK_GLOBAL_DEFAULT_NUMBER_OF_THREADS=4


#BXH


#Freesurfer
export SUBJECTS_DIR=/data/henry6/PBR/surfaces
export FREESURFER_HOME=/data/henry6/keshavan/software/freesurfer
source /data/henry6/keshavan/software/freesurfer/SetUpFreeSurfer.sh


#FSL
export PATH=/netopt/fsl5/bin:$PATH
export FSLDIR=/netopt/fsl5
export FSL_DIR=/netopt/fsl5/
export FSL_BIN=/netopt/fsl5/bin


#Slicer CLI
export PATH=$PATH:/opt/src/freeware/Slicer/Slicer-4.1-svn-co-20121002/Slicer-4.1-linux_x86_64-build/Slicer-build/lib/Slicer-4.1/cli-modules/


# Aliases
alias ls="ls --color=auto"
alias vi="vim"

export PATH=$PATH:/netopt/rhel7/bin:/netopt/sge_n1ge6/bin/lx24-amd64/
export LD_LIBRARY_PATH=/netopt/rhel7/src/R-3.1.3/amd64/lib:/lib64/$LD_LIBRARY_PATH
export PATH=$PATH:/data/bioe5/keshavan/notebooks
export epi=/data/bioe5/keshavan/sink2/ants_template/r03_31sub_template.nii.gz
export mni=/netopt/fsl5/data/standard/MNI152_T1_2mm_brain.nii.gz
export PATH=/data/henry6/keshavan/bin:$PATH

alias qstat='qstat -q ms.q'
alias qf='qstat -f | grep ms.q'
alias qF='qstat -F'
alias qme='qstat -u akeshavan'



# added by Anaconda 2.1.0 installer
#export PATH="/data/henry7/software/anaconda/envs/anisha/bin:$PATH"
export PATH=/data/henry1/keshavan/anaconda/bin:$PATH
#source activate anisha
export PATH=/data/henry7/software/julia-31efe690be/bin:$PATH


#BAGO
export SGE_EXECD_PORT=12001
export SGE_QMASTER_PORT=12000
export SGE_ROOT=/netopt/sge_n1ge6
export DRMAA_LIBRARY_PATH=/netopt/sge_n1ge6/lib/lx24-amd64/libdrmaa.so



#MSPACMAN
export PATH=$PATH:/netopt/share/bin/local/ms/


#PYCHARM
alias charm=/netopt/share/bin/local/henrylab/pycharm.sh
export PYCHARM_JDK=/usr

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=$PATH:/netopt/share/bin/local/henrylab
export ITK_GLOBAL_DEFAULT_NUMBER_OF_THREADS=1


#R
export PATH=/netopt/rhel7/versions/R-versions/R-2.13.1/lib64/R/bin:$PATH
export LD_LIBRARY_PATH=/netopt/rhel7/versions/R-versions/R-2.13.1/lib64/R/lib:$LD_IBARY_PATH
export ITK_GLOBAL_DEFAULT_NUMBER_OF_THREADS=1


#THINGS FOR CRON
PERL5LIB=/data/henry6/keshavan/software/freesurfer/mni/lib/perl5/5.8.5:/netopt/rhel7/lib/perl5:/netopt/share/perl5/lib/vendor_perl:/netopt/share/perl5/lib/site_perl
#PERL_MB_OPT=--install_base /home/akeshavan/perl5
KRB5CCNAME=KEYRING:persistent:1359:krb_ccache_xtB6HSi
PERL_HOMEDIR=1


#PBR
export PBROUT=/data/henry7/PBR/subjects
export PBRDICOM=/scratch/henry_temp/PBR/dicoms
alias mindcontrol="ssh -N -f -L localhost:5050:localhost:5050 euler; ssh -N -f -L localhost:3002:localhost:3002 euler"

#SPM :(
export SPM_PATH=/data/henry1/keshavan/spm/spm12
export LST_PATH=/data/henry1/keshavan/spm/spm12/toolbox/LST

# added by Anaconda3 4.2.0 installer
export PATH="/home/sf713420/anaconda3/bin:$PATH"

source activate james_pbr
