create table NEW_ENTITY8 (
  "�`�[�ԍ�" integer
  , "���iID" integer
  , "��" integer
  , "�x�����@ID" integer
  , "���i���Ƃ̔���" integer
  , "�l���z" integer
  , "�����ID" integer
  , constraint NEW_ENTITY8_PKC primary key ("�`�[�ԍ�","���iID","�x�����@ID","�����ID")
) ;


create table NEW_ENTITY7 (
  "���WID" integer
  , "�`�[�ԍ�" integer
  , "���ID" integer not null
  , "�]�ƈ�ID" integer
  , "�������" character varying
  , constraint NEW_ENTITY7_PKC primary key ("���WID","�`�[�ԍ�","���ID")
) ;


create table NEW_ENTITY6 (
  "�X��ID" integer
  , "�X�ܖ�" character varying
  , constraint NEW_ENTITY6_PKC primary key ("�X��ID")
) ;


create table NEW_ENTITY5 (
  "�]�ƈ�ID" integer
  , "�ӔC��No" integer
  , constraint NEW_ENTITY5_PKC primary key ("�]�ƈ�ID")
) ;

create table NEW_ENTITY4 (
  "�x�����@ID" integer
  , "�x�����@" character varying
  , constraint NEW_ENTITY4_PKC primary key ("�x�����@ID")
) ;


create table NEW_ENTITY3 (
  "���ID" integer
  , "��Ж�" character varying
  , constraint NEW_ENTITY3_PKC primary key ("���ID")
) ;


create table NEW_ENTITY2 (
  "�����ID" integer
  , "����ŗ�" integer
  , constraint NEW_ENTITY2_PKC primary key ("�����ID")
) ;


create table NEW_ENTITY1 (
  "���iID" integer
  , "���i��" character varying
  , "���i�P��" 
  , constraint NEW_ENTITY1_PKC primary key ("���iID")
) ;
