# 인피니밴드 드라이버 체크 및 설치

* `hca_self_test.ofed` 으로 인피니밴드가 정상으로 되어 있는지 확인한다.

만약 드라이버가 없거나 등등.. 문제가 있다면 해당 OS 버전에 맞는 드라이버를 다운 받아야 한다.

* `cat /etc/redhat-release ; arch` # OS 버전 확인 및 아키텍쳐 확인

중요한 것은 모든 노드들의 OS 버전이 같아야 한다. Infinity Band driver 는 OS 버전별로 달라짐으로 주의한다 !

해당 버전에 맞는 드라이버 다운 후 아래의 코드를 순차적으로 실행한다. (root로 실행한다.)
```
mkdir -p /mnt/iso
mount -o ro,loop MLNX_OFED_LINUX-4.6-1.0.1.1-rhel7.6-x86_64.iso /mnt/iso
cd /mnt/iso
./mlnxofedinstall
```

설치 시간이 좀 걸린다.

`/etc/init.d/openibd restart` 으로 인피니밴드 데몬을 재시작한다. 그리고 `reboot`.

재부팅이 완료된 후 `hca_self_test.ofed` 및 `ibv_devinfo` 으로 드라이버 및 인피니 밴드 상태가 정상인지 확인한다.

# 끝
