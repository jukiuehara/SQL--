create table NEW_ENTITY8 (
  "`[Ô" integer
  , "¤iID" integer
  , "Â" integer
  , "x¥û@ID" integer
  , "¤i²ÆÌã" integer
  , "løz" integer
  , "ÁïÅID" integer
  , constraint NEW_ENTITY8_PKC primary key ("`[Ô","¤iID","x¥û@ID","ÁïÅID")
) ;


create table NEW_ENTITY7 (
  "WID" integer
  , "`[Ô" integer
  , "ïÐID" integer not null
  , "]ÆõID" integer
  , "ãú" character varying
  , constraint NEW_ENTITY7_PKC primary key ("WID","`[Ô","ïÐID")
) ;


create table NEW_ENTITY6 (
  "XÜID" integer
  , "XÜ¼" character varying
  , constraint NEW_ENTITY6_PKC primary key ("XÜID")
) ;


create table NEW_ENTITY5 (
  "]ÆõID" integer
  , "ÓCÒNo" integer
  , constraint NEW_ENTITY5_PKC primary key ("]ÆõID")
) ;

create table NEW_ENTITY4 (
  "x¥û@ID" integer
  , "x¥û@" character varying
  , constraint NEW_ENTITY4_PKC primary key ("x¥û@ID")
) ;


create table NEW_ENTITY3 (
  "ïÐID" integer
  , "ïÐ¼" character varying
  , constraint NEW_ENTITY3_PKC primary key ("ïÐID")
) ;


create table NEW_ENTITY2 (
  "ÁïÅID" integer
  , "ÁïÅ¦" integer
  , constraint NEW_ENTITY2_PKC primary key ("ÁïÅID")
) ;


create table NEW_ENTITY1 (
  "¤iID" integer
  , "¤i¼" character varying
  , "¤iP¿" 
  , constraint NEW_ENTITY1_PKC primary key ("¤iID")
) ;
