

/* 创建用户*/
  create user qiuchangjin
  IDENTIFIED BY qiuchangjin123 --用户密码
  default tablespace TABLESPACE_QCJ-- 表空间是上面创建的
  temporary tablespace TEMP -- 临时表空间默认 TEMP
  profile DEFAULT;
  --password expire;
   /*密码过期需要重设密码,意思是当你用这个新建立的密码过期用户首次登录后，系统会提示你重新输入新密码，不然会拒绝你登陆，重设新密码后就可以登录，该用户的密码就是你新设的密码，相当于首次登录修改密码这样的选项。*/