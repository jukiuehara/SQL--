create table kounyuumeisai (
  dennpyoubanngou integer
  , syouhinnid integer
  , kousuu integer
  , siharaihouhouid integer
  , syouhinngotonouriage integer
  , nebikigaku integer
  , syouhizeiid integer
) ;


create table kounyute_buru (
  rejiid integer
  , dennpyouid integer
  , kaisyaid integer not null
  , jugyouinnid integer
  , uriagenitiji character varying
) ;


create table jyugyouinn (
  jyugyouinnid integer
  , sekininnsyano integer

) ;

create table siharaihouhou (
  siharaihouhouid integer
  , siharaihouhou character varying

) ;


create table kaisya (
  kaisyaid integer
  , kaisyamei character varying

) ;


create table syouhizei (
  syouhizeiid integer
  , syouhizeiritu integer
) ;


create table syouhinn( 
  syouhinnid integer
  , syouhinnmei character varying
  , syouhinntnanka integer
) ;

create table tennpo( 
  tennpoid integer
  , tennmei character varying
  , juusyo character varying
  , dennwabanngou character varying
) ;

create table reji (
  rejiid integer
  , rejino integer
) ;


