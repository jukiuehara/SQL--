insert into syouhinn
(syouhinnid,syouhinnmei,syouhinntnanka)
values(1,'����͂��V�R��',100),
(2,'�c�i�}�����ɂ���',120),
(3,'�t�@�u���[�Y',400);

insert into kaisya
(kaisyaid,kaisyamei)
values(1,'lonelymart')
;

insert into jyugyouinn
(jyugyouinnid,sekininnsyano)
values(1,1),(2,2)
;

insert into kounyute_buru
(rejiid,dennpyouid,kaisyaid,jugyouinnid,uriagenitiji)
values(1,1,1,1,'2022/4/1');

insert into kounyuumeisai
(dennpyoubanngou,syouhinnid,kousuu,siharaihouhouid,syouhinngotonouriage,nebikigaku,syouhizeiid)
values(1,1,1,1,100,-10,1),
(1,2,1,1,120,0,1),
(1,3,1,1,400,0,2);

insert into siharaihouhou
(siharaihouhouid,siharaihouhou)
values
(1,'paypay'),
(1,'����'),
(3,'�N���W�b�g');

insert into syouhizei
(syouhizeiid,syouhizeiritu)
values
(1,8),
(2,10);

insert into tennpo
(tennpoid,tennmei,juusyo,dennwabanngou)
values
(2,'���{���X','���{��1-1-1','03-111-2222');


insert into reji
(rejiid,rejino)
values
(1,1),
(2,2);
select * from tennpo;
