# ---------------------------
# �� �Ǘ��҂Ŏ��s���邱�ƁB
# ---------------------------

# �X�N���v�g���s�|���V�[
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser 

# ���݂���f�B���N�g�������͂����܂Ōp��
$exists = $FALSE
while(-! $exists){

    # �C���X�g�[����f�B���N�g��
    $env:SCOOP_GLOBAL=Read-Host 'global�p�b�P�[�W�̃C���X�g�[����f�B���N�g������� > '
    
    # ���݃`�F�b�N
    $exists = Test-Path $env:SCOOP_GLOBAL
    if(-! $exists){
        "`t* ���͂��ꂽ�p�X�͑��݂��܂���B> " + $env:SCOOP_GLOBAL
    }
}

# ���ϐ��ɐݒ�
[environment]::setEnvironmentVariable('SCOOP_GLOBAL',$env:SCOOP_GLOBAL,'Machine')

# �O���[�o���X�R�[�v�Ńp�b�P�[�W���C���X�g�[��
# ��<app> ��Ώۂ̃p�b�P�[�W�ɒu������
# TODO: �O�����͂ɕύX����
scoop install -g <app>