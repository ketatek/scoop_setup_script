# �X�N���v�g���s�|���V�[
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser 

# ���݂���f�B���N�g�������͂����܂Ōp��
$exists = $FALSE
while(-! $exists){

    # �C���X�g�[����f�B���N�g��
    $env:SCOOP_GLOBAL=Read-Host '�C���X�g�[����f�B���N�g������� > '
    
    # ���݃`�F�b�N
    $exists = Test-Path $env:SCOOP
    if(-! $exists){
        "`t* ���͂��ꂽ�p�X�͑��݂��܂���B> " + $env:SCOOP
    }
}

# ���ϐ��ɐݒ�
[environment]::setEnvironmentVariable('SCOOP',$env:SCOOP,'User')

# �C���X�g�[����f�B���N�g��
$env:SCOOP_GLOBAL='E:\package\scoop\global\'

# scoop�̃C���X�g�[�������s
irm get.scoop.sh | iex
