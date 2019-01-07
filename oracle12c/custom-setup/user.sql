create user C##hibernate identified by hibernate;
grant  connect, resource to C##hibernate;
alter user  C##hibernate quota unlimited on USERS;
exit;