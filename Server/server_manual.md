# Server manual

`usermod -aG wheel "username"` sudo 권한 주기

`nvidia-smi -i 7 -pl 100` 7번 GPU에 대한 power limit을 100 Watt 으로 한다.

`usermod -l newname oldname` 유저 이름 변경.
> 유저 이름 변경 후 해당하는 폴더의 유저 소유권 모두 변경해야 한다.

`rsh gpu1 module avail`

`du -s -BM foldername` 해당하는 폴더의 용량을 알 수 있다.

```
ssh-keygen
ssh-copy-id hostname
vi /etc/ssh/sshd_config
PasswordAuthentication no
```
위와 같이 하게 되면 패스워드로 들어올 수 없고, 등록된 키를 이용해서만 들어올 수 있다.



