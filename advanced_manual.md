# ADVANCED MANUAL

### OS booting progress bar 대신 message 확인하는 법.

`/etc/default/grub` 안의 `GRUB_CMDLINE_LINUX="crashkernel=auto rhgb quiet"` 부분을 `GRUB_CMDLINE_LINUX="crashkernel=auto`로 수정 후 저장.
`grub2-mkconfig -o /etc/grub2.cfg`를 커맨드 창에 입력 후 `reboot`.
